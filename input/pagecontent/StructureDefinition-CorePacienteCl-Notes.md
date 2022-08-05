#### Notas de Implementación
<br>

Se describe abajo un resumen de las interacciones de un Server RESTful FHIR con este perfil, como lo son los parámetors de búsqueda y el soporte para este perfil de uso nacional.
<br>

#### Search Parameters Mandatorios
<br>

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-ped4{background-color:#34cdf9;border-color:inherit;text-align:center;vertical-align:top}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
</style>
<table class="tg" style="undefined;table-layout: fixed; width: 807px">
<colgroup>
<col style="width: 89px">
<col style="width: 173px">
<col style="width: 271px">
<col style="width: 274px">
</colgroup>
<thead>
  <tr>
    <th class="tg-ped4">Elemento</th>
    <th class="tg-ped4">Nota</th>
    <th class="tg-ped4">Search Param</th>
    <th class="tg-ped4">Ejemplo</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0pky">id</td>
    <td class="tg-0pky"><span style="font-weight:normal">Se debe soportar búsqueda sobre el id de recurso</span></td>
    <td class="tg-0pky"><span style="font-weight:normal">GET [base]/Patient[id]</span></td>
    <td class="tg-0pky">GET [base]/Patient/1032702<br>GET [base]/Patient?_id=1032702</td>
  </tr>
  <tr>
    <td class="tg-0pky">identification</td>
    <td class="tg-0pky">Se debe poder buscar paciente por medio del identificador</td>
    <td class="tg-0pky">GET [base]/Patient?identifier= [value]</td>
    <td class="tg-0pky">GET [base]/Patient?identifier=19222444-1</td>
  </tr>
  <tr>
    <td class="tg-0pky">name</td>
    <td class="tg-0pky">Se debe poder buscar pacientes por nombre, lo que aplica a cualquier elemento en la ruta</td>
    <td class="tg-0pky">GET [base]/Patient?name=[string]<br>GET [base]/Patient?name.family=[string]</td>
    <td class="tg-0pky">GET [base]/Patient?name=Ordenes<br>GET [base]/Patient?name.family=Ordenes</td>
  </tr>
</tbody>
</table>