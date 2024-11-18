;; Hechos
(deffacts smartphones
    (smartphone (id a1) (marca "Apple") (modelo "iPhone16") (color "Rojo") (precio 27000) (stock 10))
    (smartphone (id a2) (marca "Samsung") (modelo "GalaxyS23") (color "Negro") (precio 25000) (stock 10))
    (smartphone (id a3) (marca "Google") (modelo "Pixel8") (color "Blanco") (precio 20000) (stock 10))
    (smartphone (id a4) (marca "Motorola") (modelo "Edge40") (color "Azul") (precio 18000) (stock 10))
    (smartphone (id a5) (marca "Xiaomi") (modelo "RedmiNote12") (color "Verde") (precio 12000) (stock 10)))

(deffacts computadoras
    (computadora (id a6) (marca "Apple") (modelo "MacBookPro") (color "Gris") (precio 47000))
    (computadora (id a7) (marca "Dell") (modelo "XPS13") (color "Negro") (precio 35000))
    (computadora (id a8) (marca "HP") (modelo "SpectreX360") (color "Plata") (precio 33000))
    (computadora (id a9) (marca "Lenovo") (modelo "ThinkPadX1") (color "Negro") (precio 29000))
    (computadora (id b1) (marca "Asus") (modelo "ZenBook14") (color "Azul") (precio 25000)))

(deffacts accesorios
    (accesorio (tipo "Mouse") (marca "Logitech") (precio 800))
    (accesorio (tipo "Teclado") (marca "Microsoft") (precio 1200))
    (accesorio (tipo "Funda") (marca "Belkin") (precio 600))
    (accesorio (tipo "Cargador") (marca "Anker") (precio 900))
    (accesorio (tipo "Audífonos") (marca "Sony") (precio 2500)))

(deffacts clientes
    (cliente (nombre "Juan") (apellido "Pérez") (telefono "3312345678") (correo "juan.perez@example.com"))
    (cliente (nombre "Ana") (apellido "García") (telefono "3323456789") (correo "ana.garcia@example.com"))
    (cliente (nombre "Carlos") (apellido "Hernández") (telefono "3334567890") (correo "carlos.hernandez@example.com"))
    (cliente (nombre "María") (apellido "López") (telefono "3345678901") (correo "maria.lopez@example.com"))
    (cliente (nombre "Sofía") (apellido "Martínez") (telefono "3356789012") (correo "sofia.martinez@example.com")))

(deffacts ordenes
    (orden-compra (id 1) (cliente "Juan Pérez") (productos "iPhone16") (total 27000) (qty 1))
    (orden-compra (id 2) (cliente "Ana García") (productos "GalaxyS23") (total 25000) (qty 1))
    (orden-compra (id 3) (cliente "Carlos Hernández") (productos "Pixel8") (total 20000) (qty 1))
    (orden-compra (id 4) (cliente "María López") (productos "Edge40") (total 18000) (qty 1))
    (orden-compra (id 5) (cliente "Sofía Martínez") (productos "RedmiNote12") (total 12000) (qty 1)))

(deffacts tarjetas-credito
    (tarjeta-credito (banco "BBVA") (grupo "Visa") (fecha-expiracion "01-12-2024"))
    (tarjeta-credito (banco "Santander") (grupo "MasterCard") (fecha-expiracion "01-01-2025"))
    (tarjeta-credito (banco "HSBC") (grupo "Visa") (fecha-expiracion "15-08-2023"))
    (tarjeta-credito (banco "Banorte") (grupo "MasterCard") (fecha-expiracion "20-11-2024"))
    (tarjeta-credito (banco "Scotiabank") (grupo "Visa") (fecha-expiracion "30-06-2025")))

(deffacts vales
    (vale (id 1) (monto 5000) (fecha-expiracion "01-01-2024"))
    (vale (id 2) (monto 3000) (fecha-expiracion "15-03-2024"))
    (vale (id 3) (monto 2000) (fecha-expiracion "30-06-2024"))
    (vale (id 4) (monto 4000) (fecha-expiracion "31-12-2024"))
    (vale (id 5) (monto 1000) (fecha-expiracion "30-09-2024")))