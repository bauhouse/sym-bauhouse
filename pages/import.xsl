<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:exsl="http://exslt.org/common"
    xmlns:form="http://nick-dunn.co.uk/xslt/form-controls"
    extension-element-prefixes="exsl form">
    
<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../utilities/form-controls.xsl"/>

<xsl:output method="xml"
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="yes"
	encoding="UTF-8"
	indent="yes" />

<xsl:param name="datasource" select="document('../assets/xml/portfolio.xml')"/>
<xsl:param name="datasource-entries" select="$datasource/portfolio/entry"/>
<xsl:param name="selected-entry">
	<xsl:choose>
		<xsl:when test="$a"><xsl:value-of select="$a"/></xsl:when>
		<xsl:otherwise>1</xsl:otherwise>
	</xsl:choose>
</xsl:param>

<!-- Define a global variable pointing to your Event -->
<xsl:variable name="event" select="/data/events/save-portfolio"/>

<!-- Define a global variable pointing to the XML data to import -->
<xsl:variable name="values" select="$datasource-entries[number($selected-entry)]"/>

<xsl:template match="data">
	<xsl:param name="sym-data" select="/"/>
	<xsl:param name="total-entries" select="count($datasource-entries)"/>

	<div id="middle">
		<div id="box_content">
			<div id="content" class="content_2col">
				<div class="colA">
					<h2>Import</h2>
					<div id="articles">
						<xsl:apply-templates select="section-schema[@handle='portfolio']" mode="form"/>
					</div><!-- End articles -->
				</div><!-- End colA -->
				<div class="colB">
					<div class="lists">
						<h3>Select an Entry</h3>
						<ul class="menu">
							<xsl:if test="$a and $a &gt; 1">
								<li><a href="{$root}/import/{$a - 1}/">Previous</a></li>
							</xsl:if>
							<xsl:choose>
								<xsl:when test="$a &lt; $total-entries">
									<li><a href="{$root}/import/{$a + 1}/">Next</a></li>
								</xsl:when>
								<xsl:when test="not($a)">
									<li><a href="{$root}/import/{2}/">Next</a></li>
								</xsl:when>
							</xsl:choose>
						</ul>
						<h3>Select an Entry by Title</h3>
						<ul class="menu">
							<xsl:for-each select="$datasource-entries">
								<li>
									<xsl:if test="$a = position() or not($a) and position() = 1">
										<xsl:attribute name="class">current</xsl:attribute>
									</xsl:if>
									<a href="{$root}/import/{position()}/"><xsl:value-of select="fields/title"/></a>
								</li>
							</xsl:for-each>
						</ul>
					</div><!-- End lists -->
				</div><!-- End colB -->
			</div><!-- END content -->
		</div><!-- END #box_content -->
	</div><!-- END #middle -->
</xsl:template>

<xsl:template name="csv-tags-input">
	<xsl:param name="tags"/>
	<xsl:param name="csv-tags">
		<xsl:call-template name="csv-values">
			<xsl:with-param name="values" select="$tags"/>
		</xsl:call-template>
	</xsl:param>
	<input name="fields[tags]" type="text" value="{$csv-tags}"/>
</xsl:template>

<xsl:template name="csv-values">
	<xsl:param name="values"/>
	<xsl:for-each select="$values">
		<xsl:value-of select="."/><xsl:if test="position() != last()"><xsl:text>, </xsl:text></xsl:if>
	</xsl:for-each>
</xsl:template>

<xsl:template match="section-schema" mode="form">

	<form action="" method="post">
		
		<xsl:call-template name="form:validation-summary">
			<xsl:with-param name="event" select="$event"/>
		</xsl:call-template>
		
		<xsl:if test="*[@location='main']">
			<div id="main">			
				<xsl:apply-templates select="*[@location='main']" mode="control">
					<xsl:sort select="@sortorder" data-type="number" order="ascending"/>
				</xsl:apply-templates>
			</div>
		</xsl:if>
		
		<xsl:if test="*[@location='sidebar']">
			<div id="sidebar">			
				<xsl:apply-templates select="*[@location='sidebar']" mode="control">
					<xsl:sort select="@sortorder" data-type="number" order="ascending"/>
				</xsl:apply-templates>
			</div>
		</xsl:if>

		<input type="submit" name="action[publish-article]" value="Submit" class="submit-button" />

	</form>
	
</xsl:template>

