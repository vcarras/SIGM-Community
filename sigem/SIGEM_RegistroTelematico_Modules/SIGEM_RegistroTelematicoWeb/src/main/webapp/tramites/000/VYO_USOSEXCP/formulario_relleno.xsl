<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output encoding="ISO-8859-1" method="html"/>

	<xsl:variable name="lang.datosInteresado" select="'Datos de la persona f�sica o del representante de la persona jur�dica:'"/>
	<xsl:variable name="lang.datosSolicitud" select="'Datos de la Solicitud'"/>

	<xsl:variable name="lang.ayuntamiento" select="'Nombre o Raz�n Social:'"/>	
	<xsl:variable name="lang.nif" select="'Documento de identidad'"/>
	<xsl:variable name="lang.nombre" select="'Nombre'"/>
	<xsl:variable name="lang.representante" select="'En representaci�n del Ayuntamiento de'"/>
	<xsl:variable name="lang.cif" select="'con CIF'"/>
	<xsl:variable name="lang.direccion" select="'Domicilio a efectos de notificaci�n'"/>
	<xsl:variable name="lang.localidad" select="'Localidad'"/>
	<xsl:variable name="lang.cp" select="'C�digo postal'"/>
	<xsl:variable name="lang.provincia" select="'Provincia'"/>
	<xsl:variable name="lang.telefono" select="'Tel�fono'"/>
	<xsl:variable name="lang.email" select="'Correo electr�nico'"/>

	<xsl:variable name="lang.asunto" select="'Asunto'"/>	
	
	<xsl:variable name="lang.expone" select="'Expone'"/>
	<xsl:variable name="lang.expone1" select="'Que es titular de la finca catastral'"/>
	<xsl:variable name="lang.expone2" select="'de la carretera provincial'"/>
	<xsl:variable name="lang.expone3" select="'t�rmino municipal'"/>
	<xsl:variable name="lang.solicita" select="'Solicita'"/>
	
	<xsl:template match="/">
		<div class="col">
			<label class="gr" style="position: relative; width:350px;">
				<b><xsl:value-of select="$lang.datosInteresado"/></b>	
			</label>
			<br/>
		</div>
		<div class="col">
			<label class="gr" style="position: relative; width:150px;">
				<xsl:value-of select="$lang.nif"/>:	
			</label>
			<label class="gr">
				<xsl:attribute name="style">position: relative; width:500px;</xsl:attribute>
				<xsl:value-of select="Solicitud_Registro/Datos_Firmados/Datos_Especificos/documentoIdentidad"/>
			</label>
			<br/>
		</div>
		<div class="col">
			<label class="gr" style="position: relative; width:150px;">
				<xsl:value-of select="$lang.nombre"/>:	
			</label>
			<label class="gr" style="position: relative; width:500px;">
				<xsl:value-of select="Solicitud_Registro/Datos_Firmados/Datos_Especificos/nombreSolicitante"/>
			</label>
			<br/>
		</div>
		<br/>
		<div class="col">
			<label class="gr" style="position: relative; width:350px;">
				<b><xsl:value-of select="$lang.datosSolicitud"/></b>	
			</label>
			<br/>
		</div>
		<br/>
		<xsl:if test="Solicitud_Registro/Datos_Firmados/Datos_Especificos/ayuntamiento">
			<div class="col">
				<label class="gr" style="position: relative; width:200px;font-weight: bold;">
					<xsl:value-of select="$lang.ayuntamiento"/>:	
				</label>
				<label class="gr" style="position: relative; width:450px;">
					<xsl:value-of select="Solicitud_Registro/Datos_Firmados/Datos_Especificos/ayuntamiento"/>
				</label>
				<br/>
			</div>
		</xsl:if>
		<xsl:if test="Solicitud_Registro/Datos_Firmados/Datos_Especificos/asunto">
			<div class="col">
				<label class="gr" style="position: relative; width:200px;font-weight: bold;">
					<xsl:value-of select="$lang.asunto"/>:	
				</label>
				<label class="gr" style="position: relative; width:450px;">
					<xsl:value-of select="Solicitud_Registro/Datos_Firmados/Datos_Especificos/asunto"/>
				</label>
				<br/>
			</div>
		</xsl:if>

		<div class="col">
			<label class="gr" style="position: relative; width:640px;text-align:justify;">
				<xsl:if test="Solicitud_Registro/Datos_Firmados/Datos_Especificos/expone1">
					<div style="position: relative; width:640px;text-align:justify;">
						<label class="gr" style="position: relative; width:150px;font-weight: bold;">
							<xsl:value-of select="$lang.expone"/>:	
						</label>
						<br/><br/>
						<label class="gr" style="position: relative; width:200px;">
							<xsl:value-of select="$lang.expone1"/>
						</label>
						<label class="gr" style="position: relative; width:440px;">
							<xsl:value-of select="Solicitud_Registro/Datos_Firmados/Datos_Especificos/expone1"/>
						</label>
						<br/><br/>
						<label class="gr" style="position: relative; width:200px;">
							<xsl:value-of select="$lang.expone2"/>
						</label>
						<label class="gr" style="position: relative; width:440px;">
							<xsl:value-of select="Solicitud_Registro/Datos_Firmados/Datos_Especificos/expone2"/>
						</label>
						<br/><br/>
						<label class="gr" style="position: relative; width:200px;">
							<xsl:value-of select="$lang.expone3"/>
						</label>
						<label class="gr" style="position: relative; width:440px;">
							<xsl:value-of select="Solicitud_Registro/Datos_Firmados/Datos_Especificos/expone3"/>
						</label>
						<br/>
					</div>
				</xsl:if>
				<br/>
				<xsl:if test="Solicitud_Registro/Datos_Firmados/Datos_Especificos/solicita">
					<div>
						<label class="gr" style="position: relative; width:150px;font-weight: bold;">
							<xsl:value-of select="$lang.solicita"/>:	
						</label>
						<label class="gr" style="position: relative; width:640px;">
							<xsl:value-of select="Solicitud_Registro/Datos_Firmados/Datos_Especificos/solicita"/>
						</label>
						<br/>
					</div>
				</xsl:if>
			</label>						
		</div>
		<br/>
		<div style="color: grey; text-align:justify">
			<label class="gr">
				<xsl:attribute name="style">position: relative; width:650px;</xsl:attribute>
					En cumplimiento de la Ley Org�nica 15/1999, de 13 de diciembre, de Protecci�n de Datos de Car�cter Personal, le informamos que sus datos ser�n incorporados a un fichero con datos de car�cter personal cuya finalidad es la atenci�n de las solicitudes realizadas por los ciudadanos a la Diputaci�n Provincial de Ciudad Real. Le informamos asimismo que los datos podr�n ser comunicados a otras Administraciones P�blicas en el �mbito de competencias semejantes o materias comunes en cumplimiento de la legislaci�n aplicable. Podr� comunicarnos su oposici�n a este tratamiento de datos as� como ejercer sus derechos de acceso, rectificaci�n y cancelaci�n dirigi�ndose al Responsable del Fichero, la Diputaci�n Provincial de Ciudad Real en C/ Toledo, 17, 13071 Ciudad Real - Espa�a, siempre acreditando conforme a Derecho su identidad en la comunicaci�n.
			</label>
		</div>
	</xsl:template>
</xsl:stylesheet>