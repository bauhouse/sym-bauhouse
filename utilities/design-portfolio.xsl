<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="design-portfolio">
	<xsl:param name="sort-num" select="content/entry[@handle = $current-page]/fields/sort"/>
	<xsl:param name="sort-next" select="$sort-num + 1"/>
	<xsl:param name="sort-prev" select="$sort-num - 1"/>
	<xsl:param name="section-count" select="count(content/entry[fields/section='Design' and fields/sort != ''])"/>
	<div id="section" class="identity">
		<div id="section_box">
			<div id="sectionsidebar">
				<ul id="sectionmenu" class="section_menu">
					<xsl:apply-templates select="navigation/page[@handle = $root-page]/page"/>
				</ul>
			</div><!-- END sectionsidebar -->

			<div id="sectionimage">
				<xsl:for-each select="content/entry[fields/section='Design']">
					<xsl:sort select="fields/sort"/>
					<xsl:choose>
						<xsl:when test="$entry = '' and fields/title/@handle = $current-page">
							<img src="{$root}/{fields/image/item/path}" alt="{fields/title}" />
						</xsl:when>
					</xsl:choose>
				</xsl:for-each>
				<xsl:for-each select="portfolio/entry[fields/title/@handle = $entry]">
					<img src="{$root}/{fields/image/item/path}" alt="{fields/title}" />
				</xsl:for-each>
			</div><!-- END sectionimage -->
			<div id="sectionthumbs">
				<xsl:for-each select="portfolio/entry[fields/media/@handle = $current-page]">
					<xsl:sort select="fields/created" order="descending"/>
					<xsl:choose>
						<xsl:when test="fields/title/@handle = $entry and position() &lt;= 16">
							<a href="{$root}{$parent-page}/{$current-page}/{@handle}/" class="current" title="{fields/title}"><img class="thumb_off" src="{$root}/{fields/thumbnail-off/item/path}" width="53" height="53" alt="{fields/title}" /><img class="thumb_over" src="{$root}/{fields/thumbnail/item/path}" width="53" height="53" alt="{fields/title}" /><span><strong><em><xsl:value-of select="fields/client"/></em><xsl:text> </xsl:text><xsl:value-of select="fields/project"/></strong></span></a>
						</xsl:when>
						<xsl:when test="fields/title/@handle != $entry and position() &lt;= 16">
							<a href="{$root}{$parent-page}/{$current-page}/{@handle}/" title="{fields/title}"><img class="thumb_off" src="{$root}/{fields/thumbnail-off/item/path}" width="53" height="53" alt="{fields/title}" /><img class="thumb_over" src="{$root}/{fields/thumbnail/item/path}" width="53" height="53" alt="{fields/title}" /><span><strong><em><xsl:value-of select="fields/client"/></em><xsl:text> </xsl:text><xsl:value-of select="fields/project"/></strong></span></a>
						</xsl:when>
					</xsl:choose>
				</xsl:for-each>
			</div><!-- END sectionthumbs -->
		</div><!-- END section_box -->
	</div><!-- END section -->
	<div id="sectionhead">
		<h2>
			<xsl:for-each select="content/entry[fields/title/@handle = $current-page]">
				<xsl:value-of select="fields/section"/>
			</xsl:for-each>
			<xsl:for-each select="content/entry[fields/title/@handle = $current-page]">
				<xsl:text> : </xsl:text>
				<xsl:value-of select="fields/title"/>
			</xsl:for-each>
		</h2>
	</div><!-- END sectionhead -->
	<div id="middle">
		<div id="box_content">
			<div id="content" class="content_1col">
				<xsl:for-each select="content/entry[fields/section='Design']">
					<xsl:choose>
						<xsl:when test="$entry = '' and fields/title/@handle = $current-page">
							<div class="entry">
								<p class="entry_data">
									<xsl:call-template name="get-formatted-date">
										<xsl:with-param name="date" select="date"/>
										<xsl:with-param name="format-type" select="'short'"/>
									</xsl:call-template>
								</p>
								<div class="entry_body">
									<h2><xsl:value-of select="fields/title"/></h2>
									<xsl:for-each select="fields/body/*"><xsl:copy-of select="."/></xsl:for-each>
									<xsl:if test="fields/sort &lt; $section-count">
										<xsl:for-each select="/data/content/entry[fields/section='Design' and fields/sort = $sort-next]">
											<p class="entry_info">
												Next Page:
												<a href="{$root}{$parent-page}/{@handle}/">
												<xsl:value-of select="fields/title"/>
												</a>
											</p>
										</xsl:for-each>
									</xsl:if>
									<xsl:if test="fields/sort = $section-count">
										<xsl:for-each select="/data/content/entry[fields/section='Build' and @handle = 'build']">
											<p class="entry_info">
												Next Section:
												<a href="{$root}/{@handle}/">
												<xsl:value-of select="fields/title"/>
												</a>
											</p>
										</xsl:for-each>
									</xsl:if>
								</div>
							</div>
						</xsl:when>
					</xsl:choose>
				</xsl:for-each>
				<xsl:for-each select="portfolio/entry[@handle = $entry]">
					<div class="entry">
						<p class="entry_data">Created<xsl:text> </xsl:text>
							<xsl:call-template name="get-formatted-month">
								<xsl:with-param name="date" select="fields/created"/>
							</xsl:call-template>
							<xsl:text> </xsl:text>
							<xsl:call-template name="get-formatted-year">
								<xsl:with-param name="date" select="fields/created"/>
							</xsl:call-template>
						</p>
						<div class="entry_body">
							<h2><xsl:value-of select="fields/title"/></h2>
							<xsl:for-each select="fields/description/*"><xsl:copy-of select="."/></xsl:for-each>
							<xsl:if test="fields/client != ''">
								<p class="entry_info"><span>Client<xsl:text> </xsl:text></span><xsl:value-of select="fields/client"/></p>
							</xsl:if>
							<xsl:if test="fields/project != ''">
								<p class="entry_info"><span>Project<xsl:text> </xsl:text></span><xsl:value-of select="fields/project"/></p>
							</xsl:if>
								<p class="entry_info"><span>Application<xsl:text> </xsl:text></span><xsl:value-of select="fields/media"/>
								<xsl:text> </xsl:text>Design</p>
							<xsl:if test="fields/firm != ''">
								<p class="entry_info"><span><xsl:value-of select="fields/type"/><xsl:text> </xsl:text></span><xsl:value-of select="fields/firm"/></p>
							</xsl:if>
							<xsl:if test="fields/creative-direction != ''">
								<p class="entry_info"><span>Creative Direction<xsl:text> </xsl:text></span><xsl:value-of select="fields/creative-direction"/></p>
							</xsl:if>
							<xsl:if test="fields/art-direction != ''">
								<p class="entry_info"><span>Art Direction<xsl:text> </xsl:text></span><xsl:value-of select="fields/art-direction"/></p>
							</xsl:if>
							<xsl:if test="fields/design != ''">
								<p class="entry_info"><span>Design<xsl:text> </xsl:text></span><xsl:value-of select="fields/design"/></p>
							</xsl:if>
							<xsl:if test="fields/printing != ''">
								<p class="entry_info"><span>Printing<xsl:text> </xsl:text></span><xsl:value-of select="fields/printing"/></p>
							</xsl:if>
							<xsl:if test="fields/link != ''">
								<p class="entry_info"><span>Visit Site<xsl:text> </xsl:text></span>
									<a href="{fields/link}" title="{fields/title}">
										<xsl:choose>
											<xsl:when test="substring(fields/link,string-length(fields/link))='/'">
												<xsl:value-of select="substring-after(substring(fields/link,1,
													string-length(fields/link)-1),'http://')"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:value-of select="substring-after(fields/link,'http://')"/>
											</xsl:otherwise>
										</xsl:choose>
									</a>
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