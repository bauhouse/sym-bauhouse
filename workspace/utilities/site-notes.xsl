<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="site-notes/year/month/day">
	<dl class="listing">
		<dt>
			<xsl:call-template name="get-formatted-date">
				<xsl:with-param name="format-type" select="'short'"/>
				<xsl:with-param name="year" select="../../@value"/>
				<xsl:with-param name="month" select="../@value"/>
				<xsl:with-param name="day" select="@value"/>
			</xsl:call-template>
		</dt>
		<xsl:apply-templates select="entry"/>
	</dl>
</xsl:template>

<xsl:template match="site-notes/year/month/day/entry">
	<dd><xsl:copy-of select="fields/note/*"/></dd>
</xsl:template>

</xsl:stylesheet>