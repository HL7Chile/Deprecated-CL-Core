Profile:        BundleRecetaCL
Parent:         Bundle
Id:             RecetaBundleCl
Title:          "BundleCL"
Description:    "Este Perfil describe como debe ser el recurso Bundle que permite transportar una serie de recursos de PRescripción para  conformar una receta"

* identifier MS

* identifier 1..1 
* identifier ^short = "Identificador persistemte para el Bundle"
* identifier ^definition = "Un identificador persistente para el paquete que no cambiará cuando se copie un paquete de un servidor a otro."
* identifier ^comment = "La identidad persistente generalmente sólo importa para los lotes de tipo Documento, Mensaje y Colección. Normalmente no se rellena para los resultados de la búsqueda y el historial y los servidores ignoran Bundle.identifier al procesar lotes y transacciones. En el caso de los documentos, el .identifier DEBERÁ rellenarse de forma que el .identifier sea único a nivel mundial."



* type MS
* type 1..1
* type ^short = "document | message | transaction | transaction-response | batch | batch-response | history | searchset | collection, en nuestro caso se fuerza a collection"
* type ^definition = "Indica la finalidad de este paquete, es decir, cómo se va a utilizar."
* type ^comment = "Es posible utilizar un paquete para otros fines (por ejemplo, un documento puede ser aceptado como una transacción). Esto se define principalmente para que pueda haber reglas específicas para algunos de los tipos de paquetes."


* timestamp 1..1
* timestamp MS
* timestamp ^short = "Hora en la cual cual fue ensamblado el Bundle en formato YYYY-MM-DDThh:mm:ss.sss+zz:zz "
* timestamp ^definition = "La fecha/hora en que se ensambló el paquete, es decir, cuando se colocaron los recursos en el paquete"
* timestamp ^comment = "Para muchos paquetes, la marca de tiempo es igual a .meta.lastUpdated, porque no se almacenan (por ejemplo, los resultados de la búsqueda). Cuando un bundle se coloca en un almacén persistente, .meta.lastUpdated suele ser modificado por el servidor. Cuando el bundle es un mensaje, un agente de middleware que altere el mensaje (aunque no esté almacenado) DEBERÍA actualizar .meta.lastUpdated. .timestamp se utiliza para rastrear la hora original del Bundle, y DEBERÍA ser rellenado.

Utilización:

document : la fecha de creación del documento. Nota: la composición puede ser anterior al documento, o estar asociada a varios documentos. La fecha de la composición - el tiempo de autoría - puede ser anterior al tiempo de montaje del documento
mensaje : la fecha de ensamblaje del contenido del mensaje. Esta fecha no es modificada por los motores de middleware, a menos que añadan datos adicionales que cambien el significado de la hora del mensaje
historial : la fecha en que se ensambló el historial. Esta hora se utilizaría como la hora _desde para pedir las actualizaciones posteriores
searchset : la hora en que se montó el conjunto de búsqueda. Tenga en cuenta que diferentes páginas PUEDEN tener diferentes marcas de tiempo, pero no es necesario. El hecho de tener diferentes marcas de tiempo no implica que las páginas posteriores representen o incluyan los cambios realizados desde la consulta inicial
transacción | transacción-respuesta | lote | lote-respuesta | colección : no tiene un significado determinado
El valor de la marca de tiempo debe ser mayor que el de lastUpdated y otras marcas de tiempo en los recursos del paquete, y debe ser igual o anterior al de .meta.lastUpdated en el propio paquete."



* entry and entry.fullUrl MS
* entry 1..*
* entry ^short = "Se agregan los recursos que se desean adjuntar dentro del bundle en el elemento fullUrl"
* entry.fullUrl ^short = "URL absoluta del recurso a vincular"

