<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <body>
        <h1>Canciones Duración Selecionada</h1>
          <table border="1">
            <tr bgcolor="#a0a0ff">
                <th>Álbum</th>
                <th>Artista</th>
                <th>Canción</th>
                <th>Duración</th>
                <th>Sello</th>
                <th>Año Publicación</th>
              </tr>
              <xsl:for-each select="Lista_CDs/CD">
                <tr>
                  <td><xsl:value-of select="titulo"/></td>
                  <td><xsl:value-of select="artista"/></td>
                  <td><xsl:value-of select="title"/></td>
                  <td><xsl:value-of select="duracion"/></td>
                  <td><xsl:value-of select="sello"/></td>
                  <td><xsl:value-of select="año_public"/></td>
                  <td>
                    <td><xsl:for-each select="title">
                      <xsl:if test="@time &lt; 200">
                        <xsl:value-of select="."/>
                      <br/>
                    </xsl:if>
                    </xsl:for-each></td>
                    </td>
                </tr>
            </xsl:for-each>
          </table>
        </body>
      </html>
   </xsl:template>
</xsl:stylesheet>


<!-- Elegir una duración máxima de canción y generar un fichero XSL (“cd_p4.xsl”)
   en el que se muestre una tabla con todas las canciones que tienen una duración inferior a la elegida.-->
