<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="navigation">
	<!--ul id="menu" class="nav main-nav"-->
	<ul id="navigation" class="nav">
		<xsl:apply-templates select="page[not(types/type = 'hidden') and not(types/type = 'admin')]"/>
		<xsl:if test="/data/events/login-info/@logged-in = 'true'">
			<li><a href="{$root}/drafts/">Drafts</a></li>
			<li><a href="{$root}/symphony/">Admin</a></li>
			<li><a href="?debug">Debug</a></li>
			<li>
				<a href="?debug">Dropdown</a>
				<ul>
					<li><a href="#">Menu 1</a></li>
					<li><a href="#">A Longer Menu Item 2</a></li>
					<li><a href="#">An even longer menu item goes here</a></li>
					<li><a href="#">Menu 4</a></li>
				</ul>
			</li>
		</xsl:if>
	</ul>
</xsl:template>

<xsl:template match="page">
	<li>
		<a href="{$root}/{@handle}/">
			<xsl:if test="@handle = $current-page">
				<xsl:attribute name="class">active</xsl:attribute>
			</xsl:if>
			<xsl:value-of select="name"/>
		</a>
	</li>
</xsl:template>

</xsl:stylesheet>