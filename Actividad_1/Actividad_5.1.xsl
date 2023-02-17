<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <body>
    <h1>Mi biblioteca personal</h1>
        <table>
        <tr bgcolor="#336633">
            <th>ISBN</th>
            <th>Titulo</th>
            <th>Autor</th>
            <th>Precio</th>
        </tr>
        <xsl:for-each select="libreria/libro">
        <tr>
            <td><xsl:value-of select="isbn"/></td>
            <td><xsl:value-of select="titulo"/></td>
            <td><xsl:value-of select="autor"/></td>
            <td><xsl:value-of select="precio"/></td>
        </tr>
        </xsl:for-each>
    </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>

<!-- Sin ningun patron establecido, ordenarlos por precio-->
<!-- Insertar en el fichero XML, un nuevo archivo cuyo autor sea el mismo a uno de las ya incluidos anteriormente-->
<!-- Buscar los libros del autor anterior y comprobar que salen todos sus libros (ordenados por precio)-->
<!-- Buscar todos los libros que no son del autor anterior-->