Profile:        PrestadorCL
Parent:         Practitioner
Id:             CorePrestadorCl
Title:          "Prestador Core-CL"
Description:    "Este Perfil fue creado para cubrir la descripción de un Prestador a nivel Nacional"


* identifier  MS

* identifier 1..2 
* identifier ^short = "Id de los prestadores"
* identifier ^definition = "Identificador para cada prestador. El identificador principal en Chile es el Registro Único Nacional (RUN), identificador que es obligatorio. Además, se puede ingresar un ID extra para cada prestador, disponibilizado por Registro Nacional de Prestadores Institucionales (NRPI), este identificador es opcional"
* identifier ^comment = "Este elemento permite ingresar dos identificadores, uno de tipo RUN y uno de tipo RNPI" 


* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Este slice permite agregar una identificacion basada RUN y/o basada en el RNPI"
* identifier contains RUN 1..1 MS and RNPI 0..1 MS

* identifier[RUN] 1..1
* identifier[RUN] ^short = "Identificador destinado a almacenar el número de RUN" 
* identifier[RUN] ^definition = "Corresponde al identificador (RUN) otorgado el Registro Civil de Chile"
* identifier[RUN].use ^short = "Se define el uso de este identificador"
* identifier[RUN].use ^definition = "Se definirá este uso siempre como ´official´ debido a que cualquier ID presentado para motivos de este perfil deb ser de este tipo"
* identifier[RUN].use = #official

* identifier[RUN].system ^short = "endPoint que valida el RUN"
* identifier[RUN].system ^definition = "Define la url del endPoint a la cual apunta la API, para validar el RUN"
* identifier[RUN].system ^comment = "Se define el el endPoint al cual debe apuntar a la API, con el fin de validar que el numero de RUN ingresado exista y que sea correcto. Por momento se usará la url = ´http://api_run/run´"
* identifier[RUN].system = #http://api_run/run


* identifier[RUN].value ^short = "Número de RUN"
* identifier[RUN].value ^definition = "Valor del RUN en la Cédula de Identidad entregada por el Registro Civil, en formato sin puntos y con guión para diferencia el dígito verificador"

* identifier[RNPI] 0..1
* identifier[RNPI] ^short = "Identificador destinado a almacenar el identificador del RNPI" 
* identifier[RNPI] ^definition = "Corresponde al identificador otorgado por la Super Intendecia de  Salud a los prestadores válidos en chile"

* identifier[RNPI].system ^short = "endPoint que valida el RNPI"
* identifier[RNPI].system ^definition = "Define la url del endPoint a la cual apunta la API, para validar el RNPI"
* identifier[RNPI].system ^comment = "Se define el endPoint al cual debe apuntar a la API, con el fin de validar que el RNPI ingresado exista y que sea correcto. Por momento se usará la url = ´https://apis.superdesalud.gob.cl/api/prestadores/registro/´"
* identifier[RNPI].system = #https://apis.superdesalud.gob.cl/api/prestadores/registro/

* identifier[RNPI].use ^short = "Se define el uso de este identificador"
* identifier[RNPI].use ^definition = "Se definirá este uso siempre como ´secondary´ debido a que cualquier RNPI sera un identificador secundario y alternativo, ya que el oficial es el RUN"
* identifier[RNPI].use = #secondary
* identifier[RNPI].value ^short = "Valor identificador NRPI"
* identifier[RNPI].value ^definition = "Valor del RUN en la Cédula de Identidad entregada por el Registro Civil, en formato sin puntos y con guión para diferencia el dígito verificador"
 

* active MS


* name  MS 

* name.use ^short = "Uso del nombre del prestador"
* name.use ^definition = "Este es el uso que se le da al nombre del Prestador considerando que puede ser nombre oficial, temporal, seudonimo, entre otros, Pero por motivos legales este uso es Oficial "
* name.use = #official  
* name.family ^short = "Primer Apellido"
* name.family ^definition = "Se debe ingresar el primer apellido, segun indica su identificacion personal"
* name.family 1..1

* name.family.extension contains http://hl7.org/fhir/StructureDefinition/humanname-mothers-family named mothers-family 0..1
* name.family.extension ^short = "Extensión para segundo apellido"
* name.given 1..
 
* telecom and gender and birthDate  MS
* telecom ^definition = "Numero de contacto telefonico"
* telecom.use ^short = "Uso del contacto descrito, de debe utilizar ´phone´ y ´email´, en caso que agreguemos los dos datos."


