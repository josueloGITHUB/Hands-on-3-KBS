(defrule promocion-iphone16
    "Si se compra un iPhone 16 con una tarjeta Banamex, ofrece 24 meses sin intereses"
    (smartphone (marca "Apple") (modelo "iPhone16"))
    (tarjeta-credito (banco "Banamex"))
    =>
    (printout t "Promoción aplicada: iPhone16 con tarjeta Banamex - 24 meses sin intereses." crlf))

    ;;Ejemplo compra iphone16
    ;;(deffacts compras-prueba
    ;;(smartphone (marca "Apple") (modelo "iPhone16") (color "Rojo") (precio 27000))
    ;;(tarjeta-credito (banco "Banamex") (grupo "Visa") (fecha-expiracion "15-12-2024")))

(defrule ofrecer-vale
    (declare (salience 10))
    ?orden <- (orden-compra (productos $? ?p1 ?p2 $? ) (total ?total))
    (smartphone (id ?p1) (marca apple) (modelo iPhone16))
    (computadora (id ?p2) (marca apple) (modelo MacBookAir))
    (test (>= ?total 1000))
    =>
    (bind ?vales (integer (/ ?total 1000)))
    (assert (vale (monto (* ?vales 100)) (fecha-expiracion "2024-12-31")))
    (printout t "Vale emitido: " ?vales " vales de 100 pesos cada uno." crlf))

;;(deffacts productos-de-prueba
;;    (smartphone (id s1) (marca apple) (modelo iPhone16) (color rojo) (precio 20000))
;;    (computadora (id c1) (marca apple) (modelo MacBookAir) (color gris) (precio 30000)))

;;(deffacts orden-de-compra
 ;;   (orden-compra (id 1) (cliente "Juan Perez") (productos (create$ s1 c1)) (total 50000)))

(defrule descuento-accesorios
    ?orden <- (orden-compra (productos $? ?smartphone $? ) (total ?total))
    (smartphone (id ?smartphone))
    =>
    (assert (accesorio (tipo funda) (marca generica) (precio (* 0.85 100))))  ;; Precio original de la funda es 100
    (assert (accesorio (tipo mica) (marca generica) (precio (* 0.85 50))))   ;; Precio original de la mica es 50
    (printout t "Descuento del 15% aplicado a funda y mica." crlf))



