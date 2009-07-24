<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="page-title">
	<xsl:value-of select="$website-name"/>
	<xsl:text> - </xsl:text>
	<xsl:value-of select="$page-title"/>
	<xsl:if test="$current-page = 'entries'">
		<xsl:if test="$entry != ''">
			<xsl:text> - </xsl:text>
			<xsl:value-of select="data/entries/entry/fields/title"/>
		</xsl:if>
	</xsl:if>
</xsl:template>

</xsl:stylesheet>