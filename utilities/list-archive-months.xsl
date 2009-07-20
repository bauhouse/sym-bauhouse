<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="list-archive-months">
	<xsl:for-each select="/data/archive-overview/year/month[@entry-count != '0']">
		<li><a href="{$root}/journal/archive/{../@value}/{@value}/">
			<xsl:call-template name="get-formatted-month">
				<xsl:with-param name="month" select="@value"/>
			</xsl:call-template>
			<xsl:text> </xsl:text>
			<xsl:call-template name="get-formatted-year">
				<xsl:with-param name="year" select="../@value"/>
			</xsl:call-template>
			<span>
			<xsl:text> (</xsl:text><xsl:value-of select="@entry-count"/>)
			</span>
		</a></li>
	</xsl:for-each>
</xsl:template>

</xsl:stylesheet>