<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
	<xsl:output encoding="utf-8" />
	<!-- Plantilla principal. Selecciono los nodos o elementos con los que quiero trabajar -->
	<xsl:template match="/Reservaeventos" >
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
					<h1>PROXIMAS OBRAS DE TEATRO</h1>
					        		<!-- Las ordenamos por fecha de más reciente a menos  -->
					<xsl:apply-templates select="reservaeventos/teatro">
						<xsl:sort select="fechahora/@dia"  order="descending" />
					</xsl:apply-templates>
					
				</main>
				
			</body>
		</html>
	</xsl:template>
	<xsl:template match="teatro" >
		<xsl:if test='precio &lt;"20"'>
			<u><li><xsl:value-of select="fechahora/@dia" />: <xsl:value-of select="obra" /></li></u>
		</xsl:if>
		<xsl:if test='precio > "20"'>
			<li><xsl:value-of select="fechahora/@dia" />: <xsl:value-of select="obra" /></li>
		</xsl:if>					
	</xsl:template>
	
</xsl:stylesheet>