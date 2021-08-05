Profile:        LocalizacionCH
Parent:         Location
Id:             LocalizacionCoreCh
Title:          "Perfil de Localización de Objetos e Infraestructura"
Description:    "Este perfil determina la ubicación especifica para un evento, objeto o Infraestructura específica. Este perfil permite vinlcular la localización especifica con una organización o espacio físico específico "

//Identifier
* identifier MS
* identifier 1..1 
* identifier ^short = "Corresponde a un numero de identificación dado por el miderfarm"
* identifier ^definition = "Es el número de identificación la localización de cada recinto de dispensación de fármacos en salud"

* identifier.value ^short = "número identificador"


* status  MS
* status ^short = "	draft | active | on-hold | revoked | completed | entered-in-error | unknown"

* name and alias MS

* name ^short = "Nombre legal de la localizacion"
* alias ^short = "Nombre de fantasía de la localización"

* type and  type.coding.code MS
* type ^short = "tipo de localizacion segun V3 Value SetServiceDeliveryLocationRoleType (Extensible)"
* type.coding.system = "http://terminology.hl7.org/ValueSet/v3-ServiceDeliveryLocationRoleType"
* type.coding.code ^short = "Código del tipo"
* type.coding.display ^short = "Glosa del código"

* telecom MS
* telecom ^short = "contactos de la organiazacon" 
* telecom.use ^short = "uso del contacto descrito (home | work | temp | old | mobile)" 


* address and address.line and address.city and address.district and address.state and address.country MS

* address.line ^short = "Calle o avenida, numero y casa o depto"
* address.city ^short = "Campo para Comuna de residencia"
* address.city from CodComunas (required)
* address.district ^short = "Campo para Provincia de Residencia"
* address.district from CodProvincia (required)
* address.state ^short = "Campo para Provincia de Región"
* address.state from CodRegion (required)
* address.country ^short = "Campo para País de Residencia"
* address.country from ISO3166COD (required)

* position 0..1
* position and position.longitude and position.latitude MS
* position ^short = "Posición física del objeto infraestructura o evento en longitud y latitud"
* position.longitude ^short = "Longitud valor decimal en WGS84 datum (World Geodetic System 1984)"
* position.latitude ^short = "Latitud valor decimal en formato WGS84 datum (World Geodetic System 1984)"

* managingOrganization ^short = "Organización a la cual la ubicación pertenece si es el caso. Esta relación se hace en base a una referencia a una Orgaización"
* managingOrganization.reference ^short = "Orgaización de referencia"
* managingOrganization.display ^short = "Nombre en Texto libre de la Orgaización de referencia"


* hoursOfOperation MS
* hoursOfOperation ^short = "horas de operación disponibles en la cual esta disponble la ubicación"

Instance : LocalizacionEjemploCH
Title : "Ejemplo de Recurso de organización prestadora de salud en la cual el paciente es atendido y se le hace la prescripción"
InstanceOf : LocalizacionCH

* identifier.value = "23144561"
* status = #active
* name = "Gran Farmacia Gran"


* type.coding.code = #PHARM
* type.coding.display = "Farmacia"

* telecom.system = #phone
* telecom.value = "(+56) 234221678"

* address.line = "Calle 10 Norte, 1240, Viña del Mar"
* address.city = #05109 
* address.state = #051
* address.postalCode = #05
* address.country = #152

* position.longitude = 42.2565
* position.latitude = -71.550261

* managingOrganization.reference = "http://MINSAL.cl/API/Organizaciones/Id22112"