* gender 1..1
* gender ^short = "Sexo de nacimiento Registrado, male | female | other | unknown (requerido)"
* gender ^definition = "Sexo de nacimiento Registrado"

* birthDate 1..1
* birthDate ^short = "Fecha de nacimiento del Paciente. El formato debe ser YYYY-MM-DD"
* birthDate ^definition = "Fecha de nacimiento del Paciente. El formato debe ser YYYY-MM-DD (Ej: 1996-08-21)"

* address and address.use and address.line and address.city and address.district and address.state and address.country MS
* address.use 1..1
* address.use ^short = "Definición del tipo de domicilio home | work | temp | old (requerido)"
* address.use ^definition = "Se especifica el tipo de dirección notificada. Esto debe ser segun los códigos definidos por HL7 FHIR"
* address.line ^short = "Calle o avenida, numero y casa o depto"
* address.line ^short = "Calle o avenida, numero y casa o depto"
* address.line ^definition = "Aquí se escribe toda la dirección completa"
* address.city ^short = "Campo para Comuna de residencia"
* address.city ^definition = "Campo para Comuna de residencia. Se usa el valueSet de códigos de comunas definidos a nivel naciona. Este endPoint debe habilitarse "
* address.city from VSCodigosComunaCL (required)
* address.district ^short = "Campo para Provincia de Residencia"
* address.district ^definition = "Campo para Provincia de Residencia. Se usa el valueSet de códigos de comunas definidos a nivel naciona. Este endPoint debe habilitarse"
* address.district from VSCodigosProvinciasCL (required)
* address.state ^short = "Campo para Provincia de Región"
* address.state ^definition = "Campo para Provincia de Región. Se usa el valueSet de códigos de comunas definidos a nivel naciona. Este endPoint debe habilitarse"
* address.state from VSCodigosRegionesCL (required)
* address.country ^short = "Campo para País de Residencia"
* address.country ^definition = "Campo para País de Residencia"
* address.country from CodPaises (required)



* qualification MS
* qualification ^short = "Certificados, títulos y/o Especialidad(es) obtenidas por el Prestador"
* qualification ^definition = "Certificados, titulos y/o especialidades que el Prestador pueda validar"

* qualification ^slicing.discriminator.type = #value
* qualification ^slicing.discriminator.path = "code.text"
* qualification ^slicing.rules = #open
* qualification ^slicing.description = "Debido a que los profeisonales de la salud pueden tener titulo y ademas poseer especialidades, es que se ha realizado un slice, con el fin de poder diferenciarlos."


* qualification contains Cert 0..* MS and Esp 0..* MS

* qualification[Cert] ^short = "Especificación de los Títulos o Certificados Profesionales que tiene el Prestador"
* qualification[Cert] ^definition = "Listado de Títulos o Cetificados Profesionales que tiene el prestador. Solo se consideran aquellos que pueden ser demostrados en consulta a la casa de estudios pertinente"
/*
* qualification[Cert].identifier ^short = "Identificador del certificado o títulos"
* qualification[Cert].identifier ^definition = "identificación de los títulos o certificados profesionales indicando procedencia y casa de estudios"
* qualification[Cert].identifier.type from TituloID (extensible) //necesito esta api o tabla o lo que sean
* qualification[Cert].identifier.type ^short = "Sistema de identificacion de certificados de prestadores"
* qualification[Cert].identifier.type ^definition = "Sistema basado en la APi de RNPI correspondiente a los  certificados válidos según legislación chilena"

* qualification[Cert].identifier.value ^short = "Número de id del certificado"
* qualification[Cert].identifier.value ^definition = "Número de id del certificado"
*/
* qualification[Cert].code.coding.system ^short = "El sistema sobre el cual se verificarán los titulos o certificados de los Prestadores"
* qualification[Cert].code.coding.system ^definition = "la url sobre la cual se encuentra el endPoint para el acceso a  los códigos de titulos y/o certificados de prestadores. El perfil especifica que se debe usar la siguiente url:  ´https://api.minsal.cl/v1/catalogos/profesiones/´"
//* qualification[Cert].code.coding.system = "https://api.minsal.cl/v1/catalogos/profesiones/"

* qualification[Cert].code.coding.display MS
* qualification[Cert].code.coding.display 1..1
* qualification[Cert].code.text = #Certificado(s)
* qualification[Cert].code.coding.display ^short = "Nombre del titulo o certificado agregado"
* qualification[Cert].code.coding.display ^definition = "Nombre del titulo o certificado agregado. Agregar un poco mas de informacion acerca del item que se esta agregando."

