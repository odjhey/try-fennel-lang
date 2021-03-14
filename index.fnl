(
  (fn m [] 
    (print (. arg 0) (. arg 1))
    (io.write "start" "\n")
    ( let [
        len (. arg 1)
        stv (fn [n] 
          (let [
            tests [(= 0 (% n 3)) (= 0 (% n 5))]
          ] (.. 
              (if (. tests 1) "foo" "") 
              (if (. tests 2) "bar" "")
              (if (not (or (. tests 1) (. tests 2)) ) n "")
            ))
        )
        range (fn [len] 
          (for [ i 1 len ] (print (stv i)))
        )
      ]
      (range (. arg 1))
    )
  )
)
