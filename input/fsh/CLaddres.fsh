Profile: BeAddress
Parent: Address
Id: be-address
Title: "BeAddress"
Description: "Belgain federal profile on address, to provide the possibility in the 'line' element to provide a seperate streetname, housenumber and postal box. It is always RECOMMENDED to give these elements seperately."
* ^version = "1.0.0"
* . ^comment = "Note: address is intended to describe postal addresses for administrative purposes, not to describe absolute geographical coordinates.  Postal addresses are often used as proxies for physical locations (also see the [Location](location.html#) resource).\r\n\r\nSpecial remarks for KMEHR users:\r\n\r\nNote when .use and .type are used they SHALL use the FHIR defined valuesets as per their required binding level in the FHIR specification. In a KMEHR address, the use was defined by CD-ADDRESS but those values can be found in the FHIR valueset.\r\nKMEHR values 'careadress', 'other' and 'vacation' are not directly present in the FHIR address-use table but can be mapped to the value 'temp' in FHIR. In those cases, it is RECOMMENDED to also add a .period.\r\nIn KMEHR, an address might be expressed using free text or a totally structured approach where the streetname and housenumber are put in separate fields. FHIR prefers a more pragmatic approach where the ‘text’ element is used to print on labels. Also, streetname and number are not separate fields as in KMEHR but in a structural approach are given as one or moren ‘line’ elements. It is however RECOMMENDED to use the Streetname, Housenumber and Postbox extensions to express them seperately.\r\nNote the FHIR address also allows to optionally define whether the address is a physical, postal or ‘both’ address using the .type field."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^definition = "The Human Language of the item. Can be used to express the same address in multiple languages (e.g. in a Brussels setting)"
* extension contains $language named language 0..1
* extension[language] ^min = 0

* use 1..1
* use ^short = "Definición del tipo de domicilio home | work | temp | old (requerido)"
* use ^definition = "Se especifica el tipo de dirección notificada. Esto debe ser segun los códigos definidos por HL7 FHIR"

* line ^short = "Calle o avenida, numero y casa o depto"
* line ^definition = "Aquí se escribe toda la dirección completa"

* city ^short = "Campo para Comuna de residencia"
* city ^definition = "Campo para Comuna de residencia."
* city.extension contains ComunasCl named comunas  0..1  MS
* city.extension ^short = "Código de Comunas"
* city.extension ^definition = "Código de Comunas"

* district ^short = "Campo para Provincia de Residencia"
* district ^definition = "Campo para Provincia de Residencia. Se usa el valueSet de códigos de provicias definidos a nivel naciona."
* district.extension contains ProvinciasCl named provincias  0..1  MS
* district.extension ^short = "Código de Regiones"
* district.extension ^definition = "Código de Regiones"

* state ^short = "Campo para la Región"
* state ^definition = "Campo Región. Se usa el valueSet de códigos de regiones definidos a nivel naciona."
* state.extension contains RegionesCl named regiones  0..1  MS
* state.extension ^short = "Código de Regiones"
* state.extension ^definition = "Código de Regiones"

* country ^short = "Campo para País de Residencia"
* country ^definition = "Campo para País de Residencia"

* country.extension contains CodigoPaises named paises  0..1  MS
* country.extension ^short = "Código de Países"
* country.extension ^definition = "Código de Países"

