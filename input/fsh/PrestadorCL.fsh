Profile:        PrestadorCL
Parent:         Practitioner
Id:             CorePrestadorCl
Title:          "Prestador Core-CL"
Description:    "Este PErfil fue creado para cubrir la descripción de un Prestador a nivel Nacional"


* identifier  MS

* identifier 1..2 
* identifier ^short = "Listados de Id de Prestador Habilitado"
* identifier ^definition = "Este es el listado de Identificaciones de un Prestador. El reconocimiento en Chile se hace a travez de un Número RUN"
* identifier ^comment = "Este elemento solo considera un identificador de tipo RUN" 


* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Este slice define la posibilidad de agregar una identificacion basada en RUN o basada en el id de prestador de la SuperIntendecia de Salud"
* identifier contains RUN 1..1 MS and RNPI 0..1 MS




* identifier[RUN] 1..1
* identifier[RUN] ^short = "Identificador del número RUN de Personas en Chile" 
* identifier[RUN] ^definition = "Corresponde al identificador otorgado en la Cédula de Identidad como Número RUN"
* identifier[RUN].use ^short = "este es el propósito del identificador"
* identifier[RUN].use ^definition = "Se definirá este uso siempre como ´official´ debido a que cualquier ID presentado para motivos de este perfil deb ser de este tipo"
* identifier[RUN].use = #official

* identifier[RUN].system ^short = "endPoint sobre el cual se valida el número Identificador"
* identifier[RUN].system ^definition = "Se define el el endPoint que apunta a la API que permite validar la existencia del número RUT"
* identifier[RUN].system ^comment = "Se define el el endPoint que apunta a la API que permite validar la existencia del número RUT. Por momento se usará la url = ´http://api_run/run´"
* identifier[RUN].system = "https://api.minsal.cl/v1/prestadores/individuales/verificaciones/"


* identifier[RUN].value ^short = "valor del número RUN"
* identifier[RUN].value ^definition = "Valor del identificador número RUN en la Cédula de Identidad entregada por el Registro Civil, en formato sin puntos y con guión para diferencia el dígito verificador"

* identifier[RNPI] 0..1
* identifier[RNPI] ^short = "Identificador del número de Prestador Nacional" 
* identifier[RNPI] ^definition = "Corresponde al identificador otorgado por la SuperIntendecia de  Salud a los prestadores válidos en chile"

* identifier[RNPI].system ^short = "endPoint sobre el cual se valida el número Identificador"
* identifier[RNPI].system ^definition = "Se define el el endPoint que apunta a la API que permite validar la existencia del número de identificación del Prestador de la SuperIntendencia de Salud"
* identifier[RNPI].system ^comment = "Se define el el endPoint que apunta a la API que permite validar la existencia del número RUT. Por momento se usará la url = ´https://apis.superdesalud.gob.cl/api/prestadores/registro/´"
* identifier[RNPI].system = "https://apis.superdesalud.gob.cl/api/prestadores/registro/"

* identifier[RNPI].use ^short = "este es el propósito del identificador"
* identifier[RNPI].use ^definition = "Se definirá este uso siempre como ´official´ debido a que cualquier ID presentado para motivos de este perfil deb ser de este tipo"
* identifier[RNPI].use = #official
* identifier[RNPI].value ^short = "valor del RNPI en el formato de la Super Intendecia"

 

* active MS


* name  MS 

* name.use ^short = "uso del nombre Completo del Prestador segun Norma Técnica"
* name.use ^definition = "Este es el uso que se le da al npmnre del Prestador considerando que puede o no ser oficial. Por motivos legales este uso es Oficial "
* name.use = #official  //fixed value
* name.family ^short = "1er Apellido"
* name.family ^definition = "Se define el primer apellido registrado al momento de nacer o aquel que se ha inscrito legalmente en el Registro Civil o repartición correspondiente al país de origen"
* name.family 1..1
* name.family.extension contains http://hl7.org/fhir/StructureDefinition/humanname-mothers-family named mothers-family 0..1
* name.family.extension ^short = "Extensión para 2o apellido"
* name.given 1..
 
* telecom and gender and birthDate  MS
* telecom.use ^short = "uso del contacto descrito" 
* gender 1..1
* gender ^short = "sexo de nacimiento Registrado"
* birthDate 1..1
* birthDate ^short = "Fecha de nacimiento  Registrada del prestador"



* address and address.use and address.line and address.city and address.district and address.state and address.country MS
* address.use 1..1
* address.line ^short = "Calle o avenida, numero y casa o depto"
* address.city ^short = "Campo para Comuna de residencia"
* address.city from CodComunas (required)
* address.district ^short = "Campo para Provincia de Residencia"
* address.district from CodProvincia (required)
* address.state ^short = "Campo para Provincia de Región"
* address.state from CodRegion (required)
* address.country ^short = "Campo para País de Residencia"
* address.country from ISO3166COD (required)

* qualification MS
* qualification ^short = "certificados o títulos del Prestador o Especialidad obtenida"
* qualification ^definition = "Certificados, titulos o grados que el Prestador pueda validar como obtenidos, al igual que las especialidades obtenidas"

* qualification ^slicing.discriminator.type = #value
* qualification ^slicing.discriminator.path = "code.coding.system"
* qualification ^slicing.rules = #open
* qualification ^slicing.description = "Por motivos de separacion de conceptos se ha definido un slice para los crtificados de título y otro para las especialidades del Profesional"
* qualification contains Cert 0..* MS and Esp 0..* MS

