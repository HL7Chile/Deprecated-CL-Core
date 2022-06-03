Extension:   PaisOrigenNacionalidadCl
Id:          CodigoPaises
Title:       "Codigo de Identificación de países"
Description: "Esta extensión incluye códigos de paises de origen"
* value[x] only CodeableConcept
* value[x] ^short = "Código de País"
* valueCodeableConcept.coding.system from CodPaises (extensible)

Extension:   ComunasCl
Id:          ComunasCl
Title:       "Códigos para Comunas en Chile"
Description: "Esta extensión que permite codiificar las Comunas en Chile en el campo de Dirección"
* value[x] only code
* value[x] ^short = "Código de Comunas"
* valueCode from VSCodigosComunaCL (extensible)


Extension:   ProvinciasCl
Id:          ProvinciasCl
Title:       "Códigos para Provincias en Chile"
Description: "Esta extensión que permite codificar las Provincias en Chile en el campo de Dirección"
* value[x] only code
* value[x] ^short = "Código de Provincias"
* valueCode  from VSCodigosProvinciasCL (extensible)

Extension:   RegionesCl
Id:          RegionesCl
Title:       "Códigos para Regiones en Chile"
Description: "Esta extensión que permite codificar las Regiones en Chile en el campo de Dirección"
* value[x] only code
* value[x] ^short = "Código de Provincias"
* valueCode  from VSCodigosRegionesCL (extensible)

Extension:   IdentificacionContactoCl
Id:          IdContacto
Title:       "Identificación del Contacto de un Paciente"
Description: "Identificación de contacto de paciente en especial para casos en los cuales este actúa como Tutor Legal"
* extension contains
	tutId 1..* MS and
	docProc 1..1 MS

//* extension[tutId].url = "tutId"
* extension[tutId] ^short = "Identificación del Tutor"
* extension[tutId] ^definition = "Identificación del Tutor"
* extension[tutId].value[x] only Identifier

//* extension[docProc].url = "docProc"
* extension[docProc] ^short = "País de procedencia del documento"
* extension[docProc].value[x] only CodeableConcept
* extension[docProc].valueCodeableConcept from CodPaises (required)

