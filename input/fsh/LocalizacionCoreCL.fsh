Profile:        LocalizacionCL
Parent:         Location
Id:             CoreLocalizacionCl
Title:          "Perfil de Localización de Objetos e Infraestructura"
Description:    "Este perfil determina la ubicación especifica para un evento, objeto o Infraestructura específica. Este perfil permite vinlcular la localización especifica con una organización o espacio físico específico "

//Identifier
* identifier and identifier.system MS 
* identifier 1..1 
* identifier ^short = "Corresponde a un numero de identificación dado por el miderfarm"
* identifier ^definition = "Es el número de identificación la localización de cada recinto de dispensación de fármacos en salud"
* identifier.system ^short = "URI para validar el identificador de cada farmacia."
* identifier.system ^definition = "Endpoint disponibilizado por midefarm, con el fin de poder validar los codigos ingresados por las farmacias. Por el momento, la uri del system es http://miderfarm.cl/validador_id"
* identifier.value ^short = "número identificador"
* identifier.value ^definition = "valor de identificación con el cual se asigna un identificador a este recurso"



* status  MS
* status ^short = "active | suspended | inactive"
* status ^definition = "Determina el estado de la localización conforme a los códigos definidos por el estándar. Existen los estados de ´activo | suspendido | inactivo´"

* name and alias MS

* name ^short = "Nombre legal de la localizacion"
* name ^definition = "Nombre de la localizacion, ya sea del edificio, del la zona gegráfica como un parque o de un sector específico llamado de cierta forma" 

* alias ^short = "Nombre de fantasía de la localización"
* alias ^definition = "Nombre no oficial del sector, que puede ser identificado de manera polular para contar con una referencia de la comunidad"

* type and type.coding.code MS
* type ^short = "Tipo de la localización, según V3 Value SetServiceDeliveryLocationRoleType (Extensible)"
* type ^definition = "Indica el tipo o función que se ejecuta en la locacalización"
* type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
* type.coding.system ^short = "Sistema de códigos bajo el cual se identifica el tipo o función de la localización"
* type.coding.system ^definition = "EndPoint al sistema de identificacion para las localizaciónes"
* type.coding.code ^short = "Código del tipo"
* type.coding.code ^definition = "Valor del Código"
* type.coding.display ^short = "Glosa del código"
* type.coding.display ^definition = "Texto que identifica en glosa al código expresado"

* telecom MS
* telecom ^short = "contactos de la organiazación" 
* telecom.use ^short = "uso del contacto descrito (home | work | temp | old | mobile)" 


* address ^short = "Dirección de la Localización"
* address ^definition = "Dirección específica en la cual se encuentra la Localización especificada"
* address ^comment = "La dirección debe ser espeficifada conforme a la normativa vigente. Para este caso se especifica el ´line´ en el cual en texto libre, se escribe toda la dirección. Para la especificación, se define city = Comuna; district = Provincia; state = Región; country = País. Todos estos elementos se deben definir según los codigos asignados localmente "
* address and address.use and address.line and address.city and address.district and address.state and address.country MS
* address.use 1..1
* address.use ^short = "Definición del tipo de domicilio home | work | temp | old (requerido)"
* address.use ^definition = "Se especifica el tipo de dirección notificada. Esto debe ser segun los códigos definidos por HL7 FHIR"
* address.use = #work
* address.line ^short = "Calle o avenida, numero y casa o depto"
* address.line ^definition = "Aquí se escribe toda la dirección completa"
* address.city ^short = "Campo para Comuna"
* address.city ^definition = "Campo para Comuna. Se usa el valueSet de códigos de comunas definidos a nivel naciona. Este endPoint debe habilitarse "
* address.district ^short = "Campo para Provincia"
* address.district ^definition = "Campo para Provincia. Se usa el valueSet de códigos de Provincias definidos a nivel naciona. Este endPoint debe habilitarse"
* address.state ^short = "Campo para la Región"
* address.state ^definition = "Campo para la Región. Se usa el valueSet de códigos de Regiones  definidos a nivel naciona. Este endPoint debe habilitarse"
* address.country ^short = "Campo para País"
* address.country ^definition = "Campo para País"
* address.country from http://hl7.org/fhir/ValueSet/iso3166-1-N (required)


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


* managingOrganization 1..1
* managingOrganization ^short = "Organización a la cual la ubicación pertenece, si es el caso. Esta relación se hace en base a una referencia a una Orgaización"
* managingOrganization ^definition = "La organización responsable de la localización."
* managingOrganization ^comment = "Se puede usar para indicar la organzación jerárquica superior. Siempre debe existir una Organizacion jerarquicamente sobre la localizacion y en caso de no existir esta jerquia, se debe crear la organizacion, con los mismos datos del location."
* managingOrganization.reference ^short = "Orgaización de referencia"
* managingOrganization.reference ^definition = "La organización responsable de la localización."
* managingOrganization.display ^short = "Nombre de la Orgaización de referencia"
* managingOrganization.display ^definition = "Nombre de la Orgaización de referencia"


* hoursOfOperation MS
* hoursOfOperation ^short = "Horario de atención de la localizacion"
* hoursOfOperation ^definition = "¿Qué días/horas de la semana suele estar abierto este local?"


Instance : LocalizacionEjemploCL1
Title : "Ejemplo Localización Farmacia"
InstanceOf : CoreLocalizacionCl

* identifier.value = "23144561"
* identifier.system = "http://miderfarm.cl/validador_id"
* status = #active
* name = "Gran Farmacia Gran"
* alias = "La gran"

* type.coding.code = #PHARM
* type.coding.display = "Farmacia"

* telecom.system = #phone
* telecom.value = "(+56) 234221678"
* telecom.use = #work

* address.line = "Calle 10 Norte, 1240, Viña del Mar"
* address.city = #05109 
* address.state = #051
* address.postalCode = #05
* address.country = #152

* position.longitude = 42.2565
* position.latitude = -71.550261

* managingOrganization.reference = "http://MINSAL.cl/API/Organizaciones/Id22112"

* hoursOfOperation.daysOfWeek = #mon
* hoursOfOperation.daysOfWeek = #tue
* hoursOfOperation.daysOfWeek = #wed
* hoursOfOperation.daysOfWeek = #thu
* hoursOfOperation.daysOfWeek = #fri
* hoursOfOperation.allDay = true