* qualification[Cert] ^short = "Especificación de los Títulos o Certificados Profesionales que tiene el Prestador"
* qualification[Cert] ^definition = "Listado de Títulos o Cetificados Profesionales que tiene el prestador. Solo se consideran aquellos que pueden ser demostrados en consulta a la casa de estudios pertinente"
* qualification[Cert] ^comment = "Este elemento deberá ser modificado en el tiempo solo se obliga el uso del elemento en la ruta qualification.code.display"

* qualification[Cert].identifier ^short = "identificador del certificado o títulos"
* qualification[Cert].identifier ^definition = "identificación de los títulos o certificados profesionales indicando procedencia y casa de estudios"
* qualification[Cert].identifier.type from TituloID (extensible) //necesito esta api o tabla o lo que sean
* qualification[Cert].identifier.type ^short = "sistema de identificacion de certificados de prestadores"
* qualification[Cert].identifier.type ^definition = "Sistema basado en la APi de RNPI correspondiente a los  certificados válidos según legislación chilena"

* qualification[Cert].identifier.value ^short = "número de id del certificado"
* qualification[Cert].identifier.value ^definition = "número de id del certificado"

* qualification[Cert].code.coding.system ^short = "El sistema sobre el cual se verificarán los tipos de certificados de los Prestadores"
* qualification[Cert].code.coding.system ^definition = "la url sobre la cual se encuentra el endPoint para el acceso a  los códigos de certificados de prestadores. El perfil especifica  ´https://api.minsal.cl/v1/catalogos/profesiones/´"
* qualification[Cert].code.coding.system = "https://api.minsal.cl/v1/catalogos/profesiones/"
* qualification[Cert].code.coding.display MS
* qualification[Cert].code.coding.display 1..1

* qualification[Cert].issuer ^short = "Casa de estudios que entrega certificado o título"
* qualification[Cert].issuer.display ^short = "Nombre casa de estudios que entrega certificado o título"
* qualification[Cert].issuer.display ^definition = "Nombre casa de estudios que entrega certificado o título válido para ejercer como prestdor. Este elemento solo dispone el nombre de esta en texto libre"

* qualification[Esp] ^short = "Especificación de las Especiaidades Profesionales que tiene el Prestador"
* qualification[Esp] ^definition = "Listado de especialidades que tiene el prestador. Solo se consideran aquellos que pueden ser demostrados por la SuperIntendecia de Salud"
* qualification[Esp] ^comment = "Este elemento deberá ser modificado en el tiempo solo se obliga el uso del elemento en la ruta qualification.code.display"

* qualification[Esp].identifier ^short = "identificador de especialidades"
* qualification[Esp].identifier ^definition = "identificación especialidades profesionales indicando procedencia y casa de estudios"

* qualification[Esp].identifier.value ^short = "número de id de especialidad"
* qualification[Esp].identifier.value ^definition = "número de id del certificado"

* qualification[Cert].code.coding.system ^short = "El sistema sobre el cual se verificarán las especialidades de los Prestadores"
* qualification[Cert].code.coding.system ^definition = "la url sobre la cual se encuentra el endPoint para el acceso a  los códigos de especialidades de prestadores. El perfil especifica  ´https://api.minsal.cl/v1/catalogos/tiposEspecialidadMedica/´"
* qualification[Esp].code.coding.system = "https://api.minsal.cl/v1/catalogos/tiposEspecialidadMedica/"
* qualification[Esp].code.coding.display MS
* qualification[Esp].code.coding.display 1..1



ValueSet:    TituloID
Title:       "Códigos de tipos de certificaciones segun la Super Intendecia de Salud"
Id:          COD-Cert-RNPI
Description: "tipos de certficados reconocibles por la Super Intendecia como válidos para ejercer en Chile"
* codes from system https://rnpi.superdesalud.gob.cl/    // es esta la API?



Instance : PrestadorCL
Title : "Ejemplo de Recurso Prestador como base para un Core Nacional"
InstanceOf : CorePrestadorCl

 
	
 
//Identificación por Cédula Chilena
* identifier[RUN].use = #official    //obligado
//* identifier[RUN].system = "https://api.minsal.cl/v1/personas/datos/basicos/run"
* identifier[RUN].value = "8336277-3" // endPoint definido por perfil

* identifier[RNPI].use = #official    //obligado
//* identifier[RNPI].system = "https://apis.superdesalud.gob.cl/api/prestadores/registro/"
* identifier[RNPI].value = "999999"  // endPoint definido por perfil


//registro de prestador activo
* active = true

//Nombre Prestador
* name.use = #official
* name.family = "Silva"
* name.family.extension[mothers-family].value[x] = "Reyes"
* name.given = "Johanna"
* name.given[1] = "Rosa"
* name.given[1] = "de los Angeles"


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
* address.city = #091001  //codigo de comuna por binding (temuco)
* address.district = #091  //codigo de privincia por binding (cautin)
* address.state = #09 //codigo por binding region (araucania)
* address.country = #152

//un titulo y una especialidad
* qualification[Cert].code.coding.code = #2112  // endPoint definido por perfil
* qualification[Cert].code.coding.display = "Certificado Profesional Médico Cirujano" //codigo de título profesional Universitario
* qualification[Esp].code.coding.code = #122  // endPoint definido por perfil
* qualification[Esp].code.coding.display = "Cardiólogia"