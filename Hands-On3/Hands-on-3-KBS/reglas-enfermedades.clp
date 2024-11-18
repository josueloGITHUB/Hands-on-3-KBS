(defrule encontrar-enfermedad
   ?e <- (enfermedad (nombre ?nombre) (tipo ?tipo) (signos ?signos))
   =>
   (printout t "Nombre: " ?nombre crlf)
   (printout t "Tipo: " ?tipo crlf)
   (printout t "Signos y síntomas: " ?signos crlf crlf))

(deffunction agregar-enfermedad (?nombre ?tipo ?signos)
   (assert (enfermedad (nombre ?nombre) (tipo ?tipo) (signos ?signos))))

;; Declarar variable global
(defglobal ?*enfermedad* = nil)



;; Definir la función para actualizar la enfermedad
(deffunction actualizar-enfermedad-func (?nombre-nuevo ?tipo-nuevo ?signos-nuevos)
   (bind ?nombre ?nombre-nuevo)
   (bind ?tipo ?tipo-nuevo)
   (bind ?signos ?signos-nuevos)

   ;; Buscar y actualizar el hecho correspondiente a la enfermedad por nombre
   (do-for-all-facts ((?e enfermedad))
      (eq ?e:nombre ?nombre)
      (modify ?e (tipo ?tipo) (signos ?signos))
      (printout t "Enfermedad " ?nombre " actualizada a: " ?tipo " - " ?signos crlf))
   
   ;; Si no se encuentra el hecho, informar al usuario
   (if (eq (find-all-facts ((?e enfermedad)) (eq ?e:nombre ?nombre)) 0)
      then
      (printout t "No se encontró la enfermedad " ?nombre crlf))
)


;; Definir la función para eliminar la enfermedad
(deffunction eliminar-enfermedad-func (?nombre-borrar)
   ;; Buscar el hecho correspondiente a la enfermedad por nombre
   (do-for-all-facts ((?e enfermedad))
      (eq ?e:nombre ?nombre-borrar)
      (retract ?e)
      (printout t "Enfermedad " ?nombre-borrar " eliminada." crlf))
   
   ;; Si no se encuentra el hecho, informar al usuario
   (if (eq (find-all-facts ((?e enfermedad)) (eq ?e:nombre ?nombre-borrar)) 0)
      then
      (printout t "No se encontró la enfermedad " ?nombre-borrar crlf))
)
