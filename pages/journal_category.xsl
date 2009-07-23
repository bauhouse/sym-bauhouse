<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/submenu.xsl"/>
<xsl:import href="../utilities/date-time.xsl"/>
<xsl:import href="../utilities/navigation.xsl"/>
<xsl:import href="../utilities/page-title.xsl"/>
<xsl:import href="../utilities/list-archive-months.xsl"/>
<xsl:import href="../utilities/about-link.xsl"/>

<xsl:template match="data">
	<div id="sectionhead">
		<h2>Journal : Category
			<xsl:if test="$category != ''">
			<xsl:text>: </xsl:text>
			<xsl:for-each select="category-list/options/option[@handle=$category]">
				<xsl:value-of select="."/>
			</xsl:for-each>
			</xsl:if>
		</h2>
	</div><!-- END sectionhead -->
	<div id="middle">
		<div id="box_content">
			<div id="content" class="content_2col">
				<div class="colA">
					<div id="articles">
						<xsl:for-each select="entries/entry[fields/categories/item/@handle = $category]">
							<div class="entry">
								<p class="entry_data">
									<xsl:call-template name="get-formatted-date">
										<xsl:with-param name="date" select="date"/>
										<xsl:with-param name="format-type" select="'short'"/>
									</xsl:call-template>
								</p>
								<div class="entry_body">
									<h2><a href="{$root}/journal/{@handle}/"><xsl:value-of select="fields/title"/></a></h2>
									<xsl:copy-of select="fields/body/*"/>
									<xsl:if test="@handle = $entry">
										<xsl:if test="fields/photo/item">
											<div id="image-block">
												<xsl:apply-templates select="fields/photo/item"/>
											</div>
										</xsl:if>
										<xsl:copy-of select="fields/more/*"/>
									</xsl:if>
									<xsl:if test="@handle != $entry">
										<p class="entry_info">
											<a href="{$root}/journal/{@handle}/">Read More</a>
										</p>
									</xsl:if>
									<p class="entry_info">Filed Under: <xsl:apply-templates select="fields/categories/item"/></p>
									<p class="entry_info">Total Number of Words: 
										<xsl:choose>
											<xsl:when test="(fields/more/@word-count)">
												<xsl:value-of select="number(fields/body/@word-count) + 
											number(fields/more/@word-count)"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:value-of select="number(fields/body/@word-count)"/>
											</xsl:otherwise>
										</xsl:choose>
									</p>
								</div><!-- END entry_body -->
							</div><!-- END entry -->
						</xsl:for-each>
					</div><!-- END articles -->
				</div><!-- END colA -->
				<div class="colB">
					<div class="lists">
						<xsl:for-each select="about/entry/description">
							<h3><xsl:value-of select="h4"/></h3>
							<xsl:apply-templates select="p[1]" mode="about"/>
						</xsl:for-each>
						<h3>Archives by Category</h3>
						<ul class="categories">
							<xsl:for-each select="category-list/options/option[@entry-count!='0']">
								<li><a href="{$root}/journal/category/{@handle}/"><xsl:value-of select="."/></a></li>
							</xsl:for-each>
						</ul>
					</div><!-- END lists -->
				</div><!-- END colB -->
			</div><!-- END content -->
		</div><!-- END #box_content -->
	</div><!-- END #middle -->
</xsl:template>

</xsl:stylesheet>