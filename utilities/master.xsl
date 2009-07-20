<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/common.xsl"/>

<xsl:template match="/">
	<html>
		<xsl:call-template name="head"/>
		<body id="section_{$current-page}">
			<div id="box">
				<xsl:call-template name="top"/>
				<div id="subheader">
					<ul id="submenu">
						<xsl:for-each select="data/navigation/page[@handle = 'contact']">
							<li class="right"><a href="{$root}/{@handle}/"><xsl:value-of select="name"/></a></li>
						</xsl:for-each>
					</ul>
				</div><!-- END #submenu -->

				<xsl:apply-templates />
							 
				<xsl:call-template name="bottom"/>
			</div><!-- END #box -->
		</body>
	</html>	 
</xsl:template>

</xsl:stylesheet>