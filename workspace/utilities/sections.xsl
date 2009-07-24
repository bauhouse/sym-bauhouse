<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="section-image">
	<div class="section {section/entry/title/@handle}">
		<div class="section_box">
			<div class="sectionimage">
				<xsl:for-each select="section-images/entry">
					<img src="{$workspace}{image/@path}/{image/filename}" width="756" height="215" alt="{caption}"/>
				</xsl:for-each>
			</div><!-- END sectionimage -->
		</div><!-- END section_box -->
	</div><!-- END section -->
</xsl:template>

<xsl:template name="section-head">
	<div class="sectionhead">
		<h2><xsl:value-of select="section/entry/title"/></h2>
	</div><!-- END sectionhead -->
</xsl:template>

<xsl:template name="subsection-head">
	<div class="sectionhead">
		<h2>
			<xsl:for-each select="section/entry">
				<xsl:value-of select="navigation/item"/>
				<xsl:text> : </xsl:text>
				<xsl:value-of select="title"/>
			</xsl:for-each>
		</h2>
	</div><!-- END sectionhead -->
</xsl:template>

<xsl:template name="tab-section">
	<div class="section {section/entry/title/@handle}">
		<div class="section_box">
			<div class="sectionsidebar">
				<ul class="section_menu">
					<xsl:apply-templates select="navigation/page[@handle = $root-page]/page"/>
				</ul>
			</div><!-- END sectionsidebar -->
			<div class="sectionimage">
				<xsl:for-each select="section-images/entry">
					<img src="{$workspace}{image/@path}/{image/filename}" width="540" height="215" alt="{caption}"/>
				</xsl:for-each>
			</div><!-- END sectionimage -->
		</div><!-- END section_box -->
	</div><!-- END section -->
</xsl:template>

<xsl:template name="section-content">
	<div class="middle">
		<div class="box_content">
			<div class="content content_1col">
				<xsl:for-each select="section/entry">
					<div class="entry">
						<p class="entry_data"></p>
						<div class="entry_body">
							<h2><xsl:value-of select="title"/></h2>
							<h4><xsl:value-of select="heading"/></h4>
							<xsl:copy-of select="description/*"/>
							<xsl:copy-of select="body/*"/>
							<xsl:if test="/data/previous-section/entry">
								<p class="entry_info">
									Previous:
									<xsl:call-template name="previous-link"/>
								</p>
							</xsl:if> 
							<xsl:if test="/data/next-section/entry">
								<p class="entry_info">
									Next:
									<xsl:call-template name="next-link"/>
								</p>
							</xsl:if> 
						</div>
					</div>
				</xsl:for-each>
			</div><!-- END content -->
		</div><!-- END #box_content -->
	</div><!-- END #middle -->
</xsl:template>

</xsl:stylesheet>