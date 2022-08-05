Alias: $description-id = http://minsal.cl/semantikos/description-id

// Originally defined on lines 1 - 89
Instance: PacienteCL
InstanceOf: CorePacienteCl
Title: "Ejemplo de Recurso Paciente Nacional"
Description: "Paciente ficticio nacional CI Chilena, sin sistema de validación \"http://regcivil.cl/Validacion/RUN\" ficticio , cuyo nombre se decribe mediante el oficial y uno social. La dirección tampoco es Real"
Usage: #example
* identifier.use = #official
* identifier.type.extension[paises].valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"
* identifier.type.extension[paises].valueCodeableConcept.coding.code = #152
* identifier.type.extension[paises].valueCodeableConcept.coding.display = "Chile"
* identifier.type.coding.system = "https://hl7chile.cl/fhir/ig/CoreCL/CodeSystem/CSCodigoDNI"
* identifier.type.coding.code = #NNCHL
* identifier.type.coding.display = "Chile"
* identifier.system = "http://regcivil.cl/Validacion/RUN"
* identifier.value = "15.236.327-k"
* active = true
* name[NombreOficial].use = #official
* name[NombreOficial].family = "Rosales"
* name[NombreOficial].family.extension[mothers-family].valueString = "Bosh"
* name[NombreOficial].given[0] = "Marietta"
* name[NombreOficial].given[1] = "María"
* name[NombreOficial].given[2] = "Ximena"
* name[NombreSocial].use = #usual
* name[NombreSocial].given = "Xime"
* telecom.system = #phone
* telecom.use = #mobile
* telecom.value = "943561833"
* telecom[1].system = #email
* telecom[1].use = #work
* telecom[1].value = "mariRosal@mimail.com"
* gender = #female
* birthDate = "1983-03-24"
* address.use = #home
* address.line = "Av Los Chirimoyos, 32, casa 4"
* address.city.extension[ComunasCl].url = "https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/ComunasCl"
* address.city.extension[ComunasCl].valueCode = #05602 "Algarrobo"
* address.district.extension[ProvinciasCl].url = "https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/ProvinciasCl"
* address.district.extension[ProvinciasCl].valueCode = #151 "Arica"
* address.state.extension[RegionesCl].url = "https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/RegionesCl"
* address.state.extension[RegionesCl].valueCode = #03 "Atacassssma"
* address.country.extension[CodigoPaises].url = "https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/CodigoPaises"
* address.country.extension[CodigoPaises].valueCodeableConcept.coding.system = #CL "Chile"
* contact.extension.url = "https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/IdContacto"
* contact.extension.extension[0].url = "tutId"
* contact.extension.extension[0].valueIdentifier.type = https://hl7chile.cl/fhir/ig/CoreCL/CodeSystem/CSCodigoDNI#NNCHL "Chile"
* contact.extension.extension[0].valueIdentifier.system = "http://regcivil.cl/Validacion/RUN"
* contact.extension.extension[0].valueIdentifier.value = "8987321-7"
* contact.extension.extension[1].url = "docProc"
* contact.extension.extension[1].valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"
* contact.extension.extension[1].valueCodeableConcept.coding.code = #152
* contact.extension.extension[1].valueCodeableConcept.coding.display = "Chile"
* contact.relationship = http://terminology.hl7.org/CodeSystem/v2-0131#N "Next-of-Kin"
* contact.name.use = #official
* contact.name.family = "Calleja"
* contact.name.family.extension.url = "http://hl7.org/fhir/StructureDefinition/humanname-mothers-family"
* contact.name.family.extension.valueString = "Morales"
* contact.name.given[0] = "Juana"
* contact.name.given[1] = "Josefa"
* communication.language.coding.system = "https://hl7chile.cl/fhir/ig/CoreCL/CodeSystem/CSCodigoslenguaje"
* communication.language.coding.code = #es-CL "Spanish"
* communication.language.coding.display = "Chile, Chilean Spanish"
* generalPractitioner.reference = "http://fhir.cl/Organization/15"
* generalPractitioner.display = "Hospital Barros Luco"

