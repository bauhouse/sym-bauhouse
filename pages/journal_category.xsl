<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/submenu.xsl"/>
<xsl:import href="../utilities/date-time.xsl"/>
<xsl:import href="../utilities/navigation.xsl"/>
<xsl:import href="../utilities/page-title.xsl"/>
<xsl:import href="../utilities/list-archive-months.xsl"/>
<xsl:import href="../utilities/about-link.xsl"/>

<xsl:template match="data">
	<div class="sectionhead">
		<h2>Journal : Category
			<xsl:if test="$category != ''">
			<xsl:text>: </xsl:text>
			<xsl:for-each select="categories/entry[title/@handle=$category]">
				<xsl:value-of select="."/>
			</xsl:for-each>
			</xsl:if>
		</h2>
	</div><!-- END sectionhead -->
	<div class="middle">
		<div class="box_content">
			<div class="content content_2col">
				<div class="colA">
					<div class="articles">
						<xsl:choose>
							<xsl:when test="archive-entry-list/year/month/entry">
								<xsl:apply-templates select="archive-entry-list/year/month/entry"/>
							</xsl:when>
							<xsl:otherwise>
								<xsl:apply-templates select="entries-by-category"/>
							</xsl:otherwise>
						</xsl:choose>
					</div><!-- End articles -->
				</div><!-- END colA -->
				<div class="colB">
					<div class="lists">
						<xsl:for-each select="about/entry/description">
							<h3><xsl:value-of select="h4"/></h3>
							<xsl:apply-templates select="p[1]" mode="about"/>
						</xsl:for-each>
						<h3>Archives by Category</h3>
						<ul class="categories">
							<xsl:for-each select="entries-by-category/category">
								<li>
									<a href="{$root}/journal/category/{@link-handle}/">
										<xsl:call-template name="category-title"/>
									</a>
								</li>
							</xsl:for-each>
						</ul>
					</div><!-- END lists -->
				</div><!-- END colB -->
			</div><!-- END content -->
		</div><!-- END #box_content -->
	</div><!-- END #middle -->
</xsl:template>

<xsl:template match="entries-by-category">
	<h3>Archive by Category</h3>
	<table style="width: 100%; border-collapse: collapse;">
		<xsl:choose>
			<xsl:when test="$category">
				<xsl:for-each select="category[@link-handle = $category]">
					<xsl:call-template name="list-entries-by-category"/>
				</xsl:for-each>
			</xsl:when>
			<xsl:otherwise>
				<xsl:for-each select="category">
					<xsl:call-template name="list-entries-by-category"/>
				</xsl:for-each>
			</xsl:otherwise>
		</xsl:choose>
	</table>
</xsl:template>

<xsl:template name="list-entries-by-category">
	<tr>
		<td colspan="3">
			<h4>
				<xsl:call-template name="category-title"/>
			</h4>
		</td>
	</tr>
	<xsl:for-each select="entry">
		<tr>
			<td>
				<xsl:call-template name="format-date">
					<xsl:with-param name="date" select="date"/>
					<xsl:with-param name="format" select="'x m Y'"/>
				</xsl:call-template>
			</td>
			<td>
				<a href="{$root}/journal/{title/@handle}/"><xsl:value-of select="title"/></a>
			</td>
			<td>
				<xsl:apply-templates select="category/item" mode="category"/>
			</td>
		</tr>
	</xsl:for-each>
</xsl:template>

<xsl:template name="category-title">
	<xsl:param name="category-id" select="@link-id"/>
	<xsl:value-of select="/data/categories/entry[@id = $category-id]/title"/>
</xsl:template>

</xsl:stylesheet>