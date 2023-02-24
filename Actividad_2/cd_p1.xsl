<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
      <body>
        <h1>Lista de CDs</h1>
            <table>
            <tr bgcolor="#884488">
                <th>Artista</th>
                <th>Título</th>
                <th>Fecha</th>
                <th>Año_Public</th>
            </tr>
            <xsl:for-each select="Lista_de_CD/CD">
            <tr>
                <td><xsl:value-of select="artista"/></td>
                <td><xsl:value-of select="titulo"/></td>
                <td><xsl:value-of select="año_public"/></td>
                <td><xsl:value-of select="sello"/></td>
            </tr>
            </xsl:for-each> 
            </table>
      </body>
    </html>
  </xsl:template>
  </xsl:stylesheet>  



    <!-- (0,75 puntos)Generar un fichero XSL (“cd_p1.xsl”)
    en el que se muestre una tabla con todos los datos de 
    los discos de música.-->
