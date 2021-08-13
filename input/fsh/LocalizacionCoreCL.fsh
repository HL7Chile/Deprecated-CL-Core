Profile:        LocalizacionCL
Parent:         Location
Id:             CoreLocalizacionCl
Title:          "Perfil de Localización de Objetos e Infraestructura"
Description:    "Este perfil determina la ubicación especifica para un evento, objeto o Infraestructura específica. Este perfil permite vinlcular la localización especifica con una organización o espacio físico específico "

//Identifier
* identifier MS
* identifier 1..1 
* identifier ^short = "Corresponde a un numero de identificación dado por el miderfarm"
* identifier ^definition = "Es el número de identificación la localización de cada recinto de dispensación de fármacos en salud"

* identifier.value ^short = "número identificador"
* identifier.value ^definition = "valor de identificación con el cual se asigna un identificador a este recurso"

* status  MS
* status ^short = "	draft | active | on-hold | revoked | completed | entered-in-error | unknown"
* status ^definition = "Determina el estado de la localización conforme a los códigos definidos por el estándar"

* name and alias MS

* name ^short = "Nombre legal de la localizacion"
* name ^definition = "Texto libre en el cual se puede colocar el nombre a la localizacion, ya sea del edificil, del la zona gegráfica como un parque o de un sector específico llamado de cierta forma" 
* alias ^short = "Nombre de fantasía de la localización"
* alias ^definition = "Nombre no oficial del sector, que puede ser identificado de manera polular para contar con una referencia de la comunidad"

* type and  type.coding.code MS
* type ^short = "tipo de funsión segun V3 Value SetServiceDeliveryLocationRoleType (Extensible)"
* type ^definition = "Indica el tipo de funsión que se ejecuta en la locacalización"
* type.coding.system = "http://terminology.hl7.org/ValueSet/v3-ServiceDeliveryLocationRoleType"
* type.coding.system ^short = "Sistema de códigos bajo el cual se identifica el tipo de funsión"
* type.coding.system ^definition = "EndPoint al sistema de identificacion para las funsiones de localización"
* type.coding.code ^short = "Código del tipo"
* type.coding.code ^definition = "Valor del Código"
* type.coding.display ^short = "Glosa del código"
* type.coding.display ^definition = "Texto que identifica en glosa al código expresado"

* telecom MS
* telecom ^short = "contactos de la organiazacon" 
* telecom.use ^short = "uso del contacto descrito (home | work | temp | old | mobile)" 


* address and address.line and address.city and address.district and address.state and address.country MS
* address ^short = "Dirección de la Localización"
* address ^definition = "Dirección específica en la cual se encuentra la Localización especificada"
* address ^comment = "La dirección debe ser espeficifada conforme a la normativa vigente. Para este caso se especifica el ´line´ en el cual en texto libre, se escribe toda la dirección. Para la especificación, se define city = Comuna; district = Provincia; state = Región; country = País. Todos estos elementos se deben definir según los codigos asignados localmente "

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
* position ^definition = "La localización geográfica absoluta de la Ubicación, expresada utilizando el datum WGS84 (Este es el mismo sistema de coordenadas utilizado en KML)"
* position.longitude ^short = "Longitud valor decimal en WGS84 datum (World Geodetic System 1984)"
* position.longitude ^definition = "Longitud. El dominio del valor y la interpretación son los mismos que para el texto del elemento longitud en KML"
* position.latitude ^short = "Latitud valor decimal en formato WGS84 datum (World Geodetic System 1984)"
* position.latitude ^definition = "Latitud. El dominio del valor y la interpretación son los mismos que para el texto del elemento latitud en KML"


* managingOrganization ^short = "Organización a la cual la ubicación pertenece si es el caso. Esta relación se hace en base a una referencia a una Orgaización"
* managingOrganization ^definition = "La organización responsable de la provisión y el mantenimiento de la ubicación."
* managingOrganization ^comment = "Se puede usar para indicar la organzación jerárquica superior"

* managingOrganization.reference ^short = "Orgaización de referencia"
* managingOrganization.reference ^definition = "La organización responsable de la provisión y el mantenimiento de la ubicación."

* managingOrganization.display ^short = "Nombre en Texto libre de la Orgaización de referencia"
* managingOrganization.display ^definition = "Nombre en Texto libre de la Orgaización de referencia"


* hoursOfOperation MS
* hoursOfOperation ^short = "horas de operación disponibles en la cual esta disponble la ubicación"
* hoursOfOperation ^definition = "¿Qué días/horas de la semana suele estar abierto este local?"

Instance : LocalizacionEjemploCL
Title : "Ejemplo Localización Farmacia"
InstanceOf : CoreLocalizacionCl

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
