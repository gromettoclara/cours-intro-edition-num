<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    
    <xsl:template match="/">
        <head>
            <style>
                body {font-family: Georgia, serif; line-height: 1,6; max-width: 800px; margin: 40px auto; padding: 20px }
                .titre {font-weight: bold; margin: 20px 0}
            </style>
            <title>Edition d'exemple pour montrer XSLT</title>
        </head>
        <body>
            <h1>Edition d'exemple pour montrer XSLT</h1>
            <xsl:apply-templates select="//tei:ab"/>
        </body>
    </xsl:template>
    
    <xsl:template match="tei:ab">
        <div>
            <p class="titre"><xsl:value-of select="tei:title"/></p>
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="tei:app">
        <xsl:apply-templates select="tei:lem"/>
    </xsl:template>
    
    <xsl:template match="tei:lem">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="tei:rdg"/>
        
    <xsl:template match="text()">
        <xsl:value-of select="."/>
    </xsl:template>
    
</xsl:stylesheet>

