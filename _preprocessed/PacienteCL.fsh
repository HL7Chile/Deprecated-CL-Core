// Originally defined on lines 1 - 205
Profile: PacienteCl
Parent: Patient
Id: CorePacienteCl
Title: "PacienteCl"
Description: "Este Perfil ha sido desarrollado para cubrir las necesidades del Caso de Uso de Receta Electrónica. Sin embargo, se ha modelado con el fin de cubrir las necesidades nacionales de un Recurso Paciente para un Historial Clínico Nacional"
* identifier MS
* identifier.use MS
* identifier.type MS
* identifier.type.coding MS
* identifier.type.coding.system MS
* identifier.type.coding.code MS
* extension contains PaisOrigenNacionalidadCl named nacionalidad 0..
* extension[nacionalidad] 0..1
* extension[nacionalidad] MS
* extension ^short = "Extensión de Nacionalidad para pacientes extranjeros"
* extension ^definition = "Para hacer uso de esta extensión se debe agregar el path: extension.url = \"nacionalidad\""
* identifier MS
* identifier.use MS
* identifier.type MS
* identifier.extension MS
* identifier ^short = "Listados de Id de Paciente. De poseer una CI con RUN vigente, este DEBE ser ingresado"
* identifier ^definition = "Este es el listado de Identificaciones de un paciente. Se procura como R2 el RUN, pero en caso de no existir ese identificador se debe ocupar otro nacional u otro otorgado por país extranjero"
* identifier ^comment = "En caso de que el paciente posea una CI con número RUN válido, este debe ser ingresado como identificador, independiente de que tenga otros identificadores, los cuales también pueden ser ingresados. La identificación implica el ingreso del tipo de documento, el país de origen de ese documento y ev valor del identificador"
* identifier 1..*
* identifier.use ^short = "usual | official | temp | secondary | old (If known)"
* identifier.use ^definition = "De contar el Paciente con una Cédula de Identidad Nacional, se sugiere el uso de esta como identificador"
* identifier.use ^comment = "Se definirá como official pues en una primera etapa solo se considerarán los identidicadores en esa categoría. Para una segunda etapa se abrirá este elemento para cualquier clase de identificador"
* identifier.type ^short = "Tipo de documento de Id (Extensible)"
* identifier.type ^definition = "Se define como tipo de documento de Id, aquel definido en el Sistema de Codificación V2-0203 de Hl7. Este sistema es extensible. Para pacientes sin documeto local deben especificar el de origen. Pacientes sin Id, deben usar el código MR = Local Medical Record, es decir numero del registro clínico abierto en el establecimiento"
* identifier.type ^comment = "De haber RUN, este se debe usar. De haber Run temporal, se debe usar ese identificador. Pacientes sin identificador Chileno deben usar su CI o Pasaporte de origen. Pacientes sin identificación se debe registrar con el numero de registro clínico generado en el recinto de salud"
* identifier.type from VSTiposDocumentos (required)
* identifier.type ^binding.description = "Value Set de Tipos de Documentos y CI Nacionales"
* identifier.type.coding.system ^short = "Sistema de identificación de tipos de documentos"
* identifier.type.coding.system ^definition = "Sistema mediante el cual se obtienen los códigos para un determinado tipo de documento"
* identifier.type.coding.system ^comment = "En la URL del sistema se describe el set de códigos. Por ejemplo si se desea usar Cédula de identidad el código es NNxxx en donde xxx corresponde al identificador del país según la norma iso3166-1-N. Dado lo anterior si fuera Chile, el tipo de documento sería NNCL. En el Caso de Usar un Pasaporte este no requiere identificar país de origen dado que este es un elemento adicional, por lo que independiente del país el código será PPT según el VS indicado"
* identifier.type.coding.code ^short = "Código de Tipo de Documento"
* identifier.type.coding.code ^definition = "Código de Tipo de Documento"
* identifier.type.coding.display MS
* identifier.type.coding.display ^short = "Glosa del Código Documento"
* identifier.type.coding.display ^definition = "Glosa del Código Documento"
* identifier.type.extension ^short = "País de Origen del Documento de Id"
* identifier.type.extension ^definition = "Se usa esta extensión para agregarle al tipo de documento el país de origen de este"
* identifier.type.extension contains PaisOrigenNacionalidadCl named paises 0..
* identifier.type.extension[paises] 1..1
* identifier.type.extension[paises] MS
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "use"
* name ^slicing.rules = #open
* name ^slicing.description = "Este slice se genera para diferenciar el nombre registrado Versus el nombre social"
* name contains
    NombreOficial 0.. and
    NombreSocial 0..
