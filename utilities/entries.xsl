<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="entry">
	<xsl:param name="format" select="'more'"/>

	<div class="entry">
		<p class="entry_data">
			<xsl:call-template name="get-formatted-month">
				<xsl:with-param name="date" select="date"/>
			</xsl:call-template>
			<xsl:text> </xsl:text>
			<span>
				<xsl:call-template name="get-formatted-day">
					<xsl:with-param name="date" select="date"/>
					<xsl:with-param name="format-type" select="'short'"/>
				</xsl:call-template>
			</span>
		</p>

	<div class="entry_body">
		<h2><a href="{$root}/journal/{@handle}/"><xsl:value-of select="fields/title"/></a></h2>
		<xsl:copy-of select="fields/body/*"/>
		<xsl:if test="$format = 'more'">
			<xsl:if test="fields/photo/item">
				<div id="image-block">
					<xsl:apply-templates select="fields/photo/item"/>
				</div>
			</xsl:if>
			<xsl:copy-of select="fields/more/*"/>
		</xsl:if>
		<xsl:if test="$format = 'brief'">
			<p class="entry_info">
				<a href="{$root}/journal/{@handle}/">Read More</a>
				<xsl:text>. </xsl:text>
				<a href="{$root}/journal/{@handle}/#comments">
					<xsl:choose>
						<xsl:when test="comments/@count = 0">No comments made.</xsl:when>
						<xsl:when test="comments/@count = 1">1 comment.</xsl:when>
						<xsl:otherwise><xsl:value-of select="comments/@count"/> comments.</xsl:otherwise>
					</xsl:choose>
				</a>
			</p>
			<p class="entry_info">Filed Under: <xsl:apply-templates select="categories/item"/></p>
		</xsl:if>
		<xsl:if test="$format = 'more'">
			<p class="entry_info"><em>Total Number of Words: <xsl:value-of select="fields/body/@word-count + number(fields/more/@word-count)"/></em></p>
		</xsl:if>
		</div><!-- END entry_body -->
	</div><!-- END entry -->
</xsl:template>

<xsl:template match="fields/photo/item">
	<xsl:param name="path" select="substring-after(path,'workspace/')"/>
	<a href="{$root}/image/{$path}"><img src="{$root}/image/85/0/1/fff/{$path}" alt="Image Associated to {../../title}"/></a>
</xsl:template>

<xsl:template match="categories/item">
	<xsl:value-of select="."/>
	<xsl:if test="position() != last()">, </xsl:if>
</xsl:template>

</xsl:stylesheet>