(deftemplate smartphone
    (slot id)
    (slot marca)
    (slot modelo)
    (slot color)
    (slot precio)
    (slot stock))

(deftemplate computadora
    (slot id)
    (slot marca)
    (slot modelo)
    (slot color)
    (slot precio))

(deftemplate accesorio
    (slot tipo)
    (slot marca)
    (slot precio))

(deftemplate cliente
    (slot nombre)
    (slot apellido)
    (slot telefono)
    (slot correo))

(deftemplate orden-compra
    (slot id)
    (slot cliente)   ;; Cliente asociado (nombre completo o ID)
    (multislot productos)  ;; Producto individual
    (slot total)
    (slot qty)) ;; Cantidad de smartphones comprados

(deftemplate tarjeta-credito
    (slot banco)
    (slot grupo)
    (slot fecha-expiracion))

(deftemplate vale
    (slot id)
    (slot monto)
    (slot fecha-expiracion))

(deftemplate descuento
    (slot tipo)
    (slot porcentaje))

(deftemplate stock
    (slot producto)
    (slot cantidad))