* name[NombreOficial] 1..1
* name[NombreOficial] MS
* name[NombreSocial] 0..1
* name[NombreSocial] MS
* identifier.use ^definition = "Se definirá este uso siempre como \"official\" debido a que cualquier ID presentado para motivos de este perfil deb ser de este tipo"
* name ^short = "Nombres y Apellidos del Paciente considerando, según el caso: 1er Nombre, Nombres, 1er Apellido y 2o Apellido"
* name ^definition = "Nombre del Paciente considerando, según el caso: 1er Nombre, Nombres, 1er Apellido y 2o Apellido"
* name[NombreOficial] ^short = "Determinación del nombre registrado oficialmente del Paciente"
* name[NombreOficial] ^definition = "Determinación del nombre registrado oficialmente del Paciente"
* name[NombreOficial].use = #official
* name[NombreOficial].use MS
* name[NombreOficial].use ^short = "uso del nombre del paciente"
* name[NombreOficial].use ^definition = "este slice corresponde al nombre registrado al momento de nacer, por lo que se fuerza el valor \"official\""
* name[NombreOficial].use ^comment = "Para ser considerado como el slice determinado para el uso de nombre completo, el use DEBE ser de valor de código \"official\""
* name[NombreOficial].family ^short = "1er Apellido"
* name[NombreOficial].family ^definition = "Se define el primer apellido registrado al momento de nacer o aquel que se ha inscrito legalmente en el Registro Civil"
* name[NombreOficial].family 1..1
* name[NombreOficial].family MS
* name[NombreOficial].family.extension contains http://hl7.org/fhir/StructureDefinition/humanname-mothers-family named mothers-family 0..
* name[NombreOficial].family.extension[mothers-family] 0..1
* name[NombreOficial].family.extension[mothers-family] MS
* name[NombreOficial].family.extension ^short = "Extensión para 2o apellido"
* name[NombreOficial].family.extension ^definition = "Extensión para la declaracion de un segundo apellido"
* name[NombreOficial].given 1..
* name[NombreOficial].given MS
* name[NombreOficial].given ^short = "Primer nombre y nombres del Paciente"
* name[NombreOficial].given ^definition = "Todos los nombres de los pacientes no necesariamente solo el Primer Nombre"
* name[NombreSocial] ^short = "Nombre con el cual se identifica al paciente sin ser este oficial. Se especifica slo en el uso del nombre"
* name[NombreSocial] ^definition = "Nombre con el cual se identifica al paciente sin ser este oficial. Se especifica slo en el uso del nombre"
* name[NombreSocial] ^short = "nombre recurrente que usa el paciente"
* name[NombreSocial].use = #usual
* name[NombreSocial].use MS
* name[NombreSocial].use ^short = "uso que se le da al nombre"
* name[NombreSocial].use ^definition = "Este uso especifico se enfoca a la definición de un nombre social. Es por esta razón que el uso se fuerza a usual"
* name[NombreSocial].use ^comment = "Para ser considerado como el slice determinado para el uso de nombre social, el use DEBE ser de valor de código \"usual\""
* name[NombreSocial].text 0..0
* name[NombreSocial].family 0..0
* name[NombreSocial].given 1..*
* name[NombreSocial].given MS
* name[NombreSocial].given ^short = "Nombre Social"
* name[NombreSocial].given ^definition = "Nombre Social"
* name[NombreSocial].prefix 0..0
* name[NombreSocial].suffix 0..0
* name[NombreSocial].period 0..0
* telecom MS
* telecom.system MS
* telecom.value MS
* telecom.use MS
* gender MS
* birthDate MS
* telecom ^short = "Detalles de contacto del Paciente"
* telecom ^definition = "Detalles del contacto de un paciente comunmente el o los mas usados (Ej: Teléfono fijo, móvil, email, etc.)"
* telecom.use ^short = "home | work | temp | old | mobile"
* telecom.use ^definition = "Propósito para el contacto que se ha definido"
* telecom.use from http://hl7.org/fhir/ValueSet/contact-point-use (required)
* telecom.system ^short = "phone | fax | email | pager | url | sms | other"
* telecom.system ^definition = "Forma de telecomunicación para el punto de contacto: qué sistema de comunicación se requiere para hacer uso del contacto."
* telecom.system from http://hl7.org/fhir/ValueSet/contact-point-system (required)
* telecom.system ^binding.description = "Tipo de contacto para HL7 FHIR"
* telecom.value ^short = "Dato del contato del paciente descrito"
* telecom.value ^definition = "Valor del contacto como por ejemplo el numero de telefono fijo o de móvil o el email del Paciente"
* gender 1..1
* gender ^short = "Sexo de nacimiento Registrado, male | female | other | unknown (requerido)"
* gender ^definition = "Sexo de nacimiento Registrado"
* birthDate 1..1
* birthDate ^short = "Fecha de nacimiento del Paciente. El formato debe ser YYYY-MM-DD"
* birthDate ^definition = "Fecha de nacimiento del Paciente. El formato debe ser YYYY-MM-DD (Ej: 1996-08-21)"
* address only Address or ClAddress
* address MS
* contact MS
* contact.relationship.coding MS
* contact.relationship.coding.code MS
* contact.relationship.coding.system MS
* contact.relationship.coding.display MS
* contact ^short = "Contacto, tutor legal o representante del Paciente"
* contact ^definition = "Contacto, tutor legal o representante del Paciente"
* contact.extension contains IdentificacionContactoCl named IdContacto 0..
* contact.extension[IdContacto] 1..*
* contact.extension[IdContacto] MS
* contact.extension[IdContacto] 1..*
* contact.extension[IdContacto] MS
* contact.extension[IdContacto] ^short = "Identificación del Contacto"
* contact.extension[IdContacto] ^definition = "Extensión para declarar identificación del contacto y la procedencia de esta"
* contact.relationship 1..1
* contact.relationship MS
* contact.relationship ^short = "Relación entre el contacto y el paciente"
* contact.relationship ^short = "Relación legal o de paretezco entre el contacto y el paciente"
* contact.relationship from http://hl7.org/fhir/ValueSet/patient-contactrelationship (required)
* contact.relationship ^binding.description = "VS FHIR para relación del contacto con el Paciente"
* contact.relationship.coding 1..1
* contact.relationship.coding.code 1..1
* contact.relationship.coding.system 1..1
* contact.relationship.coding.display 0..1
* contact.name 1..1
* contact.name MS
* contact.name ^short = "Nombre del Contacto"
* contact.name ^definition = "Nombre del contacto asociado al paciente"
* contact.name.use MS
* contact.name.use = #official
* contact.name.use ^short = "uso del nombre del paciente"
* contact.name.use ^definition = "Nombre registrado oficialmente en el Registro Civil"
* contact.name.use ^comment = "El use DEBE ser de valor de código ´official´"
* contact.name.family ^short = "1er Apellido"
* contact.name.family ^definition = "Se define el primer apellido registrado al momento de nacer o aquel que se ha inscrito legalmente en el Registro Civil"
* contact.name.family 1..1
* contact.name.family MS
* contact.name.family.extension contains http://hl7.org/fhir/StructureDefinition/humanname-mothers-family named mothers-family 0..
* contact.name.family.extension[mothers-family] 0..1
* contact.name.family.extension[mothers-family] MS
* contact.name.family.extension 1..1
* contact.name.family.extension MS
* contact.name.family.extension ^short = "Extensión para 2o apellido"
* contact.name.family.extension ^definition = "Extensión para la declaracion de un segundo apellido"
* contact.name.given 1..
* contact.name.given MS
* contact.name.given ^short = "Primer nombre y nombres del Contacto o Representante Legal"
* contact.name.given ^definition = "Todos los nombres  no necesariamente solo el Primero"
* communication 0..*
* communication MS
* communication ^short = "Lenguaje en el cual se puede comunicar con el paciente"
* communication ^definition = "Lenguaje en el cual se puede comunicar con el paciente"
* communication.language MS
* communication.language ^short = "Lenguaje específico"
* communication.language ^definition = "Código del lenguaje específico"
* communication.language from VSCodigoslenguaje (required)
* communication.language ^binding.description = "Value Set de HL7, # de elementos es muy grande para poder visualizarlo"
* communication.language.coding 1..1
* communication.language.coding MS
* communication.language.coding.code 1..1
* communication.language.coding.system 1..1
* communication.language.coding.display 0..1
* communication.language.coding.code MS
* communication.language.coding.system MS
* communication.language.coding.display MS
* generalPractitioner 0..*
* generalPractitioner MS
* generalPractitioner only Reference(Organization or Practitioner)
* generalPractitioner ^short = "Proveedor de Salud designado como principal"
* generalPractitioner ^definition = "Proveedor de Salud designado como principal"
* generalPractitioner.reference MS
* generalPractitioner.reference ..1
* generalPractitioner.reference ^short = "URI de referencia a la Organización o a un Médico"
* generalPractitioner.reference ^definition = "URI de referencia a la Organización o a un Médico"
* generalPractitioner.display MS
* generalPractitioner.display ^short = "Texto alternativo a la referencia"
* generalPractitioner.display ^definition = "Texto alternativo a la referencia"

