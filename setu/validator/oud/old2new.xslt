<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron">
			<xsl:copy-of select="/sch:schema/@*"/> <!-- this copies all attributes -->
			<xsl:copy-of select="/sch:schema/sch:title"/>
			<xsl:copy-of select="/sch:schema/sch:ns"/>
			<xsl:copy-of select="//sch:pattern[@id='codes']"/>
			
			<sch:pattern id="default">
				<xsl:for-each select="//sch:pattern/sch:rule">
					<sch:rule>
						<xsl:attribute name="id"><xsl:value-of select="../@id"/></xsl:attribute>
						<xsl:attribute name="fpi"><xsl:value-of select="../sch:title"/></xsl:attribute>
						<xsl:attribute name="context"><xsl:value-of select="@context"/></xsl:attribute>
						<xsl:attribute name="flag"><xsl:value-of select="sch:assert[1]/@flag"/></xsl:attribute>
						<xsl:for-each select="sch:assert">
							<sch:assert>
								<xsl:attribute name="test"><xsl:value-of select="@test"/></xsl:attribute>
								<xsl:copy-of select="//sch:diagnostics/sch:diagnostic[@id = current()/@diagnostics][@xml:lang = 'en']/node()"/>
							</sch:assert>
						</xsl:for-each>
					</sch:rule>
				</xsl:for-each>
			</sch:pattern>
		</sch:schema>
	</xsl:template>
	
	<!-- <xsl:apply-templates select="@*|node()"/> -->
	<xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>
