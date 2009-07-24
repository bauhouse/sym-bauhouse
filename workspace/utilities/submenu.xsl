<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/common.xsl"/>
<xsl:import href="../utilities/date-time.xsl"/>
<xsl:import href="../utilities/navigation.xsl"/>
<xsl:import href="../utilities/page-title.xsl"/>
<xsl:import href="../utilities/sections.xsl"/>

<xsl:output
	method="xml" 
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" 
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="yes"
	encoding="UTF-8" 
	indent="yes" />

<xsl:template match="/">
	<html>
		<xsl:call-template name="head"/>
		<body class="section_{$current-page}">
			<div class="box">
				<xsl:call-template name="top"/>
				<div class="subheader">
					<ul class="submenu">
						<xsl:apply-templates select="data/navigation/page[@handle = $root-page]/page"/>
						<xsl:call-template name="previous-next-links" />
					</ul>
				</div><!-- END submenu -->

				<xsl:apply-templates />
							 
				<xsl:call-template name="bottom"/>
			</div><!-- END box -->
		</body>
	</html>	 
</xsl:template>

</xsl:stylesheet>