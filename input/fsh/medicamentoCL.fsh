Profile:        MedicamentoCL
Parent:         Medication
Id:             CoreMedicamentoCl
Title:          "Perfil Se destina para generar el recuso de medicamento ha ser usado para el manejo de terminologpia de fármacos en farmacos registrados extensible a Core Nacional"
Description:    "Este Perfil ha sido desarrollado para cubrir las necesidades del Caso de Uso de Receta Electrónica desde la visión del TFC que se usará para poder manejar farmacos ya registrados, y que deberán ser consultados por los prestadores a la hora de prescribir algno."



* identifier ^slicing.discriminator.type = #type
* identifier ^slicing.discriminator.path = "value"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice defindos en base a el elemento value"
* identifier contains DescripcionId 1..1 MS and ConceptId 1..1 MS



* identifier[DescripcionId] ^short = "Este identificador se obtiene a travez del TFC por medio de un identificador de descripción" 
* identifier[DescripcionId].use = #official
* identifier[DescripcionId].system = "http://minsal.cl/semantikos/description-id"
* identifier[DescripcionId].value ^short = "valor del código"

* identifier[ConceptId] ^short = "Este identificador se obtiene a travez del TFC por medio de un identificador de concepto" 
* identifier[ConceptId].use = #official
* identifier[ConceptId].system = "http://minsal.cl/semantikos/concept-id"
* identifier[ConceptId].value ^short = "valor del código"

* code MS

* code.text ^short = "Descripción del Fármaco según TFC. Se fuerza en este momento TFC"

* code.coding.system = "http://minsal.cl/semantikos/description-id"
* code.coding.code ^short = "Código del farmaco desplegado por la TFC"
* code.coding.display ^short = "descripción del farmaco entregada por la TFC"

Instance : MedicamentoCl
Title : "Ejemplo de comprimido Tareg - D 160"
InstanceOf : CoreMedicamentoCl

	 
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Medicamento: Tareg - D 160 / 25 comprimido recubierto (Novartis), codigo TFC: 1991971000167110 y código TFC de concepto:  840851000167103, definición  SNOMED producto biológico/farmacéutico (producto), código SOMOMED: 373873005 </div>"
* text.status = #additional

* identifier.use = #official
* identifier.system = "http://minsal.cl/semantikos/description-id"
* identifier.value = "1991971000167110"

* identifier[1].use = #official
* identifier[1].system = "http://minsal.cl/semantikos/concept-id"
* identifier[1].value = " 840851000167103"

* code.text = "Tareg - D 160 / 25 comprimido recubierto (Novartis)"
* code.coding.system = "http://minsal.cl/semantikos/description-id"
* code.coding.code = #1991971000167110
* code.coding.display = "Tareg - D 160 / 25 comprimido recubierto (Novartis)"



	 