<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml" encoding="UTF-8" indent="yes" />

<xsl:template match="data">
	<rss version="2.0">
		<channel>
			<title><xsl:value-of select="$website-name"/></title>
			<link><xsl:value-of select="$root"/></link>
			<description><xsl:value-of select="$website-name"/> Feed</description>
			<language>en-us</language>
			<xsl:for-each select="rss/entry">
				<item>
					<title><xsl:value-of select="fields/title"/></title>
					<link><xsl:value-of select="$root"/>/journal/<xsl:value-of select="@handle"/>/</link>
					<published><xsl:value-of select="date"/>T<xsl:value-of select="time"/></published>
					<description><xsl:value-of select="fields/body"/></description>
				</item>
			</xsl:for-each>
		</channel>
	</rss>
</xsl:template>

</xsl:stylesheet>