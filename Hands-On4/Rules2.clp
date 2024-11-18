(defrule aplicar-ofertas
    ?orden <- (orden-compra (productos $? ?smartphone $? ) (total ?total))
    (smartphone (id ?smartphone))
    =>
    (printout t "Ofertas que aplican: Funda y mica con 15% de descuento." crlf))

(defrule aplicar-descuentos
    ?orden <- (orden-compra (productos $? ?smartphone $? ) (total ?total))
    (smartphone (id ?smartphone))
    =>
    (assert (descuento (tipo "accesorios") (porcentaje 15)))
    (printout t "Descuentos que aplican: 15% en accesorios (funda y mica)." crlf))

(defrule tipo-cliente-menudista
    ?orden <- (orden-compra (productos $? ?smartphone $? ) (qty ?qty&:(< ?qty 10)))
    =>
    (assert (cliente (tipo "menudista")))
    (printout t "Cliente: Menudista" crlf))

(defrule tipo-cliente-mayorista
    ?orden <- (orden-compra (productos $? ?smartphone $? ) (qty ?qty&:(>= ?qty 10)))
    =>
    (assert (cliente (tipo "mayorista")))
    (printout t "Cliente: Mayorista" crlf))

(defrule actualizar-stock
    ?orden <- (orden-compra (productos $? ?smartphone $? ) (qty ?qty))
    ?stock <- (smartphone (id ?smartphone) (stock ?stock))
    =>
    (modify ?stock (stock (- ?stock ?qty)))
    (printout t "Stock actualizado: " ?stock " iPhones16 restantes." crlf))
