<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../utilities/date-time.xsl"/>
<xsl:import href="../utilities/navigation.xsl"/>
<xsl:import href="../utilities/page-title.xsl"/>
<xsl:import href="../utilities/sections.xsl"/>
<xsl:import href="../utilities/design-portfolio.xsl"/>

<xsl:template match="data">
	<xsl:call-template name="section-image"/>
	<xsl:call-template name="section-head"/>
	<div class="content_thumbs">
		<xsl:for-each select="portfolio/entry[preview/filename != '']">
			<xsl:sort select="created" order="descending"/>
			<xsl:if test="preview != '' and position() &lt;= 28">
				<a href="{$root}/design/{media/item/@handle}/{title/@handle}/" title="{title}"><img class="preview_off" src="{$workspace}/{preview-off/@path}/{preview-off/filename}" width="107" height="107" alt="{title}" /><img class="preview_over" src="{$workspace}/{preview/@path}/{preview/filename}" alt="{fields/title}" /></a>
			</xsl:if>
		</xsl:for-each>
	</div><!-- END content_thumbs -->
</xsl:template>

</xsl:stylesheet>