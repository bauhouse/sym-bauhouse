<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
<xsl:template name="design-portfolio">
	<div class="section {$current-page}">
		<div class="section_box">
			<div class="sectionsidebar">
				<ul class="section_menu">
					<xsl:apply-templates select="navigation/page[@handle = $root-page]/page"/>
				</ul>
			</div><!-- END sectionsidebar -->
			<div class="sectionimage">
				<xsl:choose>
					<xsl:when test="$entry">
						<xsl:for-each select="portfolio/entry[title/@handle = $entry]">
							<img src="{$workspace}{image/@path}/{image/filename}" alt="{title}" />
						</xsl:for-each>
					</xsl:when>
					<xsl:otherwise>
						<xsl:for-each select="section-images/entry">
							<img src="{$workspace}{image/@path}/{image/filename}" width="540" height="215" alt="{caption}"/>
						</xsl:for-each>
					</xsl:otherwise>
				</xsl:choose>
			</div><!-- END sectionimage -->
			<div class="section_thumbs">
				<xsl:for-each select="portfolio/entry[thumbnail/filename != ''][media/item/@handle = $current-page][position() &lt;= 16]">
					<xsl:sort select="created" order="descending"/>
					<a href="{$root}/{$root-page}/{$current-page}/{title/@handle}/" title="{title}">
						<xsl:if test="title/@handle = $entry"><xsl:attribute name="class">current</xsl:attribute></xsl:if>
						<img class="thumb_off" src="{$workspace}{thumbnail-off/@path}/{thumbnail-off/filename}" width="53" height="53" alt="{title}" />
						<img class="thumb_over" src="{$workspace}/{thumbnail/@path}/{thumbnail/filename}" width="53" height="53" alt="{title}" />
						<span><strong><em><xsl:value-of select="client"/></em><xsl:text> </xsl:text><xsl:value-of select="project"/></strong></span>
					</a>
				</xsl:for-each>
			</div><!-- END sectionthumbs -->
		</div><!-- END section_box -->
	</div><!-- END section -->
	<xsl:call-template name="subsection-head"/>
	<xsl:choose>
		<xsl:when test="$entry">
			<xsl:call-template name="portfolio-content"/>
		</xsl:when>
		<xsl:otherwise>
			<xsl:call-template name="section-content"/>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="portfolio-content">
	<div class="middle">
		<div class="box_content">
			<div class="content content_1col">
				<xsl:for-each select="portfolio/entry[title/@handle = $entry]">
					<div class="entry">
						<p class="entry_data">Created<xsl:text> </xsl:text>
							<xsl:call-template name="format-date">
								<xsl:with-param name="date" select="created"/>
								<xsl:with-param name="format" select="'M Y'"/>
							</xsl:call-template>
						</p>
						<div class="entry_body">
							<h2><xsl:value-of select="title"/></h2>
							<xsl:for-each select="description/*"><xsl:copy-of select="."/></xsl:for-each>
							<xsl:if test="client">
								<p class="entry_info"><span>Client<xsl:text> </xsl:text></span><xsl:value-of select="client"/></p>
							</xsl:if>
							<xsl:if test="project">
								<p class="entry_info"><span>Project<xsl:text> </xsl:text></span><xsl:value-of select="project"/></p>
							</xsl:if>
								<p class="entry_info"><span>Application<xsl:text> </xsl:text></span><xsl:value-of select="media"/>
								<xsl:text> </xsl:text>Design</p>
							<xsl:if test="firm">
								<p class="entry_info"><span><xsl:value-of select="type"/><xsl:text> </xsl:text></span><xsl:value-of select="firm"/></p>
							</xsl:if>
							<xsl:if test="creative-direction">
								<p class="entry_info"><span>Creative Direction<xsl:text> </xsl:text></span><xsl:value-of select="creative-direction"/></p>
							</xsl:if>
							<xsl:if test="art-direction">
								<p class="entry_info"><span>Art Direction<xsl:text> </xsl:text></span><xsl:value-of select="art-direction"/></p>
							</xsl:if>
							<xsl:if test="design">
								<p class="entry_info"><span>Design<xsl:text> </xsl:text></span><xsl:value-of select="design"/></p>
							</xsl:if>
							<xsl:if test="printing">
								<p class="entry_info"><span>Printing<xsl:text> </xsl:text></span><xsl:value-of select="printing"/></p>
							</xsl:if>
							<xsl:if test="link">
								<p class="entry_info"><span>Visit Site<xsl:text> </xsl:text></span>
									<a href="{link}" title="{title}">
										<xsl:choose>
											<xsl:when test="substring(link,string-length(link))='/'">
												<xsl:value-of select="substring-after(substring(link,1,
													string-length(link)-1),'http://')"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:value-of select="substring-after(link,'http://')"/>
											</xsl:otherwise>
										</xsl:choose>
									</a>
								</p>
							</xsl:if>
						</div>
					</div>
				</xsl:for-each>
			</div><!-- END content -->
		</div><!-- END box_content -->
	</div><!-- END middle -->
</xsl:template>

</xsl:stylesheet>