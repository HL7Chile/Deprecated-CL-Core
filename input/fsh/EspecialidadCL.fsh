Profile:        EspecialidadCL
Parent:         PractitionerRole
Id:             CoreEspecialidadCl
Title:          "Perfil Se destina para determinar la especialidad del Prescriptor para Receta Digital, extensible a Core Nacional"
Description:    "Este Perfil ha sido desarrollado para cubrir las necesidades del Caso de Uso de Receta Electrónica. Sin embargo, se ha modelado con el fin de cubrir las necesidades nacionales de un Recurso de Especialidad Médica para la denominación de Prescriptor en Chile"

* active = true
* practitioner and practitioner.reference MS
* practitioner 1..1
* practitioner ^short = "Recurso del Prestador al cual se hace referencia la especialidad"
* practitioner ^definition = "LA referencia a la o las especialidades del prestador definido en el registro de la Super Intendencia, tiene como finalidad anexarle a este las especialidades y subespecialidades que posee"

* practitioner.reference ^short = "refrencia al uri del recurso Practitioner referenciado"
* practitioner.reference ^definition = "Reference debe contener la identificación lógica del recurso al cual se le vinculan las especialidad. Comunmente es una URI"	
* practitioner.display ^short = "texto del nombre del prestador"
* practitioner.display ^definition = "texto del nombre del prestador"

* specialty MS
* specialty 1..*
* specialty ^short = "definición de la especialidad médica según DEIS"
* specialty ^definition = "definición de la especialidad médica según DEIS, en el decreto correspondiete. la tabla sigue siendo extensible ante futuros elementos agregados a esta"
* specialty from TablaEspecialidades (extensible)




ValueSet:    TablaEspecialidades
Title:       "Códigos de especialidades según DEIS"
Id:          Esp-Tabla-DEIS
Description: "Códigos de especialidades médicas descritas segun DEIS"
* codes from system http://deis.cl/especialidades    // ???


Instance : EspecialidadCL
Title : "Ejemplo de Recurso de especialidad"
InstanceOf : CoreEspecialidadCl


* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Especialidad: Dra. Johanna Rojas declara dos especialidades: Médico Cirujano y Médico Cardiólogo</div>"
* text.status = #additional

 
* practitioner.reference = "http://minsal/RNPI/Practitioner/3420"
* practitioner.display = "Johanna Rosa"

* specialty.coding.code = #110
* specialty.text = "Médico Cirujano"

* specialty[1].coding.code = #25
* specialty[1].text = "Médico Cardiólogo"
 