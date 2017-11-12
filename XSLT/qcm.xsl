<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" encoding="ISO-8859-1"/>

<xsl:template match="qcm">
<html>
	<head>
	</head>
	<body>
		<h1>Mon super quizz !</h1>
		<form method="post" action="http://localhost/~jbressand/correction.php">
			<xsl:apply-templates />
			<br/><input type="submit" value="Valider"></input>
		</form>
	</body>
</html>
</xsl:template>

<xsl:template match="question">
	<p><xsl:value-of select="libelle"/></p>
	<xsl:choose>
	<xsl:when test="count(*[@score > 0]) > 1">
		<xsl:apply-templates select="choix" mode="check"/>
		<input type="checkbox" name="{concat('q', count(preceding::question)+1)}[]" value="[0,{count(child::choix)+1}]" checked="checked"></input>Je ne sais pas
	</xsl:when>
	<xsl:otherwise>
		<xsl:apply-templates select="choix" mode="radio"/>
		<input type="radio" name="{concat('q', count(preceding::question)+1)}[]" value="[0,{count(child::choix)+1}]" checked="checked"></input>Je ne sais pas
	</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template match="choix" mode="check">
	<input type="checkbox" name="{concat('q', count(preceding::question)+1)}[]" value="[{./@score},{count(preceding::choix)-count(../preceding::choix)+1}]"></input><xsl:value-of select="."/><br/>
</xsl:template>

<xsl:template match="choix" mode="radio">
	<input type="radio" name="{concat('q', count(preceding::question)+1)}[]" value="[{./@score},{count(preceding::choix)-count(../preceding::choix)+1}]"></input><xsl:value-of select="."/><br/>
</xsl:template>

</xsl:stylesheet>
