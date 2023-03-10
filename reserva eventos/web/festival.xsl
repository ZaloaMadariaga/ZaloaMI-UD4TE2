<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
	<xsl:output encoding="utf-8" />
	<!-- Plantilla principal. Selecciono los nodos o elementos con los que quiero trabajar -->
	<xsl:template match="/Resultados" >
		<html lang="es">
			<head>
				<link href="../css/estilo.css" rel="stylesheet" type="text/css" />
				<meta charset="utf-8"/>
				<meta name="description" content="Página principal" />
				<title>titulo de la web</title>
			</head>
			
			<body>
				
				<header>
					<img src= "../img/logotipo.png" alt= "Reservas" />
					<a href="teatro.xml">Teatro</a>
					<a href="restaurante.xml">Restaurante</a>
					<a href="festival.xml">Festival</a>
				</header>
				
				
				<main class="principal">
					<h1>PRÓXIMOS CONCIERTOS</h1>
					<table>
						<tr>
							<th>FESTIVAL</th>
							<th>CONCIERTO</th>
							<th>FECHA</th>
							<th>HORA</th>
							<th>LUGAR</th>
						</tr>
						
					</table>
				</main>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="concierto" >
		<xsl:if test='tipodemusica="rock"'>
			<tr>
				<td><xsl:value-of select="festival"/></td>
				<td><xsl:value-of select="grupo"/></td>		
				<td><xsl:value-of select="fecha"/></td>
				<td><xsl:value-of select="hora"/></td>
				<td><xsl:value-of select="carpa"/></td>
			</tr>  	
		
		</xsl:if>					
	</xsl:template>
	
</xsl:stylesheet>