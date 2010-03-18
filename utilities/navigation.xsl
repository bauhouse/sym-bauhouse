<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="navigation">
	<ul class="menu">
		<xsl:apply-templates select="data/navigation/page[types/type = 'main']"/>
	</ul>
</xsl:template>

<xsl:template match="data/navigation/page">
	<li>
		<a href="{$root}/{@handle}/">
			<xsl:if test="@handle = 'home'">
				<xsl:attribute name="href"><xsl:value-of select="concat($root,'/')"/></xsl:attribute>
			</xsl:if>
			<xsl:if test="@handle = $root-page">
				<xsl:attribute name="class">active</xsl:attribute>
			</xsl:if>
			<xsl:value-of select="name"/>
		</a>
	</li>
</xsl:template>

<xsl:template match="data/navigation/page" mode="select-tabs">
	<li>
		<a href="{$root}/{@handle}/" id="{@handle}Tab">
			<xsl:if test="$root-page = @handle"><xsl:attribute name="class">active</xsl:attribute></xsl:if>
			<xsl:value-of select="name"/>
		</a>
	</li>
</xsl:template>

<xsl:template match="data/navigation/page/page">
	<li>
		<a href="{$root}/{../@handle}/{@handle}/">
			<xsl:if test="@handle = $current-page">
				<xsl:attribute name="class">active</xsl:attribute>
			</xsl:if>
			<xsl:value-of select="name"/>
		</a>
	</li>
</xsl:template>

<xsl:template name="previous-next-links">
	<xsl:choose>
		<xsl:when test="$current-page = 'category' or $current-page = 'archive'"></xsl:when>
		<xsl:when test="$parent-path = '/design'">
			<xsl:call-template name="design-previous-next-links" />
		</xsl:when>
		<xsl:otherwise>
			<xsl:call-template name="section-previous-next-links" />
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="section-previous-next-links">
	<li class="right">
		<xsl:choose>
			<xsl:when test="/data/next-section/entry">
				<xsl:call-template name="next-link">
					<xsl:with-param name="title" select="'Next'"/>
				</xsl:call-template>
			</xsl:when>
			<xsl:otherwise>
				<a href="{$root}/">Next</a>
			</xsl:otherwise>
		</xsl:choose>
	</li>
	<xsl:if test="/data/previous-section/entry">
		<li class="right">
			<xsl:call-template name="previous-link">
				<xsl:with-param name="title" select="'Previous'"/>
			</xsl:call-template>
		</li>
	</xsl:if>
</xsl:template>

<xsl:template name="previous-link">
	<xsl:param name="previous-page" select="/data/previous-section/entry" />
	<xsl:param name="previous-page-id" select="$previous-page/page/page/@id" />
	<xsl:param name="title" select="$previous-page/page/page" />
	<xsl:apply-templates select="/data/navigation/page[@id = $previous-page-id]" mode="previous-next">
		<xsl:with-param name="title" select="$title"/>
	</xsl:apply-templates>
	<xsl:apply-templates select="/data/navigation/page/page[@id = $previous-page-id]" mode="previous-next">
		<xsl:with-param name="title" select="$title"/>
	</xsl:apply-templates>
</xsl:template>

<xsl:template name="next-link">
	<xsl:param name="next-page" select="/data/next-section/entry" />
	<xsl:param name="next-page-id" select="$next-page/page/page/@id" />
	<xsl:param name="title" select="$next-page/page/page" />
	<xsl:apply-templates select="/data/navigation/page[@id = $next-page-id]" mode="previous-next">
		<xsl:with-param name="title" select="$title"/>
	</xsl:apply-templates>
	<xsl:apply-templates select="/data/navigation/page/page[@id = $next-page-id]" mode="previous-next">
		<xsl:with-param name="title" select="$title"/>
	</xsl:apply-templates>
</xsl:template>

<xsl:template match="/data/navigation/page" mode="previous-next">
	<xsl:param name="title" select="''" />
	<a href="{$root}/{@handle}/">
		<xsl:value-of select="$title"/>
	</a>
</xsl:template>

<xsl:template match="/data/navigation/page/page" mode="previous-next">
	<xsl:param name="title" select="''" />
	<a href="{$root}/{../@handle}/{@handle}/">
		<xsl:value-of select="$title"/>
	</a>
</xsl:template>

</xsl:stylesheet>