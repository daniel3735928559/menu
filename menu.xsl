<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="menuitem">
		<xsl:param name="current" />
		<div class="menu_item">
			<a>
				<xsl:attribute name="href"><xsl:value-of select="@url" /></xsl:attribute>
				<xsl:attribute name="class"><xsl:choose><xsl:when test="@url=$current">current</xsl:when><xsl:otherwise>other</xsl:otherwise></xsl:choose></xsl:attribute>
				<xsl:value-of select="@text" />
			</a>
			(<xsl:value-of select="count(./menuitem)" />)
		</div>
		<xsl:if test="count(./menuitem) > 0 and descendant-or-self::menuitem[@url=$current]">
			<div style="padding-left:1em;"><xsl:apply-templates select="menuitem"><xsl:with-param name="current" select="$current" /></xsl:apply-templates></div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="menu">
		<xsl:param name="current" />
		<div class="menu"><b>Navigation Links:</b><br /><br />
			<xsl:apply-templates select="menuitem"><xsl:with-param name="current" select="$current" /></xsl:apply-templates>
		</div>
	</xsl:template>
</xsl:stylesheet>
