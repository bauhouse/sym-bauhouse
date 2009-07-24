<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/make-handle.xsl"/>

<xsl:template name="resource-title-link">
	<xsl:param name="resource-type">
		<xsl:value-of select="type"/>
	</xsl:param>
	<xsl:param name="type">
		<xsl:call-template name="make-handle">
			<xsl:with-param name="value">
				<xsl:value-of select="$resource-type"/>
			</xsl:with-param>
		</xsl:call-template>
	</xsl:param>
	<a href="{$root}/{$current-page}/{$type}/{title/@handle}/"><xsl:value-of select="title"/></a>
</xsl:template>


<xsl:template name="resource-readmore-link">
	<xsl:param name="resource-type">
		<xsl:value-of select="type"/>
	</xsl:param>
	<xsl:param name="type">
		<xsl:call-template name="make-handle">
			<xsl:with-param name="value">
				<xsl:value-of select="$resource-type"/>
			</xsl:with-param>
		</xsl:call-template>
	</xsl:param>
	<a href="{$root}/{$current-page}/{$type}/{title/@handle}/"
	title="Read the full entry: {title}">Read More</a>
</xsl:template>

</xsl:stylesheet>