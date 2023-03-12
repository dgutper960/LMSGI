<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text"/>

<xsl:template match="/">
<xsl:for-each select="root/record">
<xsl:text>[</xsl:text><xsl:value-of select="id"/><xsl:text>]</xsl:text><xsl:text>&#xA;</xsl:text>
    <xsl:value-of select="title"/><xsl:text>&#xA;</xsl:text>
    <xsl:value-of select="city"/><xsl:text>&#xA;</xsl:text>
    <xsl:value-of select="province"/><xsl:text>&#xA;</xsl:text>
    <xsl:value-of select="country"/><xsl:text>&#xA;</xsl:text>
    <xsl:value-of select="date/@when"/><xsl:text>&#xA;</xsl:text>
        <xsl:for-each select="date">
            <xsl:value-of select="day"/><xsl:text>/</xsl:text>
            <xsl:value-of select="month"/><xsl:text>/</xsl:text>
            <xsl:value-of select="year"/><xsl:text>&#xA;</xsl:text>
        </xsl:for-each>
</xsl:for-each>
  </xsl:template>

</xsl:stylesheet>