// Originally defined on lines 91 - 153
Instance: PacienteCL2
InstanceOf: CorePacienteCl
Title: "Ejemplo de Recurso Paciente Extranjero"
Description: "Paciente ficticio extrangero, con identificación Pasaporte de origen Salvadoreño sin sistema real de validación del número de Pasaporte."
Usage: #example
* extension[nacionalidad].valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"
* extension[nacionalidad].valueCodeableConcept.coding.code = #222
* extension[nacionalidad].valueCodeableConcept.coding.display = "El Salvador"
* identifier.use = #official
* identifier.type.extension[paises].valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"
* identifier.type.extension[paises].valueCodeableConcept.coding.code = #222
* identifier.type.extension[paises].valueCodeableConcept.coding.display = "El Salvador"
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier.type.coding.code = #PPN
* identifier.type.coding.display = "Passport number"
* identifier.system = "http://Pasaportes.cl/Validacion/Pass"
* identifier.value = "P3334521.2"
* active = true
* name[NombreOficial].use = #official
* name[NombreOficial].family = "Cabrales"
* name[NombreOficial].family.extension[mothers-family].valueString = "Rivas"
* name[NombreOficial].given = "Wilmer"
* name[NombreOficial].given[1] = "Andres"
* name[NombreOficial].given[2] = "de Dios"
* telecom.system = #email
* telecom.use = #home
* telecom.value = "wilCAB12l@wilmermail.com"
* gender = #male
* birthDate = "1968-11-03"
* address.use = #temp
* address.line = "Calle 4 Norte, 52, pieza 802"
* address.city.extension[ComunasCl].url = "https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/ComunasCl"
* address.city.extension[ComunasCl].valueCode = #15101 "Arica"
* address.district.extension[ProvinciasCl].url = "https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/ProvinciasCl"
* address.district.extension[ProvinciasCl].valueCode = #151 "Arica"
* address.state.extension[RegionesCl].url = "https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/RegionesCl"
* address.state.extension[RegionesCl].valueCode = #15 "Arica"
* address.country.extension[CodigoPaises].url = "https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/CodigoPaises"
* address.country.extension[CodigoPaises].valueCodeableConcept.coding.system = #CL "Chile"

// Originally defined on lines 156 - 218
Instance: PacienteCl-3
InstanceOf: CorePacienteCl
Title: "Paciente Nacional, con datos actualizados, declarando nacionalidad"
Description: "Paciente ficticio nacional CI Chilena con sistema de validación no real, cuyo nombre es solo el oficial. La dirección tampoco es Real"
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2021-07-13T00:22:41.166Z"
* extension[nacionalidad].valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"
* extension[nacionalidad].valueCodeableConcept.coding.code = #152
* extension[nacionalidad].valueCodeableConcept.coding.display = "Chile"
* identifier.use = #official
* identifier.type.extension[paises].valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"
* identifier.type.extension[paises].valueCodeableConcept.coding.code = #152
* identifier.type.extension[paises].valueCodeableConcept.coding.display = "Chile"
* identifier.type.coding.system = "https://hl7chile.cl/fhir/ig/CoreCL/CodeSystem/CSCodigoDNI"
* identifier.type.coding.code = #NNCHL
* identifier.type.coding.display = "Chile"
* identifier.system = "http://regcivil.cl/Validacion/RUN"
* identifier.value = "15602754-5"
* active = true
* name[NombreOficial].use = #official
* name[NombreOficial].family = "PIZARRO"
* name[NombreOficial].family.extension[mothers-family].valueString = "DELGADO"
* name[NombreOficial].given[0] = "PABLO"
* name[NombreOficial].given[1] = "RODRIGO"
* telecom.system = #email
* telecom.value = "ppizarro.delgado@minsal.cl"
* telecom.use = #work
* gender = #male
* birthDate = "1983-08-04"
* address.use = #home
* address.city = "13120"
* address.district = "131"
* address.state = "13"
* address.country = #152
* address.use = #home
* address.city.extension[ComunasCl].url = "https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/ComunasCl"
* address.city.extension[ComunasCl].valueCode = #13120
* address.district.extension[ProvinciasCl].url = "https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/ProvinciasCl"
* address.district.extension[ProvinciasCl].valueCode = #131
* address.state.extension[RegionesCl].url = "https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/RegionesCl"
* address.state.extension[RegionesCl].valueCode = #13
* address.country.extension[CodigoPaises].url = "https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/CodigoPaises"
* address.country.extension[CodigoPaises].valueCodeableConcept.coding.system = #CL "Chile"
* deceasedBoolean = false

