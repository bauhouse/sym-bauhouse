<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="contact-email-form">
	<xsl:param name="owner"/>
	<form action="" method="post">
		<xsl:apply-templates select="events/send-email"/>
		<label>Your Name <input name="name" /></label>
		<label>Your Email <input name="email" /></label>
		<label>Subject<input name="subject" /></label>
		<label>Message<textarea name="message" rows="5" cols="21"></textarea></label>
		<input type="hidden" name="recipiant-username" value="{$owner}" />
		<input id="submit" type="submit" name="action[send-email]" value="Send Message" />
	</form>
</xsl:template>

</xsl:stylesheet>