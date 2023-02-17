<?xml version="1.0" encoding="ISO-8859-1"?>
<!-- Declaración xml -->

<!-- Identificación del fichero XSL y es espacio de nombres en el que se basa -->
<!-- xml-stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" --> <!--> Ejemplo comentado para que no de error por no validar con otro archivo -->


<!-- Otra opción a lo anterior -->
<!-- xsl:transform version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" --> <!--> Ejemplo comentado para que no de error por no validar con otro archivo -->

<!-- PLANTILLA Etiquete que permite definir una plantilla dentro del XSL, TODO ENTRE LAS SIG ETIQUETAS: -->
<!-- xsl:template match="/">
<AQUÍ LA>
<PLANTILLA>
</xsl:template -->


<!-- FOR EACH LA SIG ETIQUETA PERMITE QUE SE RECORRAN LOS ELEMENTOS -->
<!-- xsl:for-each select="libreria/libro">

</xsl:for-each -->

<!-- XSL:SORT ordenar los elementos por nombre, título, precio, etc. -->
<!-- sxl:sort select="tiulo" -->

<!-- sxl:sort select="precio" -->



<!-- Si por ejemplo todos los libros del autor "Kenny Erleben"-->
<!-- xsl:for-each select="librería[autor='Kenny Erleben']"-->
<!-- /xsl:for-each -->

<!-- Para extraer todos los libros QUE NO SEAN "Kenny Erleben", ordenado por autor -->
<!-- xsl:for-each select="librería[autor!='Kenny Erleben']"-->
<!-- xsl:sort select="autor"-->
<!-- /xsl:for-each -->