// Originally defined on lines 221 - 301
Instance: PacienteCl-4
InstanceOf: CorePacienteCl
Title: "Ejemplo de Recurso de paciente Nacional con contacto declarado"
Description: """Paciente ficticio nacional CI Chilena, 
     * sin sistema de validación \"http://regcivil.cl/Validacion/RUN\" ficticio , 
     * cuyo nombre se decribe mediante el oficial y uno social. 
     * La dirección tampoco es Real.
     * Se agrega al paciente un acompañante patiente."""
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2021-07-13T00:22:41.166Z"
* meta.profile = "https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/CorePacienteCl"
* extension.url = "https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/CodigoPaises"
* extension.valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"
* extension.valueCodeableConcept.coding.code = #152
* extension.valueCodeableConcept.coding.display = "Chile"
* identifier.use = #official
* identifier.type.extension[paises].valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"
* identifier.type.extension[paises].valueCodeableConcept.coding.code = #152
* identifier.type.extension[paises].valueCodeableConcept.coding.display = "Chile"
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier.type.coding.code = #PPN
* identifier.type.coding.display = "Passport Number"
* identifier.system = "http://regcivil.cl/Validacion/Passport"
* identifier.value = "P102145874"
* active = true
* name[NombreOficial].use = #official
* name[NombreOficial].family = "Ortega"
* name[NombreOficial].family.extension.url = "http://hl7.org/fhir/StructureDefinition/humanname-mothers-family"
* name[NombreOficial].family.extension.valueString = "Callejas"
* name[NombreOficial].given[0] = "Juan"
* name[NombreOficial].given[1] = "José"
* name[NombreSocial].use = #usual
* name[NombreSocial].given = "JuanJo"
* telecom.system = #email
* telecom.value = "juan@jo.cl"
* telecom.use = #home
* gender = #male
* birthDate = "1980-08-04"
* address.use = #home
* address.city.extension[ComunasCl].url = "https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/ComunasCl"
* address.city.extension[ComunasCl].valueCode = #13120
* address.district.extension[ProvinciasCl].url = "https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/ProvinciasCl"
* address.district.extension[ProvinciasCl].valueCode = #131
* address.state.extension[RegionesCl].url = "https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/RegionesCl"
* address.state.extension[RegionesCl].valueCode = #13
* address.country.extension[CodigoPaises].url = "https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/CodigoPaises"
* address.country.extension[CodigoPaises].valueCodeableConcept.coding.system = #CL "Chile"
* contact.extension.url = "https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/IdContacto"
* contact.extension.extension[0].url = "tutId"
* contact.extension.extension[0].valueIdentifier.type = https://hl7chile.cl/fhir/ig/CoreCL/CodeSystem/CSCodigoDNI#NNCHL "Chile"
* contact.extension.extension[0].valueIdentifier.system = "http://regcivil.cl/Validacion/RUN"
* contact.extension.extension[0].valueIdentifier.value = "8987321-7"
* contact.extension.extension[1].url = "docProc"
* contact.extension.extension[1].valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"
* contact.extension.extension[1].valueCodeableConcept.coding.code = #152
* contact.extension.extension[1].valueCodeableConcept.coding.display = "Chile"
* contact.relationship = http://terminology.hl7.org/CodeSystem/v2-0131#N "Next-of-Kin"
* contact.name.use = #official
* contact.name.family = "Calleja"
* contact.name.family.extension.url = "http://hl7.org/fhir/StructureDefinition/humanname-mothers-family"
* contact.name.family.extension.valueString = "Morales"
* contact.name.given[0] = "Juana"
* contact.name.given[1] = "Josefa"

