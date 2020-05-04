<?xml version="1.0" encoding="UTF-8"?>
<html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<body style="font-family:Arial;font-size:12pt;background-color:#EEEEEE">

<h2 style = "text-align: center" > Module Specification </h2>
<a style = "background-color:teal;color:white; padding:14px; " href="/modulerecords">Return to Module Records</a>
  <table style="background-color:teal; color:white; padding:14px; width: 21cm; height: 29.7; margin-left:auto; margin-right:auto; margin-bottom:1em;"> 

  <xsl:for-each select="module_menu/spec">

	  <tr>
      <td style = "padding: 8px; text-align: center; font-size:15pt; font-weight: bold;"> Code of Module: </td>
      <td style = "padding: 8px; text-align: left; font-size:15pt;"> <xsl:value-of select="Code"/></td>
    </tr>

     <tr>
      <td style = "padding: 8px; text-align: center; font-size:15pt; font-weight: bold;"> Name of Module: </td>
      <td style = "padding: 8px; text-align: left; font-size:15pt;"> <xsl:value-of select="Name"/></td>
    </tr>
		
	  <tr>
      <td style = "padding: 8px; text-align: center; font-size:15pt; font-weight: bold;"> Title of Module: </td>
      <td style = "padding: 8px; text-align: left; font-size:15pt;"> <xsl:value-of select="Title"/></td>
    </tr>

    <tr>
      <td style = "padding: 8px; text-align: center; font-size:15pt; font-weight: bold;"> Submission type: </td>
      <td style = "padding: 8px; text-align: left; font-size:15pt;"> <xsl:value-of select="Submission"/></td>
    </tr>

		<tr>
      <td style = "padding: 8px; text-align: center; font-size:15pt; font-weight: bold;"> Module Leader: </td>
      <td style = "padding: 8px; text-align: left; font-size:15pt;"> <xsl:value-of select="Leader"/></td>
    </tr>

  	<tr>
      <td style = "padding: 8px; text-align: center; font-size:15pt; font-weight: bold;"> Module Tutors: </td>
      <td style = "padding: 8px; text-align: left; font-size:15pt;"> <xsl:value-of select="Tutor"/></td>
    </tr>

	  <tr>
      <td style = "padding: 8px; text-align: center; font-size:15pt; font-weight: bold;"> Module Aims: </td>
      <td style = "padding: 8px; text-align: left; font-size:15pt;"> <xsl:value-of select="Aims"/></td>
    </tr>
    
    <tr>
      <td style = "padding: 8px; text-algin: center; font-size:15pt; font-weight: bold;"> Assessed Learning Outcomes (ALO): </td>
      <td style = "padding: 8px; text-align: left; font-size:15pt;"> <xsl:value-of select="Outcomes"/></td>
    </tr>

    <tr>
      <td style = "padding: 8px; text-align: center;  font-size:15pt; font-weight: bold;"> 1 Overview: </td>
      <td style = "padding: 8px; text-align: left; font-size:15pt;"><xsl:value-of select="Overview"/></td>
    </tr>

    <tr>
      <td style = "padding: 8px; text-align: center; font-size:15pt; font-weight: bold;"> 2 Module Delivery: </td>
      <td style = "padding: 8px; text-align: left; font-size:15pt;"><xsl:value-of select="Delivery"/></td>
    </tr>

    <tr>
      <td style = "padding: 8px; text-align: center; font-size:15pt; font-weight: bold;"> 3 Your Project: </td>
      <td style = "padding: 8px; text-align: left; font-size:15pt;"><xsl:value-of select="Project"/></td>
    </tr> 

   <tr>
      <td style = "padding: 8px; text-align: center; font-size:15pt; font-weight: bold;"> 4 Your Portfolio: </td>
      <td style = "padding: 8px; text-align: left; font-size:15pt;"><xsl:value-of select="Portfolio"/></td>
    </tr> 
	</xsl:for-each>
	</table>

  <table style="background-color:teal; color:white; padding:14px; width: 21cm; height: 29.7; margin-left:auto; margin-right:auto; margin-bottom:1em;">
   <xsl:for-each select="module_menu/spec">
    <tr>
    <td style = "padding: 8px; text-align: center; font-size:15pt; font-weight: bold;"> 5 Important Dates and Deadlines: </td>
    <td style = "padding: 8px; text-align: center; font-size:15pt;"><xsl:value-of select="Deadline"/></td>
    </tr>
    <tr>
    <td style = "padding: 8px; text-align: center;">#</td>
    <td style = "padding: 8px; text-align: center;">Portfolio Deliverable</td>
    <td style = "padding: 8px; text-align: center;">Description</td>
    <td style = "padding: 8px; text-align: center;">Deadline</td>
    </tr>
    <tr>
    <td style = "padding: 8px; text-align: center;">1</td>
    
    </tr>
    </xsl:for-each>
  </table> 
<a style = "background-color:teal;color:white; padding:14px; " href="/modulerecords">Return to Module Records</a>
</body>
</html>