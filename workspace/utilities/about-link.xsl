<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="p" mode="about">
	<p>
		<xsl:call-template name="about-link">
			<xsl:with-param name="input" select="text()"/>
			<xsl:with-param name="search-string" select="'Bauhouse'"/>
		</xsl:call-template>
	</p>
</xsl:template>

<xsl:template name="about-link">
	<xsl:param name="input"/>
	<xsl:param name="search-string"/>
	<xsl:param name="replace">
		<a href="{$root}/about/"><xsl:value-of select="$search-string"/></a>
	</xsl:param>
	<xsl:choose>
		<xsl:when test="$search-string and contains($input,$search-string)">
			<xsl:value-of select="substring-before($input,$search-string)"/>
			<xsl:copy-of select="$replace"/>
			<xsl:call-template name="about-link">
				<xsl:with-param name="input" select="substring-after($input,$search-string)"/>
				<xsl:with-param name="search-string" select="$search-string"/>
				<xsl:with-param name="replace" select="$replace"/>
			</xsl:call-template>
		</xsl:when>
		<xsl:otherwise>
			<xsl:value-of select="$input"/>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

</xsl:stylesheet>