// Originally defined on lines 304 - 386
Instance: PacienteCl-5
InstanceOf: CorePacienteCl
Title: "Ejemplo de Recurso de paciente Nacional con contacto declarado y extensión en dirección"
Description: """Paciente ficticio nacional CI Chilena, 
     * sin sistema de validación \"http://regcivil.cl/Validacion/RUN\" ficticio , 
     * cuyo nombre se decribe mediante el oficial y uno social. 
     * La dirección tampoco es Real.
     * Se agrega al paciente un acompañante patiente
     * La dirección se declara con códigos por extensión."""
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2021-07-13T00:22:41.166Z"
* meta.profile = "https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/CorePacienteCl"
* extension.url = "https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/CodigoPaises"
* extension.valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"
* extension.valueCodeableConcept.coding.code = #152
* extension.valueCodeableConcept.coding.display = "Chile"
* identifier.use = #official
* identifier.type.extension[paises].valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"
* identifier.type.extension[paises].valueCodeableConcept.coding.code = #152
* identifier.type.extension[paises].valueCodeableConcept.coding.display = "Chile"
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier.type.coding.code = #PPN
* identifier.type.coding.display = "Passport Number"
* identifier.system = "http://regcivil.cl/Validacion/Passport"
* identifier.value = "P102145874"
* active = true
* name[NombreOficial].use = #official
* name[NombreOficial].family = "Ortega"
* name[NombreOficial].family.extension.url = "http://hl7.org/fhir/StructureDefinition/humanname-mothers-family"
* name[NombreOficial].family.extension.valueString = "Callejas"
* name[NombreOficial].given[0] = "Juan"
* name[NombreOficial].given[1] = "José"
* name[NombreSocial].use = #usual
* name[NombreSocial].given = "JuanJo"
* telecom.system = #email
* telecom.value = "juan@jo.cl"
* telecom.use = #home
* gender = #male
* birthDate = "1980-08-04"
* address.use = #home
* address.city.extension[ComunasCl].url = "https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/ComunasCl"
* address.city.extension[ComunasCl].valueCode = #13120 "Ñunoa"
* address.district.extension[ProvinciasCl].url = "https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/ProvinciasCl"
* address.district.extension[ProvinciasCl].valueCode = #131 "Santiago"
* address.state.extension[RegionesCl].url = "https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/RegionesCl"
* address.state.extension[RegionesCl].valueCode = #13 "Metropolitana de Santiago"
* address.country.extension[CodigoPaises].url = "https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/CodigoPaises"
* address.country.extension[CodigoPaises].valueCodeableConcept.coding.system = #CL "Chile"
* contact.extension.url = "https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/IdContacto"
* contact.extension.extension[0].url = "tutId"
* contact.extension.extension[0].valueIdentifier.type = https://hl7chile.cl/fhir/ig/CoreCL/CodeSystem/CSCodigoDNI#NNCHL "Chile"
* contact.extension.extension[0].valueIdentifier.system = "http://regcivil.cl/Validacion/RUN"
* contact.extension.extension[0].valueIdentifier.value = "8987321-7"
* contact.extension.extension[1].url = "docProc"
* contact.extension.extension[1].valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"
* contact.extension.extension[1].valueCodeableConcept.coding.code = #152
* contact.extension.extension[1].valueCodeableConcept.coding.display = "Chile"
* contact.relationship = http://terminology.hl7.org/CodeSystem/v2-0131#N "Next-of-Kin"
* contact.name.use = #official
* contact.name.family = "Calleja"
* contact.name.family.extension.url = "http://hl7.org/fhir/StructureDefinition/humanname-mothers-family"
* contact.name.family.extension.valueString = "Morales"
* contact.name.given[0] = "Juana"
* contact.name.given[1] = "Josefa"

// Originally defined on lines 390 - 415
Instance: AuditEventEx
InstanceOf: AuditEventCl
Title: "Ejemplo de un Audit-Event Search."
Description: "Log de Audición de una operacion Search."
Usage: #example
* type = http://terminology.hl7.org/CodeSystem/audit-event-type#rest "Restful Operation"
* subtype = http://hl7.org/fhir/restful-interaction#search "search"
* action = #E
* recorded = "2021-08-22T23:42:24Z"
* outcome = #0
* agent[0].type = http://terminology.hl7.org/CodeSystem/extra-security-role-type#humanuser "human user"
* agent[0].who.identifier.value = "95"
* agent[0].altId = "601847123"
* agent[0].name = "Grahame Grieve"
* agent[0].requestor = true
* agent[0].network.address = "Workstation1.ehr.familyclinic.com"
* agent[0].network.type = #1
* source.observer.reference = "Practitioner/3240"
* entity.what.reference = "Organization/ORG1"

