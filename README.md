# FHIR_Core_CH
Es el Core Nacional de FHIR en una versión Preliminar 0.2
Este Repositorio se estructura con el contenido dela carpeta que se genera desde Shorthand Sushi, considerando el template, los input, el output de la versión y los archivos básicos para compilar y publicas
Los perfiles generados corresponden a Paciente_CH, Prestador_CH, Medicamento_CH, Organización_CH, Localizacion_CH y Especialidad_CH

# Desarrollo de la Guía
La Guía ha sido desarrollada en **sushi-shothand** y llevada al formato correspondiente mediante el uso de **publisher**. Para esto se requiere pasos de instalación de algunas herramientas

## Instalación
### Paso 1: Instalación de Node.js
Para esto debe descargar https://nodejs.org/ para la versión LTS. Se debe ejecutar el instalable para que este despliegue las configuraciones básicas.

Para asegurar que quedo bien instalado ejecute desde *línea de comando* lo siguiente, lo que devolverá como resultado el núnero de versión

~~~
$ node --version
$ npm --version
~~~

### Paso 2: Instalar Sushi
Desde *línea de comando*

~~~
$ npm install -g fsh-sushi
~~~

Verificar la instalación ejecutando

~~~
$ sushi -h
~~~
### Pasos Adicionales
La instalación de **Node.js** y **sushi** puede implicar la instalación de herramientas para el uso posterior de **publisher**. En particular se puede requerir la instalación de  **GEM-Ruby** https://rubygems.org/pages/download, para de esta forma poder dejar habilitado **Jekyll** https://jekyllrb.com/docs/installation/

También en algunos casos se puede tener problemas en la ejecución de **publisher** vía comando java debido a permisos, por lo que se deben configurar las *variables de ambiente* de **JAVA_HOME** and **PATH**.

## Ejecutando Sushi
Para ejecutar sushi y complilar la GI se debe ejecutar desde el directorio raíz del proyecto

~~~
$ sushi .
~~~

## Ejecutando Publisher
Para publicar la GI en el template por defecto o en que se configure, desde el directorio raiz del proyecto se debe ejecutar:

~~~
$ _genonce
~~~

SUSHI utiliza el contenido de un **package.json** y un directorio **ig-data** creados por el usuario para generar las entradas del **IG Publisher**. Para un IG básico sin personalización, simplemente cree una carpeta **ig-data** vacía. Para un IG personalizado, cree y rellene la carpeta **ig-data** con contenido y configuraciones personalizadas.

## Más Información
Para mas información puede navegar por las páginas:

* http://hl7.org/fhir/uv/shorthand/2020May/sushi.html
* http://hl7.org/fhir/uv/shorthand/2020May/tutorial.html
* 
