<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../utilities/date-time.xsl"/>
<xsl:import href="../utilities/navigation.xsl"/>
<xsl:import href="../utilities/page-title.xsl"/>
<xsl:import href="../utilities/design-portfolio.xsl"/>

<xsl:template match="data">

<div id="section">
<div id="sectionimg"><p>The elementary forms: sphere, cone and cube.</p>
</div><!-- END sectionimg -->
</div><!-- END section -->

<div id="sectionhead"><h2>Recent Projects</h2></div>

<div id="contentthumbs">

<xsl:for-each select="portfolio/entry">
<xsl:sort select="fields/created" order="descending"/>
<xsl:if test="fields/preview != '' and position() &lt;=7">
<a href="{$root}/design/{fields/media/@handle}/{@handle}/" title="{fields/title}"><img class="preview_off" src="{$root}/{fields/preview-off/item/path}" width="107" height="107" alt="{fields/title}" /><img class="preview_over" src="{$root}/{fields/preview/item/path}" alt="{fields/title}" /></a>
</xsl:if>
</xsl:for-each>

</div><!-- END contentthumbs -->

</xsl:template>

</xsl:stylesheet>