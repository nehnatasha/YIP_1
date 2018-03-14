<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">

    <html>
		<head>
			<title>Ответ</title>
			<style>
				table {
				  border: solid 2px black;
				  border-collapse: collapse;
				}
				
				tr {
				  border: solid 2px black;
				  border-collapse: collapse;
				}
				
				th {
				  border: solid 2px black;
				  border-collapse: collapse;
				}
			</style>
		</head>

      <body>
			<table>
				<thead>
					<tr>
						<th>Самый длинный отрезок</th>
						<th>Все отрезки</th>
						<th>Количество отрезков</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<xsl:for-each select="hash">
							<th>
								<xsl:value-of select="results"></xsl:value-of>
							</th>
							<th>
								<xsl:for-each select="all-arrays/all-array">
									<p>
										<xsl:value-of select="."/>
									</p>
								</xsl:for-each>
							</th>
							<th>
								<xsl:value-of select="counter"/>
							</th>
							<th>
							<xsl:value-of select="checker"></xsl:value-of>
							</th>
						</xsl:for-each>
					</tr>
				</tbody>	
			</table>
		</body>
	</html>
  </xsl:template>
</xsl:stylesheet>