Profile:        ProvenanceCL
Parent:         Provenance
Id:             ProvenanceCl
Title:          "Validación de la Procedencia de Recursos"
Description:    "Este Perfil describe la forma de validación respecto a la procedencia de un recurso genrado durante un acto clínico."

//Target
* target MS
* target 1..* 
* target ^short = "Recurso que se desea validar"
* target ^definition =  "Referencia los Recursos generados"
* target.reference 1..1 
* target.reference ^short = "URL absoluta del Recurso  a validar" 
* target.reference ^definition = "Una referencia a una ubicación en la que se encuentra el otro recurso. La referencia puede ser una referencia relativa, en cuyo caso es relativa a la URL base del servicio, o una URL absoluta que resuelve la ubicación donde se encuentra el recurso. La referencia puede ser específica de la versión o no. Si la referencia no es a un servidor FHIR RESTful, se debe asumir que es específica de la versión. Las referencias a fragmentos internos (que comienzan con \"#\") se refieren a recursos contenidos."
* target.reference ^comment = "El uso de URLs absolutas proporciona un enfoque estable y escalable adecuado para un contexto de nube/web, mientras que el uso de referencias relativas/lógicas proporciona un enfoque flexible adecuado para su uso cuando se comercializa a través de los límites del ecosistema cerrado.   Las URL absolutas no necesitan apuntar a un servidor FHIR RESTful, aunque es el enfoque preferido. Si la URL se ajusta a la estructura \"/[tipo]/[id]\", debe asumirse que la referencia es a un servidor FHIR RESTful."

//Registro
* recorded 1..1 MS
* recorded ^short = "Cuando se desarrollo el envío o actualización del Recurso" 
* recorded ^definition = "Instancia de tiempo en que fue notificado el cambio"

// ubicación
* location 0..1 MS
* location ^short = "Referencia o identificación de la localización de donde ocurrió la actividad"
* location ^definition = "Donde la actividad ocurrió"

//Porque
* activity 0..1 MS
* activity ^short = "Actividad que ocurrió" 
* activity ^definition = "Una actividad es algo que ocurre durante un período de tiempo y actúa sobre o con entidades; puede incluir el consumo, el procesamiento, la transformación, la modificación, la reubicación, el uso o la generación de entidades."
* activity.coding.code from http://hl7.org/fhir/ValueSet/provenance-activity-type (extensible)

//Quien envia

* agent 1..* MS
* agent ^short = "El actor que genera el recuso"
* agent ^definition = "El actor que tiene la responsabilidad en la generación del recurso"
* agent ^comment = "Puede haber más de un agente "

* agent.type 0..1
* agent.type.coding.system from http://hl7.org/fhir/ValueSet/provenance-agent-type (extensible)
* agent.type ^short = "Referencia a lo que ejecuta el actor"
* agent.type ^definition = "participacion del actor, que rol cumple"

* agent.role 0..1 
* agent.role.coding.system from http://hl7.org/fhir/ValueSet/security-role-type (example)
* agent.role ^short = "El rol especifico del agente" 
* agent.role ^definition = "La función del agente con respecto a la actividad. La función de seguridad que habilita al agente con respecto a la actividad."

* agent.who 1..1 MS
* agent.who ^short = "Quien emite el recurso"
* agent.who ^definition = "Definición mediate la id de un recurso al emisor de receta"
* agent.who.reference ^short = "Referencia al misor del recurso"
* agent.who.reference ^definition = "Recurso que indica al practitioner que genera el recurso a validar"

* signature 1..1 MS
* signature ^short = "firma del target"
* signature ^definition = "Una firma digital en la(s) Referencia(s) de destino. El firmante debe coincidir con un Provenance.agent. Se indica la finalidad de la firma."

* signature.type ^short = "Indicación de la razón por la que la entidad firmó el objeto o los objetos"
* signature.type ^definition = "Indicación del motivo por el que la entidad ha firmado este documento. Puede incluirse explícitamente como parte de la información de la firma y puede utilizarse a la hora de determinar la responsabilidad de diversas acciones relativas al documento."
* signature.type from http://hl7.org/fhir/ValueSet/signature-type (preferred)


* signature.when 1..1
* signature.when ^short = "Hora y Fecha de cuando se firmó la validacion"
* signature.when ^definition = "Hora y Fecha de cuando se firmó la validacion"

* signature.who 1..1
* signature.who ^short = "Referencia al firmante"
* signature.who ^definition = "Referencia al recurso del validador mediante la firma"

* signature.who.reference ^short = "Referencia/identificación al recurso que identifica al  firmante"
* signature.who.reference ^definition = "Referencia/identificación al recurso del validador mediante la firma"

* signature.sigFormat MS
* signature.sigFormat ^short = "Formato técnico de la firma"
* signature.sigFormat ^definition = "Un tipo mime que indica el formato técnico de la firma. Los tipos mime importantes son application/signature+xml para X ML DigSig, application/jose para JWS, e image/* para una imagen gráfica de una firma, etc"
* signature.sigFormat ^comment = "Se sugiere hacer uso de application/jose" 


* signature.data 1..1 MS
* signature.data ^short = "Contenido de la firma (XML DigSig.JWS, imagem, etc.)"
* signature.data ^definition = "La codificación base64 del contenido de la firma. Si la firma no se registra electrónicamente, este elemento estará vacío."



Instance : EjemplValidacionProvCl
Title : "Ejemplo de la Validación de una Receta por medio del Prescriptor"
Description: "Ejemplo de una Receta en Request Group que contiene una receta, en la cual el prestador que la ha desarollado genera una validación por medio de una firma" 
InstanceOf : ProvenanceCl
Usage: #example




* target.reference = "RequestGroup/RG12224"

* recorded =  2015-08-27T08:39:24+10:00

* activity.coding.system = "http://terminology.hl7.org/CodeSystem/v3-DocumentCompletion"
* activity.coding.code = #LA
* activity.coding.display = "legally authenticated"

* agent.type.coding.system = "http://terminology.hl7.org/CodeSystem/provenance-participant-type"   
* agent.type.coding.code = #author
* agent.type.coding.display = "author"
* agent.who.reference = "Practitioner/3240"

* signature.type.system = "urn:iso-astm:E1762-95:2013"
* signature.type.code = #1.2.840.10065.1.12.1.1
* signature.when = 2015-08-27T08:39:24+10:00

* signature.who = Reference(Practitioner/3240)

* signature.sigFormat = #application/signature+xml
* signature.data = "Li4u"


Instance: example
InstanceOf: RequestGroup
Description: "Solo un ejemplo"
Usage: #example

* id = "RG12224"

* status = #draft
* intent = #plan