// Originally defined on lines 417 - 438
Instance: BundleEx
InstanceOf: BundleCl
Title: "Ejemplo Simple de Bundle de Transacción"
Description: "Bundle de Transacción con un recurso Practitioner y un Recurso Organization"
Usage: #example
* identifier.system = "http://sistema.cl/Transacciones/"
* identifier.value = "Bundle-001"
* type = #transaction
* timestamp = "2020-09-25T00:00:00-03:00"
* entry[0].fullUrl = "Organization/ORG1"
* entry[0].request.method = #POST
* entry[0].request.url = "Organization"
* entry[1].fullUrl = "Practitioner/3020"
* entry[1].request.method = #POST
* entry[1].request.url = "Practitioner"

// Originally defined on lines 441 - 461
Instance: EspecialidadCL
InstanceOf: CoreEspecialidadCl
Title: "Ejemplo de Recurso de especialidad"
Description: "Define el Rol de un Médico durante la Operación de un paciente en Urgencia"
Usage: #example
* active = true
* practitioner.reference = "Practitioner/3240"
* practitioner.display = "Johanna Rosa Silva Reyes"
* specialty.coding.system = "https://hl7chile.cl/fhir/ig/CoreCL/CodeSystem/CSEspecialidadesDeisCL"
* specialty.coding.code = #06
* specialty.text = "Cirujano Cardiovascular"
* specialty[1].coding.system = "https://hl7chile.cl/fhir/ig/CoreCL/CodeSystem/CSEspecialidadesDeisCL"
* specialty[1].coding.code = #03
* specialty[1].text = "Médico Cardiólogo"
* specialty[2].coding.system = "https://hl7chile.cl/fhir/ig/CoreCL/CodeSystem/CSEspecialidadesDeisCL"
* specialty[2].coding.code = #30
* specialty[2].text = "Médico internista"

// Originally defined on lines 464 - 502
Instance: LocalizacionEjemploCL1
InstanceOf: CoreLocalizacionCl
Title: "Ejemplo Localización Farmacia"
Description: "Ejemplo de la localización relacionada con una Farmacia específica ubicada en la comuna de Viña del Mar"
Usage: #example
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
* hoursOfOperation.openingTime = "09:00:00"
* hoursOfOperation.openingTime = "19:00:00"

// Originally defined on lines 504 - 521
Instance: MedicamentoCl
InstanceOf: CoreMedicamentoCl
Title: "Ejemplo de comprimido Tareg - D 160"
Description: "Medicamento comprimido Tareg -D160 referemciado como medicamento en la TFC, considerando el de 25 comprimidos"
Usage: #example
* identifier[DescripcionId].use = #official
* identifier[DescripcionId].system = "http://minsal.cl/semantikos/description-id"
* identifier[DescripcionId].value = "1991971000167110"
* identifier[ConceptId].use = #official
* identifier[ConceptId].system = "http://minsal.cl/semantikos/concept-id"
* identifier[ConceptId].value = "840851000167103"
* code.text = "Tareg - D 160 / 25 comprimido recubierto (Novartis)"
* code.coding.system = "http://minsal.cl/semantikos/description-id"
* code.coding.code = #1991971000167110
* code.coding.display = "Tareg - D 160 / 25 comprimido recubierto (Novartis)"

// Originally defined on lines 527 - 540
Instance: MedicamentoCl-2
InstanceOf: CoreMedicamentoCl
Title: "Hidroclorotiazida 25 mg + Valsartán 160 mg comprimido"
Description: "Definición de Hidroclorotiazida 25 mg + Valsartán 160 mg comprimido Código de descripción = 1703591000167111 y de Cocepto = 696681000167108 según TFC"
Usage: #example
* identifier[DescripcionId].use = #official
* identifier[DescripcionId].system = "http://minsal.cl/semantikos/description-id"
* identifier[DescripcionId].value = "1703591000167111"
* identifier[ConceptId].use = #official
* identifier[ConceptId].system = "http://minsal.cl/semantikos/concept-id"
* identifier[ConceptId].value = "696681000167108"
* code.text = "Hidroclorotiazida 25 mg + Valsartán 160 mg comprimido"
* code = http://minsal.cl/semantikos/description-id#1703591000167111 "Hidroclorotiazida 25 mg + Valsartán 160 mg comprimido"

