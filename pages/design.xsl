<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../utilities/date-time.xsl"/>
<xsl:import href="../utilities/navigation.xsl"/>
<xsl:import href="../utilities/page-title.xsl"/>
<xsl:import href="../utilities/sections.xsl"/>

<xsl:template match="data">
	<xsl:call-template name="tab-section"/>
	<xsl:call-template name="section-head"/>
	<xsl:call-template name="section-content"/>
</xsl:template>

</xsl:stylesheet>