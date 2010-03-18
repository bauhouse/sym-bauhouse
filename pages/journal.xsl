<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/submenu.xsl"/>
<xsl:import href="../utilities/date-time.xsl"/>
<xsl:import href="../utilities/navigation.xsl"/>
<xsl:import href="../utilities/page-title.xsl"/>
<xsl:import href="../utilities/sections.xsl"/>
<xsl:import href="../utilities/list-archive-months.xsl"/>
<xsl:import href="../utilities/about-link.xsl"/>
<xsl:import href="../utilities/format-relative-urls.xsl"/>

<xsl:template match="data">
	<xsl:call-template name="section-image"/>
	<xsl:call-template name="section-head"/>
	<div class="middle">
		<div class="box_content">
			<xsl:choose>
				<xsl:when test="$entry">
					<div class="content content_1col">
						<xsl:for-each select="entry/entry">
							<div class="entry">
								<p class="entry_data">
									<xsl:call-template name="format-date">
										<xsl:with-param name="date" select="date"/>
										<xsl:with-param name="format" select="'x M Y'"/>
									</xsl:call-template>
								</p>
								<div class="entry_body">
									<h2><a href="{$root}/journal/{title/@handle}/"><xsl:value-of select="title"/></a></h2>
									<xsl:apply-templates select="description/*" mode="html"/>
									<xsl:if test="title/@handle = $entry">
										<xsl:if test="images/item">
											<div class="image-block">
												<xsl:apply-templates select="images/item"/>
											</div>
										</xsl:if>
										<xsl:apply-templates select="body/*" mode="html"/>
									</xsl:if>
									<p class="entry_info">Filed Under: <xsl:apply-templates select="category/item"/></p>
								</div><!-- END entry_body -->
							</div><!-- END entry -->
						</xsl:for-each>
					</div><!-- END content -->
				</xsl:when>
				<xsl:otherwise>
					<div class="content content_2col">
						<div class="colA">
							<div class="articles">
								<xsl:for-each select="entries/entry">
									<div class="entry">
										<p class="entry_data">
											<xsl:call-template name="format-date">
												<xsl:with-param name="date" select="date"/>
												<xsl:with-param name="format" select="'x m Y'"/>
											</xsl:call-template>
										</p>
										<div class="entry_body">
											<h2><a href="{$root}/journal/{title/@handle}/"><xsl:value-of select="title"/></a></h2>
											<xsl:apply-templates select="description/*" mode="html"/>
											<p class="entry_info">
												<a href="{$root}/journal/{title/@handle}/">Read More</a>
											</p>
											<p class="entry_info">Filed Under: <xsl:apply-templates select="category/item"/></p>
										</div><!-- END entry_body -->
									</div><!-- END entry -->
								</xsl:for-each>
							</div><!-- End articles -->
						</div><!-- End colA -->
						<div class="colB">
							<div class="lists">
								<xsl:for-each select="about/entry/description">
									<h3><xsl:value-of select="h4"/></h3>
									<xsl:apply-templates select="p[1]" mode="about"/>
								</xsl:for-each>
								<h3>Archives by Month</h3>
								<ul class="categories">
									<xsl:call-template name="list-archive-months"/>
								</ul>
							</div><!-- End lists -->
						</div><!-- End colB -->
					</div><!-- END content -->
				</xsl:otherwise>
			</xsl:choose>
		</div><!-- END #box_content -->
	</div><!-- END #middle -->
</xsl:template>

<xsl:template match="images/item">
	<xsl:param name="image-id" select="@id"/>
	<xsl:for-each select="/data/entry-images/entry[@id = $image-id]">
		<a href="{$workspace}{image/@path}/{image/filename}"><img src="{$root}/image/1/85/0{image/@path}/{image/filename}" alt="{title}"/></a>
	</xsl:for-each>
</xsl:template>

<xsl:template match="category/item">
	<a href="{$root}/{$root-page}/category/{@handle}/"><xsl:value-of select="."/></a>
</xsl:template>

<xsl:template match="categories/item">
	<xsl:value-of select="."/>
	<xsl:if test="position() != last()">, </xsl:if>
</xsl:template>

</xsl:stylesheet>