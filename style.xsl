<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="menu.xsl" />
	<xsl:param name="PageUrl" />
	<xsl:template match="/">
		<html>
			<head>
				<link rel="stylesheet" type="text/css" href="style.css" />
				<title>Hello</title>
			</head>
			<body>
				<div class="all">
					<xsl:apply-templates select="document('menu.xml')/menu">
						<xsl:with-param name="current" select="page/@uri" />
					</xsl:apply-templates>
					<xsl:apply-templates select="page" />
				</div>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="page">
		<xsl:copy-of select="./*" />
		<!--<xsl:copy-of select="./*[not(name()='category')]" />-->
	</xsl:template>
</xsl:stylesheet>