// Originally defined on lines 542 - 567
Instance: OrganizacionCl
InstanceOf: CoreOrganizacionCl
Title: "Ejemplo Organización Prestadora de Salud"
Description: "CESFAM Rio Bueno (Ficticio) con ID DEIS no real"
Usage: #example
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
* address.city = #07401
* address.district = #074
* address.state = #07
* address.country = #152

// Originally defined on lines 570 - 633
Instance: PrestadorCL
InstanceOf: CorePrestadorCl
Title: "Ejemplo de Recurso Prestador como base para un Core Nacional"
Description: "Ejemplo de un Prestador no Real con identificadores en Systemas con API\"s no disponibles"
Usage: #example
* id = "3240"
* identifier[RUN].use = #official
* identifier[RUN].value = "8336277-3"
* identifier[RUN].system = "http://api_run/run"
* identifier[RNPI].use = #secondary
* identifier[RNPI].value = "999999"
* active = true
* name.use = #official
* name.family.extension[mothers-family].valueString = "Reyes"
* name.given = "Johanna"
* name.given[1] = "Rosa"
* telecom.system = #phone
* telecom.use = #mobile
* telecom.value = "9345666"
* telecom[1].system = #email
* telecom[1].use = #work
* telecom[1].value = "DraSilva@mimail.com"
* gender = #female
* birthDate = "1974-08-12"
* address.use = #home
* address.line = "Naranjos, 22, depto 32"
* address.city = #09101
* address.district = #091
* address.state = #09
* address.country = #152
* qualification[Cert].code.coding.system = "https://api.minsal.cl/v1/catalogos/profesiones/"
* qualification[Cert].code.coding.code = #2112
* qualification[Cert].code.coding.display = "Certificado Profesional Médico Cirujano"
* qualification[Cert].code.text = "Certificado(s)"
* qualification[Esp].code.coding.system = "https://api.minsal.cl/v1/catalogos/tiposEspecialidadMedica/"
* qualification[Esp].code.coding.code = #122
* qualification[Esp].code.coding.display = "Cardiólogia"
* qualification[Esp][1].code.coding.system = "https://api.minsal.cl/v1/catalogos/tiposEspecialidadMedica/"
* qualification[Esp][1].code.coding.code = #1234
* qualification[Esp][1].code.coding.display = "Medicina interna"
* qualification[Esp].code.text = "Especialidad(es)"

// Originally defined on lines 636 - 665
Instance: EjemplValidacionProvCl
InstanceOf: ProvenanceCl
Title: "Ejemplo de la Validación de una Receta por medio del Prescriptor"
Description: "Ejemplo de una Receta en Request Group que contiene una receta, en la cual el prestador que la ha desarollado genera una validación por medio de una firma"
Usage: #example
* target.reference = "RequestGroup/RG12224"
* recorded = "2015-08-27T08:39:24+10:00"
* activity.coding.system = "http://terminology.hl7.org/CodeSystem/v3-DocumentCompletion"
* activity.coding.code = #LA
* activity.coding.display = "legally authenticated"
* agent.type.coding.system = "http://terminology.hl7.org/CodeSystem/provenance-participant-type"
* agent.type.coding.code = #author
* agent.type.coding.display = "author"
* agent.who.reference = "Practitioner/3240"
* signature.type.system = "urn:iso-astm:E1762-95:2013"
* signature.type.code = #1.2.840.10065.1.12.1.1
* signature.when = "2015-08-27T08:39:24+10:00"
* signature.who = Reference(Practitioner/3240)
* signature.sigFormat = #application/signature+xml
* signature.data = "Li4u"

// Originally defined on lines 668 - 676
Instance: example
InstanceOf: RequestGroup
Description: "Solo un ejemplo"
Usage: #example
* id = "RG12224"
* status = #draft
* intent = #plan

