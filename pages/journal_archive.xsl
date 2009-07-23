<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/submenu.xsl"/>
<xsl:import href="../utilities/date-time.xsl"/>
<xsl:import href="../utilities/navigation.xsl"/>
<xsl:import href="../utilities/page-title.xsl"/>
<xsl:import href="../utilities/list-archive-months.xsl"/>
<xsl:import href="../utilities/about-link.xsl"/>

<xsl:template match="data">
	<div id="sectionhead">
		<h2>Journal : Archive
			<xsl:if test="$year">
				<xsl:text>: </xsl:text>
				<xsl:call-template name="format-month">
					<xsl:with-param name="month" select="$month"/>
					<xsl:with-param name="format" select="'M'"/>
				</xsl:call-template>
				<xsl:text> </xsl:text>
				<xsl:value-of select="$year"/>
			</xsl:if>
		</h2>
	</div><!-- END sectionhead -->
	<div id="middle">
		<div id="box_content">
			<div id="content" class="content_2col">
				<div class="colA">
					<div id="articles">
						<xsl:apply-templates select="archive-entry-list/year/month/day/entry"/>
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
		</div><!-- END #box_content -->
	</div><!-- END #middle -->
</xsl:template>

<xsl:template name="archive-year-list">
	<xsl:param name="year-start"/>
	<xsl:param name="year-end"/>
	<xsl:param name="this-year"/>
	<xsl:param name="count" select="$year-end - $year-start"/>
	<xsl:param name="context-year" select="$year-end"/>
	<xsl:param name="is-active">
		<xsl:choose>
			<xsl:when test="$context-year = $this-year">active</xsl:when>
			<xsl:otherwise>not-active</xsl:otherwise>
		</xsl:choose>
	</xsl:param>
	<xsl:if test="$count &gt;= 0">
		<li><a class="{$is-active}" href="{$root}/archive/{$context-year}/"><xsl:value-of select="$context-year"/></a></li>
		<xsl:call-template name="archive-year-list">
			<xsl:with-param name="count" select="$count - 1"/>
			<xsl:with-param name="context-year" select="$context-year - 1"/>
			<xsl:with-param name="this-year" select="$this-year"/>
		</xsl:call-template>
	</xsl:if>
</xsl:template>

<xsl:template match="month">
	<xsl:param name="this-month"/>
	<xsl:param name="is-active">
		<xsl:choose>
			<xsl:when test="@value = $this-month">active</xsl:when>
			<xsl:otherwise>not-active</xsl:otherwise>
		</xsl:choose>
	</xsl:param>
	<li>
		<a class="{$is-active}" href="{$root}/archive/{../@value}/{@value}/">
			<xsl:call-template name="get-formatted-month">
				<xsl:with-param name="month" select="@value"/>
			</xsl:call-template>
			<xsl:text> </xsl:text>
			<small>(<xsl:value-of select="@entry-count"/>)</small>
		</a>
	</li>
</xsl:template>

<xsl:template match="archive-entry-list/year/month/day/entry">
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
			<p class="entry_info">
				<a href="{$root}/journal/{@handle}/">Read More</a>
			</p>
		</div><!-- END entry_body -->
	</div><!-- END entry -->
</xsl:template>

</xsl:stylesheet>