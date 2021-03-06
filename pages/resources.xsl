<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../utilities/date-time.xsl"/>
<xsl:import href="../utilities/navigation.xsl"/>
<xsl:import href="../utilities/page-title.xsl"/>
<xsl:import href="../utilities/sections.xsl"/>
<xsl:import href="../utilities/resources.xsl"/>
<xsl:import href="../utilities/about-link.xsl"/>

<xsl:template match="data">
	<xsl:call-template name="section-image"/>
	<xsl:call-template name="section-head"/>
	<div class="middle">
		<div class="box_content">
			<xsl:choose>
				<xsl:when test="$entry">
					<div class="content content_1col">
						<xsl:for-each select="resource/entry">
							<div class="entry">
								<p class="entry_data">
									<a href="{$root}/{$current-page}/{category/item/@handle}/"><xsl:value-of select="category/item"/></a>
								</p>
								<div class="entry_body">
									<h2><a href="{$root}/{$current-page}/{$category}/{title/@handle}/"><xsl:value-of select="title"/></a></h2>
									<xsl:for-each select="description/*"><xsl:copy-of select="."/></xsl:for-each>
									<xsl:if test="(images/item)">
										<img class="entry_image" src="{$root}/{images/@path}/{images/filename}" alt="{title}"/>
									</xsl:if>
									<xsl:for-each select="body/*"><xsl:copy-of select="."/></xsl:for-each>
									<xsl:if test="url">
										<p class="entry_info">
											<span>View Site </span>
											<a href="{url}" title="{title}: {url}">
											<xsl:value-of select="title"/></a>
										</p>
									</xsl:if>
									<xsl:if test="type">
										<p class="entry_info">
											<span>Resource Type </span>
											<xsl:for-each select="type">
												<xsl:value-of select="."/>
											</xsl:for-each>
										</p>
									</xsl:if>
									<xsl:if test="categories/item">
										<p class="entry_info">
											<span>Filed Under </span>
											<xsl:for-each select="categories/item">
												<xsl:value-of select="."/>
												<xsl:if test="position() != last()"><xsl:text>, </xsl:text></xsl:if>
											</xsl:for-each>
										</p>
									</xsl:if>
									<p class="entry_info">
										<span>Back </span>
											<a href="{$root}/{$current-page}/" title="Back to main Resources page">Resources Main Page</a>
									</p>
								</div>
							</div>
						</xsl:for-each>
					</div><!-- End content -->
				</xsl:when>
				<xsl:otherwise>
					<div class="content content_2col">
						<div class="colA">
							<div class="articles">
								<xsl:for-each select="resources/entry">
									<div class="entry">
										<p class="entry_data">
											<a href="{$root}/{$current-page}/{category/item/@handle}/"><xsl:value-of select="category/item"/></a>
										</p>
										<div class="entry_body">
											<h2>
												<xsl:call-template name="resource-title-link">
													<xsl:with-param name="resource-type" select="type/item"/>
												</xsl:call-template>
											</h2>
											<xsl:copy-of select="description/*"/>
											<p class="entry_info">
												<span>
													<xsl:choose>
														<xsl:when test="body">
															<xsl:call-template name="resource-readmore-link">
																<xsl:with-param name="resource-type" select="type/item"/>
															</xsl:call-template>
														</xsl:when>
														<xsl:otherwise>View Site </xsl:otherwise>
													</xsl:choose>
												</span>
												<a href="{url}" title="{title}: {url}">
												<xsl:value-of select="title"/></a>
											</p>
											<xsl:if test="(categories/item)">
												<p class="entry_info">
													<span>Filed Under </span>
													<xsl:for-each select="categories/item">
														<xsl:value-of select="."/>
														<xsl:if test="position() != last()"><xsl:text>, </xsl:text></xsl:if>
													</xsl:for-each>
												</p>
											</xsl:if>
										</div>
									</div>
								</xsl:for-each>
							</div><!-- End articles -->
						</div><!-- End colA -->
						<div class="colB">
							<div class="lists">
								<xsl:for-each select="about/entry/description">
									<h3><xsl:value-of select="h4"/></h3>
									<xsl:apply-templates select="p[1]" mode="about"/>
								</xsl:for-each>
								
								<xsl:choose>
									<xsl:when test="$category">
										<h3>Categories</h3>
										<ul class="categories">
											<xsl:for-each select="categories/entry[title/@handle = /data/resources-by-category/entry/category/item/@handle]">
												<li><a href="{$root}/{$current-page}/{title/@handle}/"><xsl:value-of select="title"/></a></li>
											</xsl:for-each>
										</ul>
									</xsl:when>
									<xsl:otherwise>
										<xsl:for-each select="categories/entry[title/@handle = /data/resources-by-category/entry/category/item/@handle]">
											<h3><a href="{$root}/{$current-page}/{title/@handle}/"><xsl:value-of select="title"/></a></h3>
											<xsl:call-template name="list-resources-by-category"/>
										</xsl:for-each>
									</xsl:otherwise>
								</xsl:choose>

							</div><!-- End lists -->
						</div><!-- End colB -->
					</div><!-- End content -->
				</xsl:otherwise>
			</xsl:choose>
		</div><!-- END #box_content -->
	</div><!-- END #middle -->
</xsl:template>

<xsl:template name="list-resources-by-category">
	<xsl:param name="resource-category" select="title/@handle"/>
	<ul class="links">
		<xsl:for-each select="/data/resources-by-category/entry[category/item/@handle = $resource-category]">
			<li>
				<xsl:call-template name="resource-title-link">
					<xsl:with-param name="resource-type" select="$resource-category"/>
				</xsl:call-template>
				<xsl:if test="$resource-category = 'articles'">
					<xsl:call-template name="format-date">
						<xsl:with-param name="date" select="date"/>
						<xsl:with-param name="format" select="'x M Y'"/>
					</xsl:call-template>
				</xsl:if>
			</li>
		</xsl:for-each>
	</ul>
</xsl:template>

</xsl:stylesheet>