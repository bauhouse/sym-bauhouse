<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml" encoding="UTF-8" indent="yes" />

<xsl:template match="data">
	<rss version="2.0">
		<channel>
			<title><xsl:value-of select="$website-name"/></title>
			<link><xsl:value-of select="$root"/></link>
			<description><xsl:value-of select="$website-name"/> Feed</description>
			<language>en-us</language>
			<xsl:for-each select="rss/entry | resources-rss/entry">
				<xsl:sort select="date/@time" order="descending" />
				<xsl:sort select="date" order="descending" />
				<item>
					<title><xsl:value-of select="title"/></title>
					<link>
						<xsl:choose>
							<xsl:when test="../section/@handle = 'resources'">
								<xsl:value-of select="concat($root,'/',../section/@handle,'/',type/item/@handle,'/',title/@handle,'/')"/>
							</xsl:when>
							<xsl:otherwise>
								<xsl:value-of select="concat($root,'/',../section/@handle,'/',title/@handle,'/')"/>
							</xsl:otherwise>
						</xsl:choose>
					</link>
					<published><xsl:value-of select="date"/>T<xsl:value-of select="date/@time"/></published>
					<description><xsl:value-of select="description"/></description>
				</item>
			</xsl:for-each>
		</channel>
	</rss>
</xsl:template>

</xsl:stylesheet>