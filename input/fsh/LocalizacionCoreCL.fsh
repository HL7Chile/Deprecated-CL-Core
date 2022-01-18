Profile:        LocalizacionCL
Parent:         Location
Id:             CoreLocalizacionCl
Title:          "Perfil de Localización de Objetos e Infraestructura"
Description:    "Este perfil determina la ubicación especifica para un evento, objeto o Infraestructura específica. Este perfil permite vinlcular la localización especifica con una organización o espacio físico específico"

//Identifier
* identifier and identifier.system MS 
* identifier 0..* 
* identifier ^short = "Corresponde a un numero de identificación de la locación indicada"
* identifier ^definition = "Es el número de identificación la localización de Recinto, Edificio, ubicación, etc"
* identifier.system ^short = "URI  en donde se encuentran los VS de ubicaciones."
* identifier.system ^definition = "URL en donde se indican el conjunto de ubicaciones deseadas"
* identifier.value ^short = "Número identificador"
* identifier.value ^definition = "Valor de identificación con el cual se asigna un identificador a este recurso"



* status  MS
* status from http://hl7.org/fhir/ValueSet/location-status
* status ^short = "active | suspended | inactive"
* status ^definition = "Determina el estado de la localización conforme a los códigos definidos por el estándar. Existen los estados de ´activo | suspendido | inactivo´"

* name and alias MS

* name ^short = "Nombre oficial de la localizacion"
* name ^definition = "Nombre de la localizacion, ya sea del edificio, del la zona gegráfica como un parque o de un sector específico llamado de cierta forma" 

* alias ^short = "Nombre de fantasía de la localización"
* alias ^definition = "Nombre no oficial del sector, que puede ser identificado de manera polular para contar con una referencia de la comunidad"

* type and type.coding.code MS
* type ^short = "Tipo de la localización, según V3 Value SetServiceDeliveryLocationRoleType (Extensible)"
* type ^definition = "Indica el tipo o función que se ejecuta en la locacalización"
* type.coding.system from http://terminology.hl7.org/ValueSet/v3-ServiceDeliveryLocationRoleType (extensible)
* type.coding.system ^short = "Sistema de códigos bajo el cual se identifica el tipo o función de la localización"
* type.coding.system ^definition = "Tipos de localización segun tabla de HL7 Internacional. Es de tipo extensible para poder agregar mas elementos en caso de ser requerido"
* type.coding.code ^short = "Código del tipo"
* type.coding.code ^definition = "Valor del Código"
* type.coding.display ^short = "Glosa del código"
* type.coding.display ^definition = "Texto que identifica en glosa al código expresado"

* telecom 0..* MS 
* telecom ^short = "Contactos de la organiazación" 
* telecom.use ^short = "Uso del contacto descrito (home | work | temp | old | mobile)" 


* address and address.use and address.line and address.city and address.district and address.state and address.country MS
* address ^short = "Dirección de la Localiación"
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


* position 0..1
* position and position.longitude and position.latitude MS
* position.longitude 1..1
* position.latitude 1..1
* position ^short = "Geoposisionamiento del objeto, infraestructura o evento en longitud y latitud"
* position ^definition = "La localización geográfica absoluta de la Ubicación, expresada utilizando el datum WGS84 (Este es el mismo sistema de coordenadas utilizado en KML)"
* position.longitude ^short = "Longitud valor decimal en WGS84 datum (World Geodetic System 1984)"
* position.longitude ^definition = "Longitud. El dominio del valor y la interpretación son los mismos que para el texto del elemento longitud en KML"
* position.latitude ^short = "Latitud valor decimal en formato WGS84 datum (World Geodetic System 1984)"
* position.latitude ^definition = "Latitud. El dominio del valor y la interpretación son los mismos que para el texto del elemento latitud en KML"


* managingOrganization 0..1 MS
* managingOrganization ^short = "Organización a la cual la ubicación pertenece, si es el caso. Esta relación se hace en base a una referencia a una Orgaización"
* managingOrganization ^definition = "La organización responsable de la localización."
* managingOrganization ^comment = "Se puede usar para indicar la organzación jerárquica superior. Siempre debe existir una Organizacion jerarquicamente sobre la localizacion y en caso de no existir esta jerquia, se debe crear la organizacion, con los mismos datos del location."
* managingOrganization.reference ^short = "Orgaización de referencia"
* managingOrganization.reference ^definition = "La organización responsable de la localización."
* managingOrganization.display ^short = "Nombre de la organización de referencia"
* managingOrganization.display ^definition = "Nombre de la Orgaización de referencia"


* hoursOfOperation MS
* hoursOfOperation ^short = "Horario de atención de la localizacion"
* hoursOfOperation ^definition = "¿Qué días/horas de la semana suele estar abierto este local?"


Instance : LocalizacionEjemploCL1
Title : "Ejemplo Localización Farmacia"
Description: "Ejemplo de la localización relacionada con una Farmacia específica ubicada en la comuna de Viña del Mar"
InstanceOf : CoreLocalizacionCl

* identifier.value = "23144561"
* identifier.system = "http://miderfarm.cl/validador_id"
* status = #active
* name = "Gran Farmacia Gran"
* alias = "La gran"

* type.coding.code = #PHARM
* type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
* type.coding.display = "Pharmacy"

* telecom.system = #phone
* telecom.value = "(+56) 234221678"
* telecom.use = #work

* address.line = "Calle 10 Norte, 1240, Viña del Mar"
* address.city = #05109 
* address.district = #051
* address.state = #05
* address.country = #152

* position.longitude = 42.2565
* position.latitude = -71.550261

* managingOrganization.reference = "Organization/ORG1"

* hoursOfOperation.daysOfWeek = #mon
* hoursOfOperation.daysOfWeek = #tue
* hoursOfOperation.daysOfWeek = #wed
* hoursOfOperation.daysOfWeek = #thu
* hoursOfOperation.daysOfWeek = #fri
* hoursOfOperation.daysOfWeek = #sat
* hoursOfOperation.allDay = false
* hoursOfOperation.openingTime = 09:00:00
* hoursOfOperation.openingTime = 19:00:00

