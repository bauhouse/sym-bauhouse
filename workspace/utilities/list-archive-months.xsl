<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="list-archive-months">
	<xsl:for-each select="/data/archive-overview/year/month">
		<li>
			<a href="{$root}/journal/archive/{../@value}/{@value}/">
				<xsl:call-template name="format-month">
					<xsl:with-param name="month" select="@value"/>
					<xsl:with-param name="format" select="'M'"/>
				</xsl:call-template>
				<xsl:text> </xsl:text>
				<xsl:call-template name="format-year">
					<xsl:with-param name="year" select="../@value"/>
					<xsl:with-param name="format" select="'Y'"/>
				</xsl:call-template>
				<span>
					<xsl:text> (</xsl:text><xsl:value-of select="count(entry)"/>)
				</span>
			</a>
		</li>
	</xsl:for-each>
</xsl:template>

</xsl:stylesheet>