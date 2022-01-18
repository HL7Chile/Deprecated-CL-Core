Profile:        OrganizacionCL
Parent:         Organization
Id:             CoreOrganizacionCl
Title:          "Perfil de Organización de Salud en Chile"
Description:    "Este Perfil ha sido desarrollado para cubrir las necesidades del Caso de Uso de Receta Electrónica. Sin embargo, se ha modelado para también cubrir las necesidades nacionales de un Recurso de Organzación en Salud"

* active ^short = "Estado de si es una Organización Validada o no (true|false)"
* active ^definition = "Indicador si una organización sigue vigente en su rol dentro del sistema de salud"

* identifier and identifier.system and identifier.value MS
* identifier 1..*
* identifier ^short = "Identificador de organizacion de salud (DEIS, RUT, Códigos para cietos tipos de Recintos, etc.)"
* identifier ^definition = "Identificador universal de la organización en Chile"
* identifier.system ^short = "indicador del sistema de indentificación usado pora determinar el valor del identificador"
* identifier.system ^definition = "Se debe aun definir un ValueSet para estos casos"

* name and alias MS
* name ^short = "Nombre Legal de la Organizacion" 
* name ^definition = "Nombre Legal de la Organización"
* alias ^short = "Nombre de Fantasía" 
* alias ^definition = "Nombre por lo que  popularmente es conocida la Organización y que no corresponde al nombre legal" 		

* telecom MS
* telecom ^short = "Contactos de la organización" 
* telecom ^definition = "Contactos de la organización" 
* telecom.system ^short = "phone | fax | email | pager | url | sms | other  ContactPointSystem (Required)" 
* telecom.system ^definition = "El tipo de medio de contacto el cual se notifica"



* address and address.use and address.line and address.city and address.district and address.state and address.country MS



* address and address.use and address.line and address.city and address.district and address.state and address.country MS
* address ^short = "Dirección de la Organización"
* address ^definition = "Se definirá la dirección en una línea y se podría codificar en city la comuna, en district la provincia y en state la región"
* address.line ^short = "Calle o avenida, numero y casa o depto"
* address.line ^definition = "Aquí se escribe toda la dirección completa"
* address.city ^short = "Campo para Comuna de residencia"
* address.city ^definition = "Campo para Comuna de residencia. Se usa el valueSet de códigos de comunas definidos a nivel naciona."
* address.city from VSCodigosComunaCL (required)
* address.district ^short = "Campo para Provincia de Residencia"
* address.district ^definition = "Campo para Provincia de Residencia. Se usa el valueSet de códigos de provicias definidos a nivel naciona."
* address.district from VSCodigosProvinciasCL (required)
* address.state ^short = "Campo para la Región"
* address.state ^definition = "Campo Región. Se usa el valueSet de códigos de regiones definidos a nivel naciona."
* address.state from VSCodigosRegionesCL (required)
* address.country ^short = "Campo para País de Residencia"
* address.country ^definition = "Campo para País de Residencia"
* address.country from CodPaises (required)



Instance : OrganizacionCl
Title : "Ejemplo Organización Prestadora de Salud"
Description: "CESFAM Rio Bueno (Ficticio) con ID DEIS no real"
InstanceOf : CoreOrganizacionCl
Usage : #example

	 
* id = "ORG1"	
* active = true
* identifier.system = "http://minsal.cl/deis/codigodeis"
* identifier.value = "1233"

* name = "Centro de Salud Familiar Rio Bueno de Linares"	
* alias = "Rio Bueno CESFAM"

* telecom.system = #phone
* telecom.use = #work
* telecom.value = "45325775"
	
	

* address.line = "Calle Central 33"
* address.city = #07401  //codigo de comuna por binding (linares, no validable aun)
* address.district = #074  //codigo de comuna por binding (linares, no validable aun)
* address.state = #07 //codigo por binding region (maule)
* address.country = #152	
	
	
	