Alias: $loinc = http://loinc.org

// Originally defined on lines 3 - 199
Profile: DocumentoCl
Parent: Composition
Id: DocumentoCl
Title: "DocumentoCl"
Description: "Definición de un documento para Resumen de Historia o Registro de Encuentro para Historia Clínica, basado en IPS."
* identifier 0..1
* identifier MS
* identifier ^short = "Identificador local para recurso de documeto que puede ser distinto para cada versión del mismo"
* identifier ^definition = "Identificador para el recurso que contiene documento, puede ser usado de manera local. Este idetificador es independiente de la versión del documento"
* status MS
* status ^short = "Estado, valores posibles: preliminary | final | amended | entered-in-error"
* status ^definition = "Estado del documento"
* status = #final
* type from VSTiposDocClinic (required)
* type MS
* type ^short = "Tipo de Documento según especificación de LOINC (Ej para Summarie IPS Loinc = #60591-5"
* type ^definition = "Especifica el tipo de documento al que refiere este Recurso. Si se desea ajustar a IPS debe ser un resumen con código LOINC 60591-5"
* subject 1..1
* subject only Reference(Patient)
* subject MS
* subject ^definition = "Paciente sobre el cual se ha generado este documento. Este debe ser basado en el perfil de paciente Chileno."
* subject ^short = "Paciente sobre el cual se ha generado este documento. Este debe ser basado en el perfil del paciente Chileno."
* subject.reference 1..1
* subject.reference MS
* subject.reference ^short = "Corresponde al paciente"
* encounter 0..1
* encounter only Reference(Encounter)
* encounter MS
* encounter ^definition = "Contexto en el cual se desarrolló el documento."
* encounter ^short = "Contexto del Documento."
* encounter.reference 1..1
* encounter.reference MS
* encounter.reference ^short = "Corresponde al paciente"
* encounter.display MS
* encounter.display ^short = "texto que describe el contexto del documento"
* encounter.display ^definition = "Texto descriptivo que reemplaza el no contar con un recurso a refereciar o con id de encuetro"
* encounter.identifier MS
* encounter.identifier ^short = "Identificador, en formato identifier para el encuentro"
* encounter.identifier ^definition = "Identificador, en su formato correspondiente, que reemplaza el uso de un recurso referenciado en caso de no contar con este"
* date MS
* date ^short = "Fecha en la cual se editó el documento"
* date ^definition = "Fecha de edición del documento, cuando este fue modificado por el autor"
* author 1..1
* author only Reference(Practitioner)
* author MS
* author ^short = "Quien Ha creado el documento"
* author ^definition = "Identifica al responsable de los datos ingresados al documento, en este caso será el responsable del Resumen."
* title MS
* title ^short = "Título del documento generado"
* title ^definition = "Título oficial del documento para que pueda ser legible."
* attester 0..*
* attester MS
* attester ^short = "Validadores del documento"
* attester ^definition = "Validadores del documento"
* attester.mode 1..1
* attester.mode MS
* attester.mode ^short = "Labor del Validador personal|profesional|legal|official"
* attester.mode from http://hl7.org/fhir/ValueSet/composition-attestation-mode (required)
* attester.time 0..1
* attester.time MS
* attester.time ^short = "Fecha y Hora de la validación"
* attester.time ^definition = "Fecha y Hora de la validación"
* attester.party 0..1
* attester.party MS
* attester.party ^short = "Quien validó"
* attester.party ^definition = "Quien validó"
* section 1..
* section MS
* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[0].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
* section ^short = "Sección del documento"
* section ^definition = "Sección de notificación de datos clínicos."
* section.code 1..
* section.code MS
* section.code from http://hl7.org/fhir/ValueSet/doc-section-codes (example)
* section contains
    sectionDiagnosticos 0.. and
    sectionMedicamentos 0.. and
    sectionAlergias 0.. and
    sectionObservacionEmbarazo 0.. and
    sectionObservacionSignosVitales 0..
