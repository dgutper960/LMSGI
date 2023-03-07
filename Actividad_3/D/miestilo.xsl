<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text"/>

<xsl:template match="/">
    <xsl:for-each select="root/record">
      <xsl:sort select="date/@when" order="ascending" data-type="number"/>
        <xsl:value-of select="title"/><xsl:text>&#xA;</xsl:text>
        <xsl:value-of select="date/@when"/><xsl:text>&#xA;</xsl:text>
        <xsl:for-each select="text/p">
          <xsl:text>&#xA;</xsl:text><xsl:value-of select="."/>
        </xsl:for-each>
      </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>