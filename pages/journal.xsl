<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/submenu.xsl"/>
<xsl:import href="../utilities/date-time.xsl"/>
<xsl:import href="../utilities/navigation.xsl"/>
<xsl:import href="../utilities/page-title.xsl"/>

<xsl:template match="data">
	<div id="section" class="journal">
		<div id="section_box">
			<div id="sectionimage">
				<img src="{$root}/workspace/images/section_journal_gs.jpg" width="756" height="215" alt="Journal" />
			</div><!-- END sectionimage -->
		</div><!-- END section_box -->
	</div><!-- END section -->
	<div id="sectionhead">
		<h2>Journal</h2>
	</div><!-- END sectionhead -->
	<div id="middle">
		<div id="box_content">
			<xsl:if test="entries/entry[@handle = $entry]">
				<div id="content" class="content_1col">
					<xsl:for-each select="entries/entry">
						<div class="entry">
							<p class="entry_data">
								<xsl:call-template name="get-formatted-date">
									<xsl:with-param name="date" select="date"/>
									<xsl:with-param name="format-type" select="'long'"/>
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
				</div><!-- END content -->
			</xsl:if>
			<xsl:if test="entries/entry[$entry='']">
				<div id="content" class="content_2col">
					<div class="colA">
						<div id="articles">
							<xsl:for-each select="entries/entry">
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
						</div><!-- End articles -->
					</div><!-- End colA -->
					<div class="colB">
						<div class="lists">
							<h3>Bauhouse Design</h3>
							<p><a href="/about/" title="About the Bauhouse">Bauhouse Visual Communications</a> is a design studio in Abbotsford, British Columbia, Canada, owned by graphic designer, Stephen Bau, MGDC.</p>
							<h3>Archives by Month</h3>
							<ul class="categories">
								<xsl:call-template name="list-archive-months"/>
							</ul>
						</div><!-- End lists -->
					</div><!-- End colB -->
				</div><!-- END content -->
			</xsl:if>
		</div><!-- END #box_content -->
	</div><!-- END #middle -->
</xsl:template>

</xsl:stylesheet>