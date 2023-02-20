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
            <th>numPaginas</th>
        </tr>
        <xsl:for-each select="libreria/libro">
        <tr>
            <xsl:choose>
              <xsl:when test="numPaginas &gt; 150">
                <td bgcolor="#ff0000">
                  <xsl:value-of select="numPaginas"/>
                </td>
              </xsl:when>
            </xsl:choose> 
            <td><xsl:value-of select="isbn"/></td>
            <td><xsl:value-of select="titulo"/></td>
            <td><xsl:value-of select="autor"/></td>
            <td><xsl:value-of select="precio"/></td>
            <td><xsl:value-of select="numPaginas"/></td>
        </tr>
        </xsl:for-each>
    </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>

<!-- Elemento numPag se muestra en rojo con + de 150pag -->