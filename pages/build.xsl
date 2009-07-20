<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/date-time.xsl"/>
<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../utilities/navigation.xsl"/>
<xsl:import href="../utilities/page-title.xsl"/>
<xsl:import href="../utilities/system-messages.xsl"/>

<xsl:template match="data">
<xsl:param name="sort-num" select="content/entry[@handle = $entry]/fields/sort"/>
<xsl:param name="sort-next" select="$sort-num + 1"/>
<xsl:param name="sort-prev" select="$sort-num - 1"/>
<xsl:param name="section-count" select="count(content/entry[fields/section='Build' and fields/sort != ''])"/>

<div id="section" class="imagine">
	<div id="section_box">
		<div id="sectionsidebar">
			<ul id="sectionmenu" class="section_menu">

<xsl:for-each select="content/entry[fields/section = 'Build' and fields/sort != '']">
<xsl:sort select="fields/sort"/>
<xsl:choose>
<xsl:when test="@handle = $entry">
<li><a href="{$root}/{$current-page}/{@handle}/" class="active"><xsl:value-of select="fields/title"/></a></li>
</xsl:when>
<xsl:otherwise>
<li><a href="{$root}/{$current-page}/{@handle}/"><xsl:value-of select="fields/title"/></a></li>
</xsl:otherwise>
</xsl:choose>
</xsl:for-each>

			</ul>
		</div><!-- END sectionsidebar -->

<div id="sectionimage">
<xsl:for-each select="content/entry[@handle=$current-page]">
<xsl:sort select="fields/sort"/>
<xsl:choose>
<xsl:when test="$entry='' and position() &lt;=1">
<img src="{$root}/{fields/image/item/path}" alt="{fields/title}" />
</xsl:when>
</xsl:choose>
</xsl:for-each>
<xsl:for-each select="content/entry[@handle=$entry]">
<img src="{$root}/{fields/image/item/path}" alt="{fields/title}" />
</xsl:for-each>
</div><!-- END sectionimage -->

	</div><!-- END section_box -->
</div><!-- END section -->

<div id="sectionhead">
<h2>Build<xsl:for-each select="content/entry[@handle = $entry]">
<xsl:text> : </xsl:text>
<xsl:value-of select="fields/title"/>
</xsl:for-each>
</h2>
</div><!-- END sectionhead -->

<div id="middle">
	<div id="box_content">
	
		<div id="content" class="content_1col">

<xsl:for-each select="content/entry[fields/section='Build']">
<xsl:sort select="fields/sort"/>
<xsl:choose>
<xsl:when test="@handle = $entry">
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
							<xsl:for-each select="/data/content/entry[fields/section='Build' and fields/sort = $sort-next]">
								<p class="entry_info">
									Next Page:
									<a href="{$root}/{$current-page}/{@handle}/">
									<xsl:value-of select="fields/title"/>
									</a>
								</p>
							</xsl:for-each>
						</xsl:if>
						<xsl:if test="fields/sort = $section-count">
							<xsl:for-each select="/data/content/entry[fields/section='About']">
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
<xsl:when test="$entry='' and position() &lt;=1">
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
						<xsl:for-each select="/data/content/entry[fields/section='Build' and fields/sort = 1]">
							<p class="entry_info">
								Next Page:
								<a href="{$root}/{$current-page}/{@handle}/">
								<xsl:value-of select="fields/title"/>
								</a>
							</p>
						</xsl:for-each>
					</div>
				</div>
</xsl:when>
</xsl:choose>
</xsl:for-each>
			 
		</div><!-- END content -->
				
	</div><!-- END #box_content -->
</div><!-- END #middle -->

</xsl:template>

</xsl:stylesheet>