<xsl:template match="*" mode="control">
	
    <xsl:param name="name" select="name()"/>

	<xsl:choose>
		
		<xsl:when test="@type='input' or @type='order_entries' or @type='number'">
			<xsl:call-template name="form:label">
				<xsl:with-param name="event" select="$event"/>
				<xsl:with-param name="for" select="name()"/>
				<xsl:with-param name="text" select="@label"/>
				<xsl:with-param name="child">
					<xsl:call-template name="form:input">
						<xsl:with-param name="event" select="$event"/>
						<xsl:with-param name="handle" select="name()"/>
						<xsl:with-param name="value" select="$values/fields/*[name() = $name]"/>
					</xsl:call-template>
				</xsl:with-param>
			</xsl:call-template>	
		</xsl:when>
		
		<xsl:when test="@type='upload' or @type='hashupload'">
			<xsl:call-template name="form:label">
				<xsl:with-param name="event" select="$event"/>
				<xsl:with-param name="for" select="name()"/>
				<xsl:with-param name="text" select="@label"/>
				<xsl:with-param name="child">
					<xsl:call-template name="form:input">
						<xsl:with-param name="event" select="$event"/>
						<xsl:with-param name="handle" select="name()"/>
						<xsl:with-param name="type" select="'file'"/>
					</xsl:call-template>
				</xsl:with-param>
			</xsl:call-template>	
		</xsl:when>
		
		<xsl:when test="@type='textarea'">
			<xsl:call-template name="form:label">
				<xsl:with-param name="event" select="$event"/>
				<xsl:with-param name="for" select="name()"/>
				<xsl:with-param name="text" select="@label"/>
				<xsl:with-param name="child">
					<xsl:call-template name="form:textarea">
						<xsl:with-param name="event" select="$event"/>
						<xsl:with-param name="handle" select="name()"/>
						<xsl:with-param name="rows" select="size"/>
						<xsl:with-param name="value" select="$values/fields/*[name() = $name]"/>
					</xsl:call-template>
				</xsl:with-param>
			</xsl:call-template>
		</xsl:when>
		
		<xsl:when test="@type='select' or @type='selectbox_link' or @type='pages' or @type='author'">
			<xsl:call-template name="form:label">
				<xsl:with-param name="event" select="$event"/>
				<xsl:with-param name="for" select="name()"/>
				<xsl:with-param name="text" select="@label"/>
				<xsl:with-param name="child">
					<xsl:call-template name="form:select">
						<xsl:with-param name="event" select="$event"/>
						<xsl:with-param name="handle" select="name()"/>
						<xsl:with-param name="multiple" select="allow_multiple_selection"/>
						<xsl:with-param name="options" select="options/*"/>
						<xsl:with-param name="value" select="$values/fields/*[name() = $name]"/>
					</xsl:call-template>
				</xsl:with-param>
			</xsl:call-template>
		</xsl:when>
		
		<xsl:when test="@type='taglist'">
			<xsl:call-template name="form:label">
				<xsl:with-param name="event" select="$event"/>
				<xsl:with-param name="for" select="name()"/>
				<xsl:with-param name="text" select="@label"/>
				<xsl:with-param name="child">
					<xsl:call-template name="form:input">
						<xsl:with-param name="event" select="$event"/>
						<xsl:with-param name="handle" select="name()"/>
					</xsl:call-template>					
					<xsl:for-each select="options/option">
						<span><xsl:value-of select="."/></span>
						<xsl:text> </xsl:text>
					</xsl:for-each>					
				</xsl:with-param>
			</xsl:call-template>	
		</xsl:when>
		
		<xsl:when test="@type='checkbox'">
			<xsl:call-template name="form:label">
				<xsl:with-param name="event" select="$event"/>
				<xsl:with-param name="for" select="name()"/>
				<xsl:with-param name="class" select="'checkbox'"/>
				<xsl:with-param name="text">
					<xsl:choose>
						<xsl:when test="description">
							<xsl:value-of select="description"/>
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="@label"/>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:with-param>
				<xsl:with-param name="child">
					<xsl:call-template name="form:checkbox">
						<xsl:with-param name="event" select="$event"/>
						<xsl:with-param name="handle" select="name()"/>
						<xsl:with-param name="checked-by-default">
							<xsl:if test="default_state='on'">
								<xsl:text>yes</xsl:text>
							</xsl:if>
						</xsl:with-param>
					</xsl:call-template>
				</xsl:with-param>
				<xsl:with-param name="child-position" select="'before'"/>
			</xsl:call-template>
		</xsl:when>

	</xsl:choose>
	
</xsl:template>
	
</xsl:stylesheet>