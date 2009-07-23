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

<xsl:template match="data">
	<xsl:call-template name="section-image"/>
	<xsl:call-template name="section-head"/>
	<div id="middle">
		<div id="box_content">
			<xsl:choose>
				<xsl:when test="$entry">
					<div id="content" class="content_1col">
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
									<xsl:copy-of select="body/*"/>
									<xsl:if test="@handle = $entry">
										<xsl:if test="photo/item">
											<div id="image-block">
												<xsl:apply-templates select="photo/item"/>
											</div>
										</xsl:if>
										<xsl:copy-of select="description/*"/>
										<xsl:copy-of select="body/*"/>
									</xsl:if>
									<p class="entry_info">Filed Under: <xsl:apply-templates select="categories/item"/></p>
									<p class="entry_info">Total Number of Words: 
										<xsl:choose>
											<xsl:when test="(more/@word-count)">
												<xsl:value-of select="number(body/@word-count) + 
											number(more/@word-count)"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:value-of select="number(body/@word-count)"/>
											</xsl:otherwise>
										</xsl:choose>
									</p>
								</div><!-- END entry_body -->
							</div><!-- END entry -->
						</xsl:for-each>
					</div><!-- END content -->
				</xsl:when>
				<xsl:otherwise>
					<div id="content" class="content_2col">
						<div class="colA">
							<div id="articles">
								<xsl:for-each select="entries/entry">
									<div class="entry">
										<p class="entry_data">
											<xsl:call-template name="format-date">
												<xsl:with-param name="date" select="date"/>
												<xsl:with-param name="format" select="'x M Y'"/>
											</xsl:call-template>
										</p>
										<div class="entry_body">
											<h2><a href="{$root}/journal/{title/@handle}/"><xsl:value-of select="title"/></a></h2>
											<xsl:copy-of select="description/*"/>
											<p class="entry_info">
												<a href="{$root}/journal/{title/@handle}/">Read More</a>
											</p>
											<p class="entry_info">Filed Under: <xsl:apply-templates select="categories/item"/></p>
											<p class="entry_info">Total Number of Words: 
												<xsl:choose>
													<xsl:when test="(more/@word-count)">
														<xsl:value-of select="number(body/@word-count) + 
														number(more/@word-count)"/>
													</xsl:when>
													<xsl:otherwise>
														<xsl:value-of select="number(body/@word-count)"/>
													</xsl:otherwise>
												</xsl:choose>
											</p>
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

</xsl:stylesheet>