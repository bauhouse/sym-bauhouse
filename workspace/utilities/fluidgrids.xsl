<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="grids-css">
	<xsl:param name="css-path" select="concat($workspace, '/fluidgrids/css/')"/>
	<link rel="stylesheet" type="text/css" media="all" href="{$css-path}reset.css" />
	<link rel="stylesheet" type="text/css" media="all" href="{$css-path}text.css" />
	<link rel="stylesheet" type="text/css" media="all" href="{$css-path}grids.css" />
	<link rel="stylesheet" type="text/css" media="all" href="{$css-path}nav.css" />
	<link rel="stylesheet" type="text/css" media="all" href="{$css-path}tabs.css" />
	<link rel="stylesheet" type="text/css" media="all" href="{$css-path}layout.css" />
	<link rel="stylesheet" type="text/css" media="all" href="{$css-path}colors.css" />
</xsl:template>

</xsl:stylesheet>