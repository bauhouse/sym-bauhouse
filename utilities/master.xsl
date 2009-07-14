<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/page-title.xsl"/>
<xsl:import href="../utilities/navigation.xsl"/>
<xsl:import href="../utilities/date-time.xsl"/>
<xsl:import href="../utilities/fluidgrids.xsl"/>

<xsl:output method="xml"
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="yes"
	encoding="UTF-8"
	indent="yes" />

<xsl:variable name="is-logged-in" select="/data/events/login-info/@logged-in"/>

<xsl:template match="/">

<html>
	<head>
		<title>
			<xsl:call-template name="page-title"/>
		</title>
		<link rel="icon" type="images/png" href="{$workspace}/images/icons/bookmark.png" />
		<xsl:call-template name="grids-css"/>
		<link rel="alternate" type="application/rss+xml" href="/rss/" />
	</head>
	<body>
		<div id="header">
			<div id="branding">
				<h1><a href="."><xsl:value-of select="$website-name"/></a></h1>
			</div>
			<xsl:apply-templates select="data/navigation"/>
		</div>
		<div class="page">
			<div class="row">
				<div class="column col2of3">
					<div class="content">
						<p class="date">
							<xsl:call-template name="format-date">
								<xsl:with-param name="date" select="$today"/>
								<xsl:with-param name="format" select="'d'"/>
							</xsl:call-template>
							<span>
								<xsl:call-template name="format-date">
									<xsl:with-param name="date" select="$today"/>
									<xsl:with-param name="format" select="'m'"/>
								</xsl:call-template>
							</span>
						</p>
						<xsl:apply-templates/>
					</div>
				</div>
			</div>
			<ul id="footer" class="menu">
				<li>Orchestrated by <a class="symphony" href="http://symphony-cms.com/">Symphony</a></li>
				<li>Broadcasted via <a class="rss" href="{$root}/rss/">XML Feed</a></li>
			</ul>
		</div>
	</body>
</html>

</xsl:template>

</xsl:stylesheet>