<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <head>
      <title>SVG</title>
    </head>
    <body>
      <xsl:apply-templates/>
    </body>
  </html>
</xsl:template>

<xsl:template match="root">
  <xsl:apply-templates/>
</xsl:template>

<xsl:template match="графика">
  <xsl:variable name="width">
    <xsl:value-of select="@ширина"/>
  </xsl:variable>
  <xsl:variable name="height">
    <xsl:value-of select="@высота"/>
  </xsl:variable>
  <svg width="{$width}" height="{$height}">
    <xsl:apply-templates/>
  </svg>
</xsl:template>

<xsl:template match="эллипс">
  <xsl:variable name="id">
    <xsl:value-of select="@id"/>
  </xsl:variable>
  <xsl:variable name="fill">
    <xsl:value-of select="@заливка"/>
  </xsl:variable>
  <xsl:variable name="stroke">
    <xsl:value-of select="@ободок"/>
  </xsl:variable>
  <xsl:variable name="stroke-width">
    <xsl:value-of select="@ширина-ободка"/>
  </xsl:variable>
  <xsl:variable name="cx">
    <xsl:value-of select="@cx"/>
  </xsl:variable>
  <xsl:variable name="cy">
    <xsl:value-of select="@cy"/>
  </xsl:variable>
  <xsl:variable name="rx">
    <xsl:value-of select="@rx"/>
  </xsl:variable>
  <xsl:variable name="ry">
    <xsl:value-of select="@ry"/>
  </xsl:variable>
  <ellipse id="{$id}" fill="{$fill}" stroke="{$stroke}" stroke-width="{$stroke-width}" cx="{$cx}" cy="{$cy}" rx="{$rx}" ry="{$ry}"/>
</xsl:template>
</xsl:stylesheet>