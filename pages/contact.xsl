<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/submenu.xsl"/>
<xsl:import href="../utilities/date-time.xsl"/>
<xsl:import href="../utilities/navigation.xsl"/>
<xsl:import href="../utilities/page-title.xsl"/>
<xsl:import href="../utilities/sections.xsl"/>
<xsl:import href="../utilities/contact-email-form.xsl"/>
<xsl:import href="../utilities/system-messages.xsl"/>

<xsl:template match="data">
	<xsl:call-template name="section-head"/>
	<div class="middle">
		<div class="box_content">
			<div class="content content_1col">
				<div class="entry">
					<div class="entry_data">
						<xsl:copy-of select="section/entry/description/*"/>
					</div><!-- END entry_data -->
					<div class="entry_body">
					<h2><xsl:value-of select="section/entry/heading"/></h2>
						<xsl:call-template name="contact-email-form">
							<xsl:with-param name="owner" select="owner/author/@username"/>
						</xsl:call-template>
					</div>
				</div><!-- END entry -->
			</div><!-- END content -->
		</div><!-- END #box_content -->
	</div><!-- END #middle -->
</xsl:template>

</xsl:stylesheet>