* qualification[Cert].issuer ^short = "Organizacion que entrega el certificado o título"
* qualification[Cert].issuer.display ^short = "Nombre de la organizacion que entrega certificado o título"
* qualification[Cert].issuer.display ^definition = "Nombre de la organizacion que entrega el certificado o título válido para ejercer como prestdor. En este elemento solo se puede agregar texto libre"


//especialidades
* qualification[Esp].code.text = #Especialidad(es)
* qualification[Esp] ^short = "Especificación de la o las  especialidades que posea el prestador"
* qualification[Esp] ^definition = "Listado de especialidades que posee el prestador. Solo se consideran aquellos que pueden ser demostrados en consulta a la casa de estudios pertinente"

* qualification[Esp].identifier ^short = "Identificador de especialidades"
* qualification[Esp].identifier ^definition = "Identificación especialidades profesionales indicando procedencia y casa de estudios"

* qualification[Esp].identifier.value ^short = "Codigo de la especialidad"

* qualification[Esp].code.coding.system ^short = "El sistema sobre el cual se verificarán las especialidades de los Prestadores"
* qualification[Esp].code.coding.system ^definition = "la url sobre la cual se encuentra el endPoint para el acceso a  los códigos de especialidades de prestadores. El perfil especifica  ´https://api.minsal.cl/v1/catalogos/tiposEspecialidadMedica/´"
//* qualification[Esp].code.coding.system = #https://api.minsal.cl/v1/catalogos/tiposEspecialidadMedica/
* qualification[Esp].code.coding.display MS
* qualification[Esp].code.coding.display 1..1
* qualification[Esp].code.coding.display ^short = "Nombre de la especialidad"
* qualification[Esp].code.coding.display ^definition = "Nombre la especialidad agregada. Agregar un poco mas de informacion acerca del item que se esta agregando."



ValueSet:    TituloID
Title:       "Códigos de tipos de certificaciones segun la Super Intendecia de Salud"
Id:          COD-Cert-RNPI
Description: "tipos de certficados reconocibles por la Super Intendecia como válidos para ejercer en Chile"
//* codes from system https://rnpi.superdesalud.gob.cl




Instance : PrestadorCL
Title : "Ejemplo de Recurso Prestador como base para un Core Nacional"
InstanceOf : CorePrestadorCl

 
	
 
//Identificación por Cédula Chilena
* identifier[RUN].use = #official    //obligado
//* identifier[RUN].system = "https://api.minsal.cl/v1/personas/datos/basicos/run"
* identifier[RUN].value = "8336277-3" // endPoint definido por perfil
* identifier[RUN].system = "http://api_run/run"
* identifier[RNPI].use = #secondary    //obligado
//* identifier[RNPI].system = "https://apis.superdesalud.gob.cl/api/prestadores/registro/"
* identifier[RNPI].value = "999999"  // endPoint definido por perfil


//registro de prestador activo
* active = true

//Nombre Prestador
* name.use = #official


* name.family.extension[mothers-family].valueString = "Reyes"

* name.given = "Johanna"
* name.given[1] = "Rosa"


//dos contactos, un celular y un email

* telecom.system = #phone
* telecom.use = #mobile
* telecom.value = "9345666"

* telecom[1].system = #email
* telecom[1].use = #work
* telecom[1].value = "DraSilva@mimail.com"

//sexo registrado al nacer y fecha de nacimiento
* gender = #female
* birthDate = "1974-08-12"

// Una sola dirección
* address.use = #home
* address.line = "Naranjos, 22, depto 32"
* address.city = #09101  //codigo de comuna por binding (temuco)
* address.district = #091  //codigo de privincia por binding (cautin)
* address.state = #09 //codigo por binding region (araucania)
* address.country = #152

//un titulo y una especialidad
* qualification[Cert].code.coding.code = #2112  // endPoint definido por perfil
* qualification[Cert].code.coding.display = "Certificado Profesional Médico Cirujano" //codigo de título profesional Universitario
* qualification[Esp].code.coding.code = #122  // endPoint definido por perfil
* qualification[Esp].code.coding.display = "Cardiólogia"
* qualification[Esp][1].code.coding.code = #1234  // endPoint definido por perfil
* qualification[Esp][1].code.coding.display = "Medicina interna"