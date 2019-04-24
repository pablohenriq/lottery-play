(ns clj.core
  (:require [clojure.tools.cli :refer [parse-opts]]
            [clojure.string :as string]
            [clj.lotto :as lotto])
  (:gen-class))

(def cli-options
  [["-n" "--numbers NUMBER" "How much numbers do you want to play"
    :default 6
    :parse-fn #(Integer/parseInt %)]
   ["-t" "--times TIMES" "How many times do you want to play"
    :default 1
    :parse-fn #(Integer/parseInt %)]
   ["-m" "--maximum NUMBER" "The maximum value of the interval of numbers"
    :default 60
    :parse-fn #(Integer/parseInt %)]
   ["-h" "--help"]])

(defn usage
  "Small guidance of the usage of the program"
  [options-summary]
  (->> ["This is a lottery game play from Brazil written in Clojure."
        ""
        "Usage: lottery [options] action"
        ""
        "Options:"
        options-summary
        ""
        "Actions:"
        "    play    Generate number to you play in lottery given the options"]
       (string/join \newline)))

(defn error-msg
  "Prettify the error message, if it exist"
  [errors]
  (str "The following errors occurred while parsing your command: \n\n"
       (string/join \newline errors)))

(defn validate-args
  "Validate the command lines arguments"
  [args]
  (let [{:keys [options arguments errors summary]} (parse-opts args cli-options)]
    (cond
      (:help options)
      {:exit-message (usage summary) :ok? true}
      errors
      {:exit-message (error-msg errors)}
      (and (= 1 (count arguments))
           (#{"play"} (first arguments)))
      {:action (first arguments) :options options}
      :else
      {:exit-message (usage summary)})))

(defn exit
  "Close the program with the right status code"
  [status msg]
  (println msg)
  (System/exit status))

(defn -main
  "The entry point for CLI"
  [& args]
  (let [{:keys [action options exit-message ok?]} (validate-args args)
        {:keys [numbers times maximum]} options]
    (if exit-message
      (exit (if ok? 0 1) exit-message)
      (case action
        "play" (dotimes [_ times]
                 (println (str (lotto/generate-unique-values numbers maximum) \newline)))))))