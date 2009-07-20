<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../utilities/date-time.xsl"/>
<xsl:import href="../utilities/navigation.xsl"/>
<xsl:import href="../utilities/page-title.xsl"/>

<xsl:template match="data">
	<div id="section" class="about">
		<div id="section_box">
			<div id="sectionimage">
			<img src="{$root}/workspace/images/section_about_gs.jpg" width="756" height="215" alt="About" />
			</div><!-- END sectionimage -->
		</div><!-- END section_box -->
	</div><!-- END section -->
	<div id="sectionhead">
		<h2>About</h2>
	</div><!-- END sectionhead -->
	<div id="middle">
		<div id="box_content">
			<div id="content" class="content_1col">
				<xsl:for-each select="content/entry[fields/section='About']">
					<div class="entry">
						<p class="entry_data">
							<xsl:call-template name="get-formatted-date">
								<xsl:with-param name="date" select="date"/>
								<xsl:with-param name="format-type" select="'short'"/>
							</xsl:call-template>
						</p>
						<div class="entry_body">
							<h2><xsl:value-of select="fields/title"/></h2>
							<xsl:for-each select="fields/body/*"><xsl:copy-of select="."/></xsl:for-each>
						</div>
					</div><!-- END entry -->
				</xsl:for-each>
			</div><!-- END content -->
		</div><!-- END #box_content -->
	</div><!-- END #middle -->
</xsl:template>

</xsl:stylesheet>