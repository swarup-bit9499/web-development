<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <head>
    <style>
      .pass { color: green; font-weight: bold; }
      .fail { color: red; font-weight: bold; }
    </style>
  </head>
  <body>
    <h2>Student Results</h2>
    <table border="1">
      <tr bgcolor="#4CAF50" style="color:white">
        <th>Name</th>
        <th>Roll No</th>
        <th>Marks</th>
        <th>Status</th>
      </tr>
      <xsl:for-each select="students/student">
      <tr>
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="roll"/></td>
        <td><xsl:value-of select="marks"/></td>
        <td>
          <xsl:choose>
            <xsl:when test="marks &gt; 40">
              <span class="pass">PASS</span>
            </xsl:when>
            <xsl:otherwise>
              <span class="fail">FAIL</span>
            </xsl:otherwise>
          </xsl:choose>
        </td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
