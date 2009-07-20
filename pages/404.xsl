<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../utilities/date-time.xsl"/>
<xsl:import href="../utilities/navigation.xsl"/>
<xsl:import href="../utilities/page-title.xsl"/>

<xsl:template match="data">
	<div id="sectionhead">
		<h2>Error</h2>
	</div><!-- END sectionhead -->
	<div id="middle">
		<div id="box_content">
			<div id="content" class="content_1col">
				<div class="entry">
					<div class="entry_data">
						<h4>404 Error</h4>
					</div><!-- END entry_data -->
					<div class="entry_body">
						<h2>Page Not Found</h2>
						<p>The page you are looking for does not exist. If you have followed this page from a link, please let the webmaster know. Otherwise, please make sure that the URL you haven entered is correct.</p>
						<p class="entry_info"><span>Search</span><a href="{$root}/journal/archive/">You may find what you are looking for in the archive.</a></p>
					</div>
				</div><!-- END entry -->
			</div><!-- END content -->
		</div><!-- END #box_content -->
	</div><!-- END #middle -->
</xsl:template>

</xsl:stylesheet>