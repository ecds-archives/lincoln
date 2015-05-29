<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:html="http://www.w3.org/TR/REC-html40" 
	xmlns:xq="http://metalab.unc.edu/xq/"
	xmlns:tei="http://www.tei-c.org/ns/1.0"
	xmlns:exist="http://exist.sourceforge.net/NS/exist">

  <xsl:output method="xml"/>
<xsl:param name="doc_id"/>
<xsl:param name="image_id"/>
<xsl:variable name="graphicsPrefix">http://beck.library.emory.edu/lincoln/image-content/</xsl:variable><!-- change this when we know where images are stored for prod -->
<xsl:variable name="graphicsSuffix">.jpg</xsl:variable>

<xsl:template match="/"> <!-- get everything -->
<xsl:apply-templates/>
</xsl:template>

<xsl:template match="node()|@*">
   <xsl:copy>
   <xsl:apply-templates select="@*"/>
   <xsl:apply-templates/>
   </xsl:copy>
 </xsl:template>
<!-- <xsl:template match ="tei:pb"> -->
<!-- <h2><xsl:value-of select="//tei:author"/><xsl:text>, </xsl:text><xsl:value-of select="//tei:title"/><xsl:text> - Page </xsl:text><xsl:value-of select="tei:pb/@n"/></h2> -->
<!-- <br/> -->
<!-- <xsl:element name="img"> -->
<!--    <xsl:attribute name="src"><xsl:value-of select="graphicsPrefix"/><xsl:value-of select="tei:pb/@facs"/></xsl:attribute> -->
<!-- </xsl:element> -->
<!-- </xsl:template> -->

<!-- print next/previous link  -->
<!-- <xsl:template match="field"> -->
<!-- <xsl:param name="prev"><xsl:value-of select="tei:pb[1]/@facs"/></xsl:param> -->
<!-- <xsl:param name="prevpage"><xsl:value-of select="tei:pb[1]/@n"/></xsl:param> -->
<!-- <xsl:param name="next"><xsl:value-of select="tei:pb[2]/@facs"/></xsl:param> -->
<!-- <xsl:param name="nextpage"><xsl:value-of select="tei:pb[2]/@n"/></xsl:param> -->
<!--   <table width="80%" border="0" cellpadding="0" cellspacing="0"> -->
<!--     <tr> -->
<!--       <td width="150" align="right"> -->
<!-- 	<xsl:if test="$prev"> -->
<!-- 	  <xsl:element name="a"> -->
<!-- 	      <xsl:attribute name="href"><xsl:value-of select="$doc_id"/><xsl:text>/</xsl:text><xsl:value-of select="$prev"/></xsl:attribute> -->
<!-- 	      <xsl:text>&gt;&gt; Previous: page </xsl:text><xsl:value-of select="$prevpage"/> -->
<!-- 	  </xsl:element> -->
<!-- 	</xsl:if> -->
<!--       </td>     -->
<!--       <td width="150" align="left"> -->
<!-- 	<xsl:if test="$next"> -->
<!-- 	  <xsl:element name="a"> -->
<!-- 	      <xsl:attribute name="href"><xsl:value-of select="$doc_id"/><xsl:text>/</xsl:text><xsl:value-of select="$next"/></xsl:attribute> -->
<!-- 	      <xsl:text>&gt;&gt; Next: page </xsl:text><xsl:value-of select="$nextpage"/> -->
<!-- 	  </xsl:element> -->
<!-- 	</xsl:if> -->
<!--       </td>     -->
<!-- 	</tr> -->
<!-- </table> -->
<!-- </xsl:template> -->
</xsl:stylesheet>
