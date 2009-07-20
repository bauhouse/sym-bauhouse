<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="navigation">
	<ul id="menu">
		<xsl:apply-templates select="data/navigation/page[types/type = 'main']"/>
	</ul>
</xsl:template>

<xsl:template match="data/navigation/page">
	<li>
		<a href="{$root}/{@handle}/">
			<xsl:if test="@handle = 'home'">
				<xsl:attribute name="href"><xsl:value-of select="concat($root,'/')"/></xsl:attribute>
			</xsl:if>
			<xsl:if test="@handle = $root-page">
				<xsl:attribute name="class">active</xsl:attribute>
			</xsl:if>
			<xsl:value-of select="name"/>
		</a>
	</li>
</xsl:template>

<xsl:template match="data/navigation/page" mode="select-tabs">
	<li>
		<a href="{$root}/{@handle}/" id="{@handle}Tab" title="{@handle}">
			<xsl:if test="$root-page = @handle"><xsl:attribute name="class">active</xsl:attribute></xsl:if>
			<xsl:value-of select="name"/>
		</a>
	</li>
</xsl:template>

<xsl:template match="data/navigation/page/page">
	<li>
		<a href="{$root}/{../@handle}/{@handle}/">
			<xsl:if test="@handle = $current-page">
				<xsl:attribute name="class">active</xsl:attribute>
			</xsl:if>
			<xsl:value-of select="name"/>
		</a>
	</li>
</xsl:template>

</xsl:stylesheet>