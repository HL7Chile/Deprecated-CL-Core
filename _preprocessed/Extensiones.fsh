// Originally defined on lines 3 - 13
Extension: PaisOrigenNacionalidadCl
Parent: Extension
Id: CodigoPaises
Title: "Codigo de Identificación de países"
Description: "Esta extensión incluye códigos de paises de origen"
* value[x] only CodeableConcept
* value[x] ^short = "Código de País"
* url 1..1
* url MS
* valueCodeableConcept 1..1
* valueCodeableConcept MS
* valueCodeableConcept.coding 1..1
* valueCodeableConcept.coding MS
* valueCodeableConcept.coding.system 1..1
* valueCodeableConcept.coding.system MS
* valueCodeableConcept.coding.system from CodPaises (extensible)
* extension 0..0

// Originally defined on lines 17 - 25
Extension: ComunasCl
Parent: Extension
Id: ComunasCl
Title: "Códigos para Comunas en Chile"
Description: "Esta extensión que permite codiificar las Comunas en Chile en el campo de Dirección"
* value[x] only code
* value[x] ^short = "Código de Comunas"
* valueCode 1..1
* valueCode MS
* url 1..1
* url MS
* valueCode from VSCodigosComunaCL (extensible)
* extension 0..0

// Originally defined on lines 29 - 37
Extension: ProvinciasCl
Parent: Extension
Id: ProvinciasCl
Title: "Códigos para Provincias en Chile"
Description: "Esta extensión que permite codificar las Provincias en Chile en el campo de Dirección"
* value[x] only code
* value[x] ^short = "Código de Provincias"
* valueCode 1..1
* valueCode MS
* url 1..1
* url MS
* valueCode from VSCodigosProvinciasCL (extensible)
* extension 0..0

// Originally defined on lines 41 - 49
Extension: RegionesCl
Parent: Extension
Id: RegionesCl
Title: "Códigos para Regiones en Chile"
Description: "Esta extensión que permite codificar las Regiones en Chile en el campo de Dirección"
* value[x] only code
* value[x] ^short = "Código de Provincias"
* valueCode 1..1
* valueCode MS
* url 1..1
* url MS
* valueCode from VSCodigosRegionesCL (required)
* extension 0..0

// Originally defined on lines 51 - 83
Extension: IdentificacionContactoCl
Parent: Extension
Id: IdContacto
Title: "Identificación del Contacto de un Paciente"
Description: "Identificación de contacto de paciente en especial para casos en los cuales este actúa como Tutor Legal"
* extension contains
    tutId 0.. and
    docProc 0..
* extension[tutId] 1..*
* extension[tutId] MS
* extension[docProc] 1..1
* extension[docProc] MS
* url MS
* extension[tutId] ^short = "Identificación del Tutor"
* extension[tutId] ^definition = "Identificación del Tutor"
* extension[tutId] 1..1
* extension[tutId] MS
* extension[tutId].url MS
* extension[tutId].value[x] only Identifier
* extension[tutId].valueIdentifier 1..1
* extension[tutId].valueIdentifier MS
* extension[tutId].valueIdentifier.type 1..1
* extension[tutId].valueIdentifier.type MS
* extension[tutId].valueIdentifier.type.coding.code 1..1
* extension[tutId].valueIdentifier.type.coding.code MS
* extension[tutId].valueIdentifier.type.coding.system 1..1
* extension[tutId].valueIdentifier.type.coding.system MS
* extension[tutId].valueIdentifier.type.coding.display 0..1
* extension[tutId].valueIdentifier.type.coding.display MS
* extension[tutId].valueIdentifier.system 1..1
* extension[tutId].valueIdentifier.system MS
* extension[tutId].valueIdentifier.value 1..1
* extension[tutId].valueIdentifier.value MS
* extension[docProc] ^short = "País de procedencia del documento"
* extension[docProc].value[x] only CodeableConcept
* extension[docProc].url MS
* extension[docProc].valueCodeableConcept from CodPaises (required)
* extension[docProc].valueCodeableConcept 1..1
* extension[docProc].valueCodeableConcept MS
* extension[docProc].valueCodeableConcept.coding 1..1
* extension[docProc].valueCodeableConcept.coding MS
* extension[docProc].valueCodeableConcept.coding.code 1..1
* extension[docProc].valueCodeableConcept.coding.code MS
* extension[docProc].valueCodeableConcept.coding.system 1..1
* extension[docProc].valueCodeableConcept.coding.system MS
* extension[docProc].valueCodeableConcept.coding.display 0..1
* extension[docProc].valueCodeableConcept.coding.display MS
* value[x] 0..0
* extension[tutId].extension 0..0
* extension[docProc].extension 0..0

