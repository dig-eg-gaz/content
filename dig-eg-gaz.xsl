<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="xs"
    version="1.0">
    
   
    
    <xsl:template match="/">
        <html lang="en-US" xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <title>Digital Egyptian Gazette</title>
                <link id="css" rel="stylesheet" type="text/css" href="dig-eg-gaz.css"/> <!-- put stylesheet here! -->
            </head>
            <body>
               <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    
    <!-- ************************************************ -->
    <!-- ********* specifications for teiHeader ********* -->
    <!-- ************************************************ -->
    
    <xsl:template match="tei:teiHeader">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="tei:fileDesc">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="tei:titleStmt"/>
    
    <xsl:template match="tei:edititionStmt"/>
    
    <xsl:template match="tei:publicationStmt/tei:publisher"/>
       
    
    
    <xsl:template match="tei:publicationStmt/tei:pubPlace"/>
        
    <xsl:template match="tei:edition/tei:date"/>
    
    <xsl:template match="tei:sourceDesc">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="tei:bibl">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="tei:title">
        <h1><xsl:apply-templates/></h1>
    </xsl:template>
    
    <xsl:template match="tei:bibl/tei:date">
        <h2><xsl:apply-templates/></h2>
    </xsl:template>
    
    <!-- ************************************************ -->
    <!-- ********* specifications for divs/heads ******** -->
    <!-- ************************************************ -->
    
    <xsl:template match="tei:text/body">
        <div><xsl:apply-templates/></div>
    </xsl:template>
    
    <xsl:template match="tei:div[@type='masthead']">
        <div class="masthead"><xsl:apply-templates/></div>
    </xsl:template>
    
    <xsl:template match="tei:div[@type='masthead']/tei:head">
        <h2 class="masthead"><xsl:apply-templates/></h2>
    </xsl:template>
    
    <xsl:template match="tei:div[@type='masthead']/tei:head[@type='sub']">
        <h3 class="masthead"><xsl:apply-templates/></h3>
    </xsl:template>
    
    <xsl:template match="tei:div[@scope='advertisement']">
        <div class="advert"><xsl:apply-templates/></div>
    </xsl:template>
    
    <xsl:template match="tei:div[@scope='advertisement']/tei:head">
        <h3 class="advert"><xsl:apply-templates/></h3>
    </xsl:template>
    
    <xsl:template match="tei:p">
        <p><xsl:apply-templates/></p>
    </xsl:template>
    
    <!-- ************************************************ -->
    <!-- *********** specifications for tables ********** -->
    <!-- ************************************************ -->
    
    <xsl:template match="tei:table">
        <table><xsl:apply-templates/></table>
    </xsl:template>
    
    <xsl:template match="tei:table/tei:head">
        <tr>
            <th><xsl:apply-templates/></th>
        </tr>
    </xsl:template>
    
    <xsl:template match="tei:row">
        <tr><xsl:apply-templates/></tr>
    </xsl:template>
    
    <xsl:template match="tei:cell">
        <xsl:variable name="colspan" select="@cols"/>
        <xsl:choose>
            <xsl:when test="@cols">
                <td><xsl:attribute name="colspan">
                    <xsl:value-of select="$colspan"/>
                </xsl:attribute>
                <xsl:apply-templates/></td>
            </xsl:when>
            <xsl:otherwise>
                <td><xsl:apply-templates/></td>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <!-- July 3 1905 -->
    
</xsl:stylesheet>