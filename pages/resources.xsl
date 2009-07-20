<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../utilities/date-time.xsl"/>
<xsl:import href="../utilities/navigation.xsl"/>
<xsl:import href="../utilities/page-title.xsl"/>

<xsl:template match="data">
	<div id="section" class="resources">
		<div id="section_box">
			<div id="sectionimage">
			<img src="{$root}/workspace/images/section_resources_gs.jpg" width="756" height="215" alt="Resources" />
			</div><!-- END sectionimage -->
		</div><!-- END section_box -->
	</div><!-- END section -->
	<div id="sectionhead">
		<h2>Resources</h2>
	</div><!-- END sectionhead -->
	<div id="middle">
		<div id="box_content">
			<xsl:if test="resources/entry[@handle = $entry]">
				<div id="content" class="content_1col">
					<xsl:for-each select="resources/entry[@handle = $entry]">
						<div class="entry">
							<p class="entry_data">
								<xsl:value-of select="fields/type"/>
							</p>
							<div class="entry_body">
								<h2><a href="{$root}/{$current-page}/{$type}/{@handle}/"><xsl:value-of select="fields/title"/></a></h2>
								<xsl:for-each select="fields/description/*"><xsl:copy-of select="."/></xsl:for-each>
								<xsl:if test="(fields/images/item)">
									<img class="entry_image" src="{$root}/{fields/images/item/path}" alt="{fields/title}"/>
								</xsl:if>
								<xsl:for-each select="fields/body/*"><xsl:copy-of select="."/></xsl:for-each>
								<xsl:if test="(fields/site-url)">
									<p class="entry_info">
										<span>View Site </span>
										<a href="{fields/site-url}" title="{fields/site-title}: {fields/site-url}">
										<xsl:value-of select="fields/site-title"/></a>
									</p>
								</xsl:if>
								<xsl:if test="(fields/link-url)">
									<p class="entry_info">
										<span>Related Link </span>
										<a href="{fields/link-url}" title="{fields/link-title}: {fields/link-url}">
										<xsl:value-of select="fields/link-title"/></a>
									</p>
								</xsl:if>
								<xsl:if test="(fields/type)">
								<p class="entry_info">
									<span>Resource Type </span>
									<xsl:for-each select="fields/type">
										<xsl:value-of select="."/>
									</xsl:for-each>
								</p>
								</xsl:if>
								<xsl:if test="(fields/categories/item)">
								<p class="entry_info">
									<span>Filed Under </span>
									<xsl:for-each select="fields/categories/item">
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
			</xsl:if>
			<xsl:if test="$entry=''">
				<div id="content" class="content_2col">
					<div class="colA">
						<div id="articles">
							<xsl:for-each select="resources/entry">
								<div class="entry">
									<p class="entry_data">
										<xsl:value-of select="fields/type"/>
									</p>
									<div class="entry_body">
										<h2>
										<xsl:call-template name="resource-title-link">
											<xsl:with-param name="resource-type" select="fields/type"/>
										</xsl:call-template>
										</h2>
										<xsl:for-each select="fields/description/*"><xsl:copy-of select="."/></xsl:for-each>
										<p class="entry_info">
											<span>
											<xsl:if test="(fields/body)">
												<xsl:call-template name="resource-readmore-link">
													<xsl:with-param name="resource-type" select="fields/type"/>
												</xsl:call-template>
											</xsl:if>
											<xsl:if test="not(fields/body)">View Site </xsl:if>
											</span>
											<a href="{fields/site-url}" title="{fields/site-title}: {fields/site-url}">
											<xsl:value-of select="fields/site-title"/></a>
										</p>
										<xsl:if test="(fields/categories/item)">
											<p class="entry_info">
												<span>Filed Under </span>
												<xsl:for-each select="fields/categories/item">
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
							<h3>Bauhouse Design</h3>
							<p><a href="/about/" title="About the Bauhouse">Bauhouse Visual Communications</a> is a design studio in Abbotsford, British Columbia, Canada, owned by graphic designer, Stephen Bau, MGDC.</p>

							<h3>Partners</h3>
							<ul class="links">
							<xsl:for-each select="resources/entry[fields/partner = 'yes']">
								<xsl:sort select="fields/title/@handle"/>
								<li>
									<xsl:call-template name="resource-title-link">
										<xsl:with-param name="resource-type" select="fields/type"/>
									</xsl:call-template>
									<xsl:value-of select="fields/type"/>
								</li>
							</xsl:for-each>
							</ul>
							
							<h3>Photography</h3>
							<ul class="links">
							<xsl:for-each select="resources/entry[fields/type = 'Photography']">
								<xsl:sort select="fields/title/@handle"/>
								<li>
									<xsl:call-template name="resource-title-link">
										<xsl:with-param name="resource-type" select="fields/type"/>
									</xsl:call-template>
								</li>
							</xsl:for-each>
							</ul>
							
							<h3>Sites</h3>
							<ul class="links">
							<xsl:for-each select="resources/entry[fields/type = 'Website']">
								<xsl:sort select="fields/title/@handle"/>
								<li>
									<xsl:call-template name="resource-title-link">
										<xsl:with-param name="resource-type" select="fields/type"/>
									</xsl:call-template>
								</li>
							</xsl:for-each>
							</ul>
							
							<h3>Weblogs</h3>
							<ul class="links">
							<xsl:for-each select="resources/entry[fields/type = 'Weblog']">
								<xsl:sort select="fields/title/@handle"/>
								<li>
									<xsl:call-template name="resource-title-link">
										<xsl:with-param name="resource-type" select="fields/type"/>
									</xsl:call-template>
								</li>
							</xsl:for-each>
							</ul>
							
							<h3>Articles</h3>
							<ul class="links">
							<xsl:for-each select="resources/entry[fields/type = 'Article']">
								<li>
									<xsl:call-template name="resource-title-link">
										<xsl:with-param name="resource-type" select="fields/type"/>
									</xsl:call-template>
									<xsl:call-template name="get-formatted-date">
										<xsl:with-param name="date" select="date"/>
										<xsl:with-param name="format-type" select="'long'"/>
									</xsl:call-template>
								</li>
							</xsl:for-each>
							</ul>
							
							<h3>Applications</h3>
							<ul class="links">
							<xsl:for-each select="resources/entry[fields/type = 'Application']">
								<xsl:sort select="fields/title/@handle"/>
								<li>
									<xsl:call-template name="resource-title-link">
										<xsl:with-param name="resource-type" select="fields/type"/>
									</xsl:call-template>
								</li>
							</xsl:for-each>
							</ul>
							
							<h3>Scripts</h3>
							<ul class="links">
							<xsl:for-each select="resources/entry[fields/type = 'Script']">
								<xsl:sort select="fields/title/@handle"/>
								<li>
									<xsl:call-template name="resource-title-link">
										<xsl:with-param name="resource-type" select="fields/type"/>
									</xsl:call-template>
								</li>
							</xsl:for-each>
							</ul>
						</div><!-- End lists -->
					</div><!-- End colB -->
				</div><!-- End content -->
			</xsl:if>
		</div><!-- END #box_content -->
	</div><!-- END #middle -->
</xsl:template>

</xsl:stylesheet>