// Originally defined on lines 679 - 741
Instance: EncounterCL
InstanceOf: EncounterCL
Title: "Ejemplo de Recurso Encuentro"
Description: "Encuentro remoto ficticio"
Usage: #example
* status = #planned
* class.code = #VR
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.display = "Virtual"
* type.coding.code = #PR
* type.extension[type].valueCode = #PR
* type.coding.system = "https://minsal.cl/fhir/HD/CodeSystem/CSTiposEncuentroCL"
* serviceType.coding.code = #nutINTA
* serviceType.coding.system = "https://minsal.cl/fhir/HD/CodeSystem/CSCodigoServicio"
* serviceType.extension[serviceType].valueCode = #nutINTA
* reasonCode.extension[reasonCode].url = "https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/RazonNOrealizarse"
* reasonCode.extension[reasonCode].valueCode = #pierdellam
* extension[notas].valueString = "Encuentro exitoso"
* subject.reference = "Patient/11"
* participant[partPrincipal].extension[especialidad].valueCoding.system = "https://hl7chile.cl/fhir/ig/CoreCL/CodeSystem/CSEspecialidadesDeisCL"
* participant[partPrincipal].extension[especialidad].valueCoding.code = #01
* participant[partPrincipal].extension[especialidad].valueCoding.display = "Anatomía Patológica"
* participant[partPrincipal].type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
* participant[partPrincipal].type.coding.code = #PPRF
* participant[partPrincipal].individual.reference = "Practitioner/3020"
* participant[partSecundario].type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
* participant[partSecundario].type.coding.code = #SPRF
* participant[partSecundario].extension[contact].valueContactPoint.value = "jose.12@gmail.com"
* participant[partSecundario].extension[contact].valueContactPoint.system = #email
* period.start = "2022-06-23T00:00:00-03:00"
* period.end = "2022-06-23T00:50:00-03:00"
* length.value = 50
* reasonCode.text = "Consulta médica sobre nutrición de alimentos"
* diagnosis.extension[observaciones].url = "https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/ObservacionesDiagnostico"
* diagnosis.extension[observaciones].valueString = "Buena atención"
* diagnosis.condition.display = "Condition IPS"
* serviceProvider.reference = "Organization/f003"

// Originally defined on lines 744 - 801
Instance: CompositionCl-CarlosSalas
InstanceOf: DocumentoCl
Title: "Ejemplo de Recurso CompositionCl"
Description: "Composición de un documento para resumen de historia clínica"
Usage: #example
* status = #final
* type = http://loinc.org#60591-5 "Patient Summary Document"
* subject = Reference(Patient/11)
* date = "2022-07-06T14:30:00+01:00"
* author = Reference(Practitioner/3020)
* title = "Resumen IPS para Carlos Salas - 06 JUL 2022"
* section[0].title = "Diagnósticos"
* section[0].code = http://loinc.org#11450-4 "Problem list - Reported"
* section[0].text.status = #generated
* section[0].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Asma</div>"
* section[0].entry = Reference(Condition/1112)
* section[1].title = "Medicamentos"
* section[1].code = http://loinc.org#10160-0 "Hx of Medication use"
* section[1].text.status = #generated
* section[1].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Anastrozole/Cimicifuga</div>"
* section[1].entry[0] = Reference(MedicationStatement/354)
* section[2].title = "Alergias"
* section[2].code = http://loinc.org#48765-2 "Allergies and adverse reactions Document"
* section[2].text.status = #generated
* section[2].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Allergy to penicillin, high criticality, active</div>"
* section[2].entry = Reference(AllergyIntolerance/222)
* section[3].title = "Vacunas"
* section[3].code = http://loinc.org#11369-6 "Hx of Immunization"
* section[3].text.status = #generated
* section[3].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Lista de las vacunas recibidas</div>"
* section[3].entry = Reference(Immunization/999)
* section[4].title = "Signos Vitales y Mediciones Fisiológicas"
* section[4].code = http://loinc.org#8716-3 "Vital signs"
* section[4].text.status = #generated
* section[4].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Vital signs</div>"
* section[4].entry = Reference(Observation/123)

// Originally defined on lines 804 - 858
Instance: ImmunizationCL
InstanceOf: ImmunizationCL
Title: "Ejemplo de Recurso Inmunización"
Description: "Registro de inmunización ficticio"
Usage: #example
* extension.url = "https://minsal.cl/fhir/HD/StructureDefinition/NombreCampana"
* extension.valueCoding.system = "https://minsal.cl/fhir/HD/CodeSystem/CSNombreCampanaCL"
* extension.valueCoding.code = #hepatiA
* extension.valueCoding.display = "Hepatitis A"
* identifier.system = "http://sgi.gob.cl/identifier/inmunization/rni/"
* identifier.value = "136588279"
* status = #completed
* patient = Reference(Patient/11)
* occurrenceDateTime = "2022-04-07T00:00:00-04:00"
* recorded = "2021-06-24T00:00:00-04:00"
* location = Reference(Location/3333458)
* location.extension.valueCoding.code = #SSAN
* location.extension.valueCoding.system = "https://minsal.cl/fhir/HD/CodeSystem/CSCodSSalud"
* location.extension.valueCoding.display = "Servicio de Salud Antofagasta"
* location.extension.url = "https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/ServicioSalud"
* vaccineCode.extension.valueCoding.code = #hep_A
* vaccineCode.extension.valueCoding.system = "https://minsal.cl/fhir/HD/CodeSystem/CSCodigoVacunas"
* vaccineCode.extension.url = "https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/TiposVacunaRNI"
* performer.actor = Reference(Organization/f003)
* protocolApplied.doseNumberString = "1º dosis"
* lotNumber = "T3E881V"
* expirationDate = "2022-03-31"

