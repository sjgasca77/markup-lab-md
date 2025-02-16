<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/hello-world">
    <html>
      <head> 
        <title>XSLT Hello World!</title>
      </head>
      <body>
        <h1> <xsl:value-of select="greeting"/> </h1>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>