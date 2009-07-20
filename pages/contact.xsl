<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/submenu.xsl"/>
<xsl:import href="../utilities/date-time.xsl"/>
<xsl:import href="../utilities/navigation.xsl"/>
<xsl:import href="../utilities/page-title.xsl"/>
<xsl:import href="../utilities/contact-email-form.xsl"/>
<xsl:import href="../utilities/system-messages.xsl"/>

<xsl:template match="data">

<div id="subheader">
	<ul id="submenu">
		<li class="right"><a href="{$root}/contact/" class="active">Contact</a></li>
	</ul>
</div><!-- END #submenu -->

<div id="sectionhead">
<h2>Contact</h2>
</div><!-- END sectionhead -->

<div id="middle">
	<div id="box_content">
	
		<div id="content" class="content_1col">

			<div class="entry">
				<div class="entry_data">
					<h4>Contact Form Notes</h4>
					<ul>
						<li>It's preferred to use the contact form rather than email. There is always a chance for emails to be picked up as spam.</li>
						<li>I will generally reply to messages within 24 hours unless I am horribly swamped.</li>
					</ul>
				</div><!-- END entry_data -->
				<div class="entry_body">
				<h2>Send me a message</h2>
					<xsl:call-template name="contact-email-form">
						<xsl:with-param name="owner" select="owner/author/@username"/>
					</xsl:call-template>
				</div>
			</div><!-- END entry -->
		

		</div><!-- END content -->
				
	</div><!-- END #box_content -->
</div><!-- END #middle -->
	
</xsl:template>

</xsl:stylesheet>