// Originally defined on lines 864 - 873
Instance: PacienteEj
InstanceOf: Patient
Title: "Ejemplo de Recurso Paciente"
Description: "Paciente ficticio"
Usage: #example
* id = "11"
* name.given = "Yanara Salinas"
* gender = #female
* birthDate = "1990-01-02"

// Originally defined on lines 875 - 882
Instance: OrganizacionEj
InstanceOf: Organization
Title: "Ejemplo de Recurso Organización"
Description: "Organización ficticio"
Usage: #example
* id = "f003"
* name = "Hospital Nueva Aurora"

// Originally defined on lines 884 - 891
Instance: ProfesionalEj
InstanceOf: Practitioner
Title: "Ejemplo de Recurso Profesional"
Description: "Profesional ficticio"
Usage: #example
* id = "3020"
* name.given = "Fernanda Soto"

// Originally defined on lines 893 - 900
Instance: ConditionEj
InstanceOf: Condition
Title: "Ejemplo de Recurso Condition"
Description: "Condition ficticio"
Usage: #example
* id = "1112"
* subject = Reference(Patient/11)

// Originally defined on lines 902 - 912
Instance: MedicationStatementEj
InstanceOf: MedicationStatement
Title: "Ejemplo de Recurso MedicationStatement"
Description: "MedicationStatement ficticio"
Usage: #example
* id = "354"
* status = #active
* subject = Reference(Patient/11)
* medicationCodeableConcept.coding = http://snomed.info/sct#27658006
* medicationCodeableConcept.coding.display = "Product containing amoxicillin (medicinal product)"

// Originally defined on lines 914 - 923
Instance: AllergyIntoleranceEj
InstanceOf: AllergyIntolerance
Title: "Ejemplo de Recurso AllergyIntolerance"
Description: "AllergyIntolerance ficticio"
Usage: #example
* patient = Reference(Patient/11)
* id = "222"
* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical"
* clinicalStatus.coding.code = #active

// Originally defined on lines 925 - 936
Instance: ImmunizationEj
InstanceOf: Immunization
Title: "Ejemplo de Recurso Immunization"
Description: "Immunization ficticio"
Usage: #example
* status = #completed
* patient = Reference(Patient/11)
* id = "999"
* vaccineCode = #66071002
* vaccineCode.coding.system = "http://snomed.info/sct"
* occurrenceDateTime = "2022-07-06T14:30:00+01:00"

// Originally defined on lines 938 - 946
Instance: ObservationEj
InstanceOf: Observation
Title: "Ejemplo de Recurso Observation"
Description: "Observation ficticio"
Usage: #example
* status = #final
* id = "123"
* code.coding.system = "http://loinc.org#10244-2"

// Originally defined on lines 948 - 954
Instance: LocationEj
InstanceOf: Location
Title: "Ejemplo de Recurso Location"
Description: "Location ficticio"
Usage: #example
* id = "3333458"

// Originally defined on lines 957 - 971
Instance: DiagnosticoEj
InstanceOf: CoreDiagnosticoCl
Title: "Ejemplo de Un Diagnóstico de hipertensión"
Description: "Diagnóstico Confirmado de Hipertesión "
Usage: #example
* clinicalStatus = #active
* verificationStatus = #confirmed
* code.text = "Diagnóstico de Hipertensión Confirmada"
* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #38341003
* code.coding.display = "Hipertensión Arterial"
* subject.reference = "Patient/11"
* onsetDateTime = "2022-08-07"

