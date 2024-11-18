(deftemplate enfermedad
   (slot nombre)
   (slot tipo)
   (slot signos))


;; Base de conocimientos de enfermedades
(deffacts enfermedades
   (enfermedad (nombre "Gripe") (tipo "Viral") (signos "Fiebre, escalofríos, dolor de cabeza, dolor muscular, tos seca, fatiga"))
   (enfermedad (nombre "Tuberculosis") (tipo "Bacteriana") (signos "Tos persistente, fiebre, sudores nocturnos, pérdida de peso, debilidad"))
   (enfermedad (nombre "Difteria") (tipo "Bacteriana") (signos "Dolor de garganta, fiebre, hinchazón en el cuello, dificultad para respirar"))
   (enfermedad (nombre "Cólera") (tipo "Bacteriana") (signos "Diarrea acuosa, vómitos, deshidratación severa"))
   (enfermedad (nombre "Meningitis Bacteriana") (tipo "Bacteriana") (signos "Fiebre alta, rigidez en el cuello, dolor de cabeza severo, náuseas, sensibilidad a la luz"))
   (enfermedad (nombre "Neumonía") (tipo "Bacteriana/Viral") (signos "Fiebre, escalofríos, tos con flema, dolor en el pecho, dificultad para respirar"))
   (enfermedad (nombre "VIH/SIDA") (tipo "Viral") (signos "Fiebre, sudores nocturnos, pérdida de peso, fatiga, infecciones recurrentes"))
   (enfermedad (nombre "COVID-19") (tipo "Viral") (signos "Fiebre, tos seca, fatiga, dificultad para respirar, pérdida del sentido del olfato y del gusto"))
   (enfermedad (nombre "Hepatitis B") (tipo "Viral") (signos "Ictericia, fatiga, náuseas, dolor abdominal, orina oscura"))
   (enfermedad (nombre "Sífilis") (tipo "Bacteriana") (signos "Úlceras genitales, erupciones cutáneas, fiebre, fatiga")))


