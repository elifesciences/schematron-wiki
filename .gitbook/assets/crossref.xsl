<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:c="http://www.crossref.org/schema/4.4.2" 
    xmlns:ai="http://www.crossref.org/AccessIndicators.xsd" 
    xmlns:ct="http://www.crossref.org/clinicaltrials.xsd" 
    xmlns:fr="http://www.crossref.org/fundref.xsd" 
    xmlns:jats="http://www.ncbi.nlm.nih.gov/JATS1" 
    xmlns:mml="http://www.w3.org/1998/Math/MathML" 
    xmlns:rel="http://www.crossref.org/relations.xsd" 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:output method="xml" indent="no"/>
    
    <xsl:template match="* | @* | text() | comment() | processing-instruction()">
        <xsl:copy>
            <xsl:apply-templates select="node()| @* | text() | comment() | processing-instruction()"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:variable name="dateTime" select="format-dateTime(current-dateTime() + xs:dayTimeDuration('PT30M'), '[Y0001][M01][D01][H01][m01][s01]')"/>
    
    <xsl:template match="c:doi_batch_id">
        <xsl:variable name="token" select="tokenize(.,'-')[last()]"/>
        <xsl:element namespace="http://www.crossref.org/schema/4.4.1" name="doi_batch_id">
            <xsl:value-of select="concat(substring-before(.,$token),$dateTime)"/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="c:timestamp">
        <xsl:element namespace="http://www.crossref.org/schema/4.4.1" name="timestamp">
            <xsl:value-of select="$dateTime"/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="rel:program">
        <xsl:variable name="count" select="count(rel:related_item)"/>
        <xsl:variable name="dryad-count" select="count(rel:related_item[starts-with(rel:inter_work_relation,'10.5061/dryad')])"/>
        <xsl:choose>
            <xsl:when test="$count = $dryad-count"/>
            <xsl:when test="$dryad-count lt $count">
                <xsl:element name="rel:program">
                    <xsl:for-each select="rel:related_item[not(starts-with(rel:inter_work_relation[@relationship-type='isSupplementedBy'],'10.5061/dryad'))]">
                        <xsl:copy-of select="."/>
                    </xsl:for-each>
                </xsl:element>
            </xsl:when>
            <xsl:otherwise/>
        </xsl:choose>
    </xsl:template>
    
</xsl:stylesheet>