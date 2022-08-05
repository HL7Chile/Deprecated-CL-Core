// Originally defined on lines 1 - 73
Profile: DiagnosticoCl
Parent: Condition
Id: CoreDiagnosticoCl
Title: "Condición-Diagnóstico"
Description: "Condicion o Diagnósticos de Pacientes para Registro Clínico Electrónico"
* clinicalStatus 1..1
* clinicalStatus MS
* clinicalStatus ^short = "El estatus en el cual se encuentra la condición: active| recurrece | relapse | inactive | remission | resolved"
* clinicalStatus from http://hl7.org/fhir/ValueSet/condition-clinical (required)
* clinicalStatus ^binding.description = "Códigos requeridos por HL7-FHIR"
* clinicalStatus ^definition = "El estatus en el cual se encuentra la condición de un Paciente"
* verificationStatus ^short = "Estado de verificación de la condición o Diagnóstico"
* verificationStatus ^definition = "Estado de verificación de la condición o Diagnóstico"
* verificationStatus from http://hl7.org/fhir/ValueSet/condition-ver-status (required)
* verificationStatus ^binding.description = "unconfirmed | provisional | differential | confirmed | refuted | entered-in-error"
* subject only Reference(PacienteCl)
* subject MS
* subject.reference 1..
* subject.reference MS
* subject.identifier MS
* subject.display MS
* subject ^short = "Paciente sobre al que corresponde la condición."
* subject ^definition = "Paciente sobre al que corresponde la condición."
* subject.reference ^short = "Referencia al recurso del Paciente al cual se indica el diagnóstico o condicón"
* subject.identifier ^short = "Identificador del paciente"
* subject.display ^short = "Texto alternativo para el recurso"
* code 1..1
* code MS
* code ^definition = "Identificación de la condición, el problema o el diagnóstico o registro del \"problema ausente\" o de los \"problemas desconocidos\"."
* code ^short = "Condición de la persona en Código o no conocido"
* code ^comment = "Se agregan los códigos no conocido o no presente"
* code from VSDiagnosticosSCT (preferred)
* code ^short = "Códigos de SOMED-CT y adicionales de ausente o desconocido"
* code ^definition = "Códigos de toda la Terminología."
* code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code ^binding.extension.valueString = "DiagnosticosSCT + Ausente o Desconocido"
* code ^binding.description = "Diagósticos en SNOMED-CT. El ValueSet trae toda la terminología + Problema Ausente o Desconocido"
* code.text 1..1
* code.text MS
* code.text ^short = "Se debe al menos notificar el diagnóstico o Problema en Texto"
* code.text ^definition = "Se debe al menos notificar el diagnóstico o Problema en Texto"
* onset[x] MS
* onset[x] ^short = "Fecha para determinación Diagnóstica a definir entre fecha única o período"
* onset[x] ^definition = "Fecha o rango de fechas en que se definió el diagnóstico o se determinó la condición"
* onset[x] only dateTime or Period
* onset[x] ^type[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* onset[x] ^type[0].extension.valueBoolean = true
* onset[x] ^type[1].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* onset[x] ^type[1].extension.valueBoolean = true

