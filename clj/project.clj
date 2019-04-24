(defproject clj "0.3.0"
  :description "Lottery in many languages"
  :url "https://github.com/pablohenriq/lottery-play"
  :license {:name "MIT"
            :url "https://opensource.org/licenses/MIT"}
  :dependencies [[org.clojure/clojure "1.10.0"]
                 [org.clojure/tools.cli "0.4.2"]]
  :main ^:skip-aot clj.core
  :target-path "target/%s"
  :profiles {:uberjar {:aot :all}
             :dev {:plugins [[lein-binplus "0.6.5"]]}}
  :bin {:name "lottery"
        :bin-path "target/bin/"
        :bootclasspath false})
