<?xml version="1.0" encoding="UTF-8"?>

<html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<body style="font-family:Arial;font-size:12pt;background-color:#EEEEEE">

<h2 style = "text-align: center" > Module Specification </h2>

<a style = "background-color:teal;color:white; padding:14px; "   href="/modulerecords">Return To Module Rcords</a>

  <table style="border-spacing: 50px, 50px; background-color:teal; color:white; padding:14px; width: 1000px; margin-left:auto; margin-right:auto; margin-bottom:1em;"> 
  <xsl:for-each select="Root/ModuleSpec">

    <tr style = "vertical-align: top">
      <th style = "width: 200px">  </th>
      <th style = "width: 800px">  </th>
    </tr>

    <tr style = "vertical-align: top">
      <td colspan = "2" style = "padding: 8px;text-align: left; font-size:30pt"> <xsl:value-of select="Code_of_Module"/></td>
    </tr>
		
    <tr style = "vertical-align: top"> 
      <td colspan = "2" style = "padding: 8px;text-align: left; font-size:25pt"> <xsl:value-of select="Title_of_Module"/></td>
    </tr>

    <tr style = "vertical-align: top"> 
      <td colspan = "2" style = "padding: 8px;text-align: left; font-size:14pt"> <xsl:value-of select="Number_of_Credits"/></td>
    </tr>

    <tr style = "vertical-align: top"> 
      <td colspan = "2" style = "padding: 8px;text-align: left; font-size:14pt"> <xsl:value-of select="Assessment"/></td>
    </tr>

    <tr style = "vertical-align: top">
      <td style = "padding: 8px; text-align: left; font-size:14pt"> MODULE LEADER: </td>
      <td style = "padding: 8px; text-align: left; font-size:14pt"> <xsl:value-of select="Module_Leader"/></td>
    </tr>

    <tr style = "vertical-align: top">
      <td style = "padding: 8px; text-align: left; font-size:14pt"> MODULE TUTORS: </td>
      <td style = "padding: 8px; text-align: left; font-size:14pt"> <xsl:value-of select="Tutor"/></td>
    </tr>

    <tr style = "vertical-align: top">
      <td colspan = "2" style = "padding: 8px; text-align: left; font-size:14pt"> MODULE AIMS: </td>
    </tr>

    <tr style = "vertical-align: top"> 
      <td colspan = "2" style = "padding: 8px;text-align: left; font-size:12pt"> <xsl:value-of select="Module_Aims"/></td>
    </tr>

    <tr style = "vertical-align: top"> 
      <td colspan = "2" style = "padding: 8px;text-align: left; font-size:14pt"> ASSESSED LEARNING OUTCOMES (ALO): </td>
    </tr>

        <tr style = "vertical-align: top"> 
      <td colspan = "2" style = "padding: 8px;text-align: left; font-size:12pt"> <xsl:value-of select="Assessed_Learning_Outcomes_ALO1"/></td>
    </tr>

        <tr style = "vertical-align: top"> 
      <td colspan = "2" style = "padding: 8px;text-align: left; font-size:12pt"> <xsl:value-of select="Assessed_Learning_Outcomes_ALO2"/></td>
    </tr>

            <tr style = "vertical-align: top"> 
      <td colspan = "2" style = "padding: 8px;text-align: left; font-size:12pt"> <xsl:value-of select="Assessed_Learning_Outcomes_ALO3"/></td>
    </tr>

            <tr style = "vertical-align: top"> 
      <td colspan = "2" style = "padding: 8px;text-align: left; font-size:12pt"> <xsl:value-of select="Assessed_Learning_Outcomes_ALO4"/></td>
    </tr>

            <tr style = "vertical-align: top"> 
      <td colspan = "2" style = "padding: 8px;text-align: left; font-size:12pt"> <xsl:value-of select="Assessed_Learning_Outcomes_ALO5"/></td>
    </tr>

    <tr style = "vertical-align: top"> 
      <td colspan = "2" style = "padding: 8px;text-align: left; font-size:14pt"> OVERVIEW </td>
    </tr>

    <tr style = "vertical-align: top"> 
      <td colspan = "2" style = "padding: 8px;text-align: left; font-size:12pt"> <xsl:value-of select="Overview"/></td>
    </tr>


    <tr style = "vertical-align: top"> 
      <td colspan = "2" style = "padding: 8px;text-align: left; font-size:14pt"> MODULE DELIVERY </td>
    </tr>

    <tr style = "vertical-align: top"> 
      <td colspan = "2" style = "padding: 8px;text-align: left; font-size:12pt"> <xsl:value-of select="Module_Delivery"/></td>
    </tr>

	</xsl:for-each>

	</table> 

<a style = "background-color:teal;color:white; padding:14px; "   href="/modulerecords">Return To Module Rcords</a>
</body>
</html>