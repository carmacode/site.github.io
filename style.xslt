<?xml version="1.0" encoding="utf-8"?>
<?xml-stylesheet type=«text/xsl» href=«style.xslt»?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:msxsl="urn:schemas-microsoft-com:xslt"
exclude-result-prefixes="msxsl">
<?xml-stylesheet type=«text/xsl» href=«style.xslt»?>
 
 <xsl:template match="document">
  <html>
   <head><title><xsl:value-of select="header" /></title></head>
   <body><xsl:apply-templates select="items" /></body>
  </html>
 </xsl:template>
 
 <xsl:template match="items">
  <ul><xsl:apply-templates select="item" /></ul>
 </xsl:template>
 
 <xsl:template match="item">
  <li><a>
    <xsl:attribute name="href">
     http:// <xsl:value-of select="name"/>
    </xsl:attribute>
    <xsl:value-of select="name"/>
   </a> - <xsl:value-of select="description"/>
<li> </xsl:template>
 
</xsl:stylesheet>
