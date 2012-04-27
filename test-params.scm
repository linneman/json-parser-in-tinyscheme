;;;
;;; sample invocation
;;;


;; marshalling/unmarshalling of json data
(define parameter-obj1 (json/parse-file "default_params.json"))
(define json-string (json/gen-string parameter-obj1))
(define parameter-obj2 (json/parse-string json-string))

(println "JSON String after first execution of unmarshalling/marshalling operation")
(println (json/gen-string parameter-obj1))

(println "JSON String after second execution of unmarshalling/marshalling operation")
(println (json/gen-string parameter-obj1))


;; reading from json and invoking setters with "configure-obj"
(println "Parsing JSON object, setter handlers are invoked ...")
(define parameter-obj3 (read-from-json  parameter-obj1 "configure-obj"))

;; reading from "configure-obj" and writing to json
(println "Writing to JSON object, getter handlers are invoked ...")
(define changed (write-to-json  parameter-obj1 "configure-obj"))

(println "Changed JSON string as result of write operation")
(println (json/gen-string changed))