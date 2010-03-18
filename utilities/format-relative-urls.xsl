<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- Default HTML Manipulation. Do not change these -->
<xsl:template match="*" mode="html">
	<xsl:element name="{name()}">
		<xsl:apply-templates select="* | @* | text()" mode="html"/>
	</xsl:element>
</xsl:template>
<xsl:template match="@*" mode="html">
	<xsl:attribute name="{name()}">
		<xsl:value-of select="."/>
	</xsl:attribute>
</xsl:template>



<!-- Format Relative URLs -->
<xsl:template match="@href | @src" mode="html">
    <xsl:attribute name="{name()}">
        <xsl:choose>
            <xsl:when test="contains(.,'://')"><xsl:value-of select="." /></xsl:when>
            <xsl:when test="starts-with(.,'/')"><xsl:value-of select="concat($root,substring(.,1))" /></xsl:when>
            <xsl:when test="starts-with(.,'~/')"><xsl:value-of select="concat($root,substring(.,2))" /></xsl:when>
            <xsl:otherwise><xsl:value-of select="concat($root,'/',$current-page,'/',.)" /></xsl:otherwise>
        </xsl:choose>
    </xsl:attribute>
</xsl:template>

</xsl:stylesheet>