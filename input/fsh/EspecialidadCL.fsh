Profile:        EspecialidadCL
Parent:         PractitionerRole
Id:             CoreEspecialidadCl
Title:          "Perfil utilizaco para asignar una o mas especialidades medicas a un prestador de salud."
Description:    "Este Perfil ha sido desarrollado para cubrir las necesidades del Caso de Uso de Receta Electrónica. Sin embargo, se ha modelado con el fin de cubrir las necesidades nacionales de un Recurso de Especialidad Médica para la denominación de Prescriptor en Chile"

* active = true
* practitioner and practitioner.reference MS
* practitioner 1..1
* practitioner ^short = "Referencia al Prestador al cual se le quiere crear una especialidad"
* practitioner ^definition = "La referencia al prestador de salud, al cual se le quieren agregar titulos, especialidades o certificados."
* practitioner.reference ^short = "Referencia al uri del recurso Practitioner del prestador en cuestión"
* practitioner.reference ^definition = "La referencia es una URI comunmente, la cual hace referencia al Prestador en cuestion"	
* practitioner.display ^short = "Nombre del prestador de salud"
* practitioner.display ^definition = "Nombre completo del prestador de salud"

* specialty MS
* specialty 1..*
* specialty ^short = "Definición de la especialidad médica según DEIS"
* specialty ^definition = "Definición de la especialidad médica según DEIS, en el decreto correspondiete. la tabla sigue siendo extensible ante futuros elementos agregados a esta"
* specialty from TablaEspecialidadesMedicasCl (extensible)



Instance : EspecialidadCL
Title : "Ejemplo de Recurso de especialidad"
InstanceOf : CoreEspecialidadCl

* active = true

* practitioner.reference = "http://minsal/RNPI/Practitioner/3420"
* practitioner.display = "Johanna Rosa Silva Reyes"

* specialty.coding.code = #110
* specialty.text = "Médico Cirujano"


* specialty[1].coding.code = #25
* specialty[1].text = "Médico Cardiólogo"

* specialty[2].coding.code = #27
* specialty[2].text = "Médico internista"
 