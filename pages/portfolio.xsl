<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../utilities/date-time.xsl"/>
<xsl:import href="../utilities/navigation.xsl"/>
<xsl:import href="../utilities/page-title.xsl"/>
<xsl:import href="../utilities/design-portfolio.xsl"/>

<xsl:template match="data">
	<div id="section" class="journal">
		<div id="section_box">
			<div id="sectionimage">
			<img src="{$root}/workspace/images/section_portfolio_gs.jpg" width="756" height="215" alt="Portfolio" />
			</div><!-- END sectionimage -->
		</div><!-- END section_box -->
	</div><!-- END section -->
	<div id="sectionhead"><h2>Portfolio</h2></div>
	<div id="contentthumbs">
		<xsl:for-each select="portfolio/entry">
			<xsl:sort select="fields/created" order="descending"/>
			<xsl:if test="fields/preview != '' and position() &lt;= 28">
				<a href="{$root}/design/{fields/media/@handle}/{@handle}/" title="{fields/title}"><img class="preview_off" src="{$root}/{fields/preview-off/item/path}" width="107" height="107" alt="{fields/title}" /><img class="preview_over" src="{$root}/{fields/preview/item/path}" alt="{fields/title}" /></a>
			</xsl:if>
		</xsl:for-each>
	</div><!-- END contentthumbs -->
	<div id="middle">
		<div id="box_content">
			<div id="content" class="content_2col">
				<div class="colA">
					<div id="articles">
						<xsl:for-each select="/data/entries/entry">
							<div class="entry">
								<p class="entryData">
									<xsl:call-template name="get-formatted-date">
										<xsl:with-param name="date" select="date"/>
										<xsl:with-param name="format-type" select="'short'"/>
									</xsl:call-template>
								</p>
								<div class="entryBody">
									<h2><a href="{$root}/articles/{@handle}/"><xsl:value-of select="title"/></a></h2>
									<xsl:call-template name="get-body-text"/>
									<p class="entryInfo"><xsl:call-template name="show-filed-under"/></p>
								</div>
							</div>
						</xsl:for-each>
					</div><!-- End articles -->
				</div><!-- End colA -->
			</div><!-- End content -->
		</div><!-- END #box_content -->
	</div><!-- END #middle -->
</xsl:template>

</xsl:stylesheet>