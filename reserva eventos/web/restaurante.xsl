<?xml version="1.0" encoding='utf-8'?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" doctype-system="about:legacy-compat" />
	<xsl:template match='/Reservaeventos'>
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
				
				<main>
					<h1 href="http://{informacion/@tipo}">EL CLARETE - VITORIA</h1>
					
					<article class="restaurante">
						<h3>Degustacion</h3>
						
						<xsl:for-each select="restaurante">	
							<li><xsl:value-of select="//menu[@tipo ='degustacion']/plato"/> </li>
						</xsl:for-each>
					</article>
					<article class="restaurante">
						<h3>Menú del Día</h3>
						<xsl:for-each select="restaurante">	
							<li><xsl:value-of select="//menu[@tipo ='menu del dia']/plato" /></li>
						</xsl:for-each>
					</article>
				</main>
				
				<footer>
					<address>&#169; 2020 desarrollado por info@birt.eus</address>
				</footer>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>