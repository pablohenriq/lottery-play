(ns clj.lotto
  (:require [clojure.string :as string]))

(defn- generate-number
  "Generates a random sequence of numbers between 1 and `max-value` (max inclusive)"
  [max-value]
  (+ 1 (rand-int max-value)))

(defn- constantly-less-than
  "Generates a stream (lazy sequence) of numbers between 1 and `max-value` (max inclusive)"
  [max-value]
  (repeatedly #(generate-number max-value)))

(defn- add-zero
  "Prettify the numbers less than ten of the `coll`"
  [coll]
  (string/join " - " (map
                      #(if (< % 10)
                         (str "0" %)
                         (str %))
                      coll)))

(defn generate-unique-values
  "Generates a unique sequence prettified of numbers based on how much `size` of numbers and the `max-value` interval"
  [size max-value]
  (add-zero (->> (repeatedly #(take size (constantly-less-than max-value)))
                 (some #(when (apply distinct? %) %)))))
