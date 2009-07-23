<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

<xsl:template match="data">
	<xsl:call-template name="section-image"/>
	<xsl:call-template name="section-head"/>
	<div class="middle">
		<div class="box_content">
			<div class="content content_1col">
				<xsl:for-each select="section/entry">
					<div class="entry">
						<p class="entry_data"></p>
						<div class="entry_body">
							<h2><xsl:value-of select="title"/></h2>
							<h3><xsl:value-of select="heading"/></h3>
							<xsl:copy-of select="description/*"/>
							<xsl:copy-of select="body/*"/>
						</div>
					</div><!-- END entry -->
				</xsl:for-each>
			</div><!-- END content -->
		</div><!-- END #box_content -->
	</div><!-- END #middle -->
</xsl:template>

</xsl:stylesheet>