* section[sectionDiagnosticos] 0..
* section[sectionDiagnosticos] MS
* section[sectionMedicamentos] 0..
* section[sectionMedicamentos] MS
* section[sectionAlergias] 0..
* section[sectionAlergias] MS
* section[sectionObservacionEmbarazo] 0..
* section[sectionObservacionEmbarazo] MS
* section[sectionObservacionSignosVitales] 0..
* section[sectionObservacionSignosVitales] MS
* section[sectionDiagnosticos] ^short = "Sección Diagnósticos"
* section[sectionDiagnosticos] ^definition = "Descripción de lista de diagnósticos determinados en el paciente."
* section[sectionDiagnosticos].code MS
* section[sectionDiagnosticos].code = http://loinc.org#11450-4
* section[sectionDiagnosticos].title 1..
* section[sectionDiagnosticos].title MS
* section[sectionDiagnosticos].entry 1..
* section[sectionDiagnosticos].entry MS
* section[sectionDiagnosticos].entry only Reference(Condition)
* section[sectionDiagnosticos].entry ^slicing.discriminator[0].type = #profile
* section[sectionDiagnosticos].entry ^slicing.discriminator[0].path = "resolve()"
* section[sectionDiagnosticos].entry ^slicing.rules = #open
* section[sectionDiagnosticos].entry ^short = "Diagnósticos conocidos actualmente de relevancia para determinaciones clínicas en el paciente."
* section[sectionMedicamentos] ^short = "Sección Medicamentos"
* section[sectionMedicamentos] ^definition = "Descripción de lista de medicamentos activos, consumidos o pendientes del paciente."
* section[sectionMedicamentos].code MS
* section[sectionMedicamentos].code = http://loinc.org#10160-0
* section[sectionMedicamentos].title 1..
* section[sectionMedicamentos].title MS
* section[sectionMedicamentos].entry 1..
* section[sectionMedicamentos].entry MS
* section[sectionMedicamentos].entry only Reference(MedicationStatement)
* section[sectionMedicamentos].entry ^slicing.discriminator[0].type = #profile
* section[sectionMedicamentos].entry ^slicing.discriminator[0].path = "resolve()"
* section[sectionMedicamentos].entry ^slicing.rules = #open
* section[sectionMedicamentos].entry ^short = "Referencia al Medicamento Prescrito al paciente."
* section[sectionAlergias] ^short = "Sección Alergias y Reacciones Adversas"
* section[sectionAlergias] ^definition = "Descripción de lista de Alergias y Eventos Adversos del Paciente, su grado de criticidad."
* section[sectionAlergias].code MS
* section[sectionAlergias].code = http://loinc.org#48765-2
* section[sectionAlergias].title 1..
* section[sectionAlergias].title MS
* section[sectionAlergias].entry 1..
* section[sectionAlergias].entry MS
* section[sectionAlergias].entry only Reference(AllergyIntolerance)
* section[sectionAlergias].entry ^slicing.discriminator[0].type = #profile
* section[sectionAlergias].entry ^slicing.discriminator[0].path = "resolve()"
* section[sectionAlergias].entry ^slicing.rules = #open
* section[sectionAlergias].entry ^short = "Alergias e Intolerancia descrita"
* section[sectionObservacionEmbarazo] ^short = "Sección Antecedentes de Embarazo"
* section[sectionObservacionEmbarazo] ^definition = "Descripción de las condiciones clínicas de los embarazos."
* section[sectionObservacionEmbarazo].code MS
* section[sectionObservacionEmbarazo].code = http://loinc.org#10162-6
* section[sectionObservacionEmbarazo].title 1..
* section[sectionObservacionEmbarazo].title MS
* section[sectionObservacionEmbarazo].entry 1..
* section[sectionObservacionEmbarazo].entry MS
* section[sectionObservacionEmbarazo].entry only Reference(Observation)
* section[sectionObservacionEmbarazo].entry ^slicing.discriminator[0].type = #profile
* section[sectionObservacionEmbarazo].entry ^slicing.discriminator[0].path = "resolve()"
* section[sectionObservacionEmbarazo].entry ^slicing.rules = #open
* section[sectionObservacionEmbarazo].entry ^short = "Descripción del antecedente de embarzo"
* section[sectionObservacionSignosVitales] ^short = "Sección de Signos Vitales Medidos"
* section[sectionObservacionSignosVitales] ^definition = "Descripción de las mediciones fisiológicas hechas al paciente"
* section[sectionObservacionSignosVitales].code MS
* section[sectionObservacionSignosVitales].code = http://loinc.org#8716-3
* section[sectionObservacionSignosVitales].title 1..
* section[sectionObservacionSignosVitales].title MS
* section[sectionObservacionSignosVitales].entry 1..
* section[sectionObservacionSignosVitales].entry MS
* section[sectionObservacionSignosVitales].entry only Reference(Observation)
* section[sectionObservacionSignosVitales].entry ^slicing.discriminator[0].type = #profile
* section[sectionObservacionSignosVitales].entry ^slicing.discriminator[0].path = "resolve()"
* section[sectionObservacionSignosVitales].entry ^slicing.rules = #open
* section[sectionObservacionSignosVitales].entry ^short = "Descripción del los signos vitales y mediciones desarrolladas"

