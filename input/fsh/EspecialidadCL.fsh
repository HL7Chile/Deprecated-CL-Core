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
* specialty.coding.system  from VSEspecialidadesDeisCL (required)



Instance : EspecialidadCL
Title : "Ejemplo de Recurso de especialidad"
Description: "Define el Rol de un Médico durante la Operación de un paciente en Urgencia"
InstanceOf : CoreEspecialidadCl

* active = true

* practitioner.reference = "Practitioner/3240"
* practitioner.display = "Johanna Rosa Silva Reyes"

* specialty.coding.system = "https://hl7chile.cl/fhir/ig/CoreCL/ValueSet/VSEspecialidadesDeisCL"
* specialty.coding.code = #06
* specialty.text = "Cirujano Cardiovascular"

* specialty[1].coding.system = "https://hl7chile.cl/fhir/ig/CoreCL/ValueSet/VSEspecialidadesDeisCL"
* specialty[1].coding.code = #03
* specialty[1].text = "Médico Cardiólogo"

* specialty[2].coding.system = "https://hl7chile.cl/fhir/ig/CoreCL/CodeSystem/CSEspecialidadesDeisCL"
* specialty[2].coding.code = #30
* specialty[2].text = "Médico internista"
 