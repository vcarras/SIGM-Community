<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:include href="../REC_COMUNES/templates_comunes.xsl" />

<xsl:output encoding="ISO-8859-1" method="html"/>

	<xsl:variable name="lang.titulo" select="'Formulario de solicitud de Anulaci�n de Liquidaci�n de IBI por Error en el Sujeto Pasivo'"/>

	<xsl:variable name="lang.datosSolicitud" select="'Datos de la Solicitud'"/>

	<xsl:variable name="lang.id_nif" select="'Documento de identidad'"/>
	<xsl:variable name="lang.id_nombre" select="'Nombre'"/>

	<xsl:variable name="lang.nif" select="'NIF/CIF'"/>
	<xsl:variable name="lang.nombre" select="'Apellidos y Nombre o Denominaci�n Social'"/>
	<xsl:variable name="lang.calle" select="'Calle'"/>
	<xsl:variable name="lang.c_postal" select="'C�digo Postal'"/>
	
	<xsl:variable name="lang.direccion" select="'Domicilio a efectos de notificaci�n'"/>
	<xsl:variable name="lang.localidad" select="'Localidad'"/>
	<xsl:variable name="lang.cp" select="'C�digo postal'"/>
	<xsl:variable name="lang.provincia" select="'Provincia'"/>
	<xsl:variable name="lang.telefono" select="'Tel�fono'"/>
	<xsl:variable name="lang.email" select="'Correo electr�nico'"/>
	<xsl:variable name="lang.representacion" select="'Rellene los siguientes datos si act�a como representante'"/>			
	<xsl:variable name="lang.nif_repr" select="'NIF/CIF de la persona o entidad a quien representa'"/>			
	<xsl:variable name="lang.nombre_repr" select="'Nombre del representado'"/>			
	
	<xsl:variable name="lang.expone1" select="'EXPONE'"/>
	<xsl:variable name="lang.expone2" select="', que habiendo recibido las/s liquidaci�n/es de IBI que a continuaci�n se indicar�n correspondientes al municipio de: '"/>
	<xsl:variable name="lang.expone3" select="', y dado que se ha apreciado error en la determinaci�n del sujeto pasivo por la causa que se expresa:'"/>
	<xsl:variable name="lang.motivo1" select="'1 - Vivienda de Protecci�n Oficial (IBI-URBANA)'"/>
	<xsl:variable name="lang.motivo2" select="'2 - Empresas de Construcci�n y Promoci�n Inmobiliaria (IBI-URBANA)'"/>
	<xsl:variable name="lang.motivo3" select="'3 - Sociedades Cooperativas (IBI-RUSTICA)'"/>
	<xsl:variable name="lang.motivo4" select="'4 - Familia numerosa (IBI-URBANA)'"/>
	<xsl:variable name="lang.motivo5" select="'5 - Otras distintas de las enunciadas'"/>
	<xsl:variable name="lang.notas_motivos" select="'Opci�n 4: Indicar cu�l:'"/>
	<xsl:variable name="lang.liquidaciones" select="'LIQUIDACI�N E INMUEBLE OBJETO DE LA SOLICITUD*'"/>
	<xsl:variable name="lang.municipio" select="'Nombre del municipio'"/>
	<xsl:variable name="lang.liquidacion" select="'N� de liquidaci�n'"/>
	<xsl:variable name="lang.referencia" select="'Referencia catastral'"/>
	<xsl:variable name="lang.situacion" select="'Situaci�n del inmueble'"/>
	<xsl:variable name="lang.solicita1" select="'SOLICITA'"/>
	<xsl:variable name="lang.solicita2" select="', que previa las comprobaciones oportunas, procedan a anular la/s liquidaci�n/es indicadas y, en el caso que proceda (seleccionar la opci�n):'"/>

	<xsl:variable name="lang.opcion1" select="'A emitir liquidaci�n s�lo por los a�os en los que es titular del inmueble.'"/>
	<xsl:variable name="lang.opcion2" select="'A la devoluci�n del/los a�o/s'"/>
	<xsl:variable name="lang.opcion2.1" select="', en la siguiente cuenta corriente:'"/>

	<xsl:variable name="lang.ccc" select="'siguiente entidad y cuenta corriente :'"/>
	<xsl:variable name="lang.cuenta" select="'C�digo de Cuenta Corriente:'"/>
	<xsl:variable name="lang.notas" select="'INFORMACI�N PARA EL CONTRIBUYENTE:'"/>
	<xsl:variable name="lang.notas1" select="'1.- El plazo m�ximo de resoluci�n de su solicitud es de 6 meses, siendo los efectos del silencio administrativo NEGATIVOS.'"/>
	<xsl:variable name="lang.notas2" select="'2.- Es necesario consignar obligatoriamente los campos de n� de liquidaci�n y referencia catastral con sus 20 d�gitos.'"/>
	<xsl:variable name="lang.notas3" select="'3.- En los casos de adquisici�n o venta deber� aportarse copia de escritura de compraventa o nota simpre del registro o resoluci�n del catastro.'"/>
	<xsl:variable name="lang.notas4" select="'4.- En el caso de que la solicitud venga referida a liquidaciones a nombre de otro obligado tributario, deber� acreditarse la representaci�n legal o voluntaria (ver modelo en la p�gina) del mismo.'"/>
	
	<xsl:variable name="lang.anexar" select="'Anexar ficheros'"/>
	<xsl:variable name="lang.anexarInfo1" select="'1.- Para adjuntar un fichero (*.zip), pulse el bot�n examinar.'"/>
	<xsl:variable name="lang.anexarInfo2" select="'2.- Seleccione el fichero que desea anexar a la solicitud.'"/>
	<xsl:variable name="lang.documento" select="'Conjunto de anexos de la solicitud'"/>
	<xsl:variable name="lang.documentoTipo" select="'Archivo ZIP'"/>

	<xsl:variable name="lang.observaciones" select="'Observaciones'"/>

	<xsl:variable name="lang.info_legal" select="'Los datos personales, identificativos y de contacto, aportados mediante esta comunicaci�n se entienden facilitados voluntariamente, y ser�n incorporados a un fichero cuya finalidad es la de mantener con Vd. relaciones dentro del �mbito de las competencias de esta Administraci�n P�blica as� como informarle de nuestros servicios presentes y futuros ya sea por correo ordinario o por medios telem�ticos y enviarle invitaciones para eventos y felicitaciones en fechas se�aladas. Entenderemos que presta su consentimiento t�cito para este tratamiento de datos si en el plazo de un mes no expresa su voluntad en contra. Podr� ejercer sus derechos de acceso, rectificaci�n, cancelaci�n y oposici�n ante el Responsable del Fichero, la Diputaci�n Provincial de Ciudad Real en C/ Toledo, 17, 13071 Ciudad Real - Espa�a, siempre acreditando conforme a Derecho su identidad en la comunicaci�n. En cumplimiento de la L.O. 34/2002 le informamos de que puede revocar en cualquier momento el consentimiento que nos otorga dirigi�ndose a la direcci�n citada ut supra o bien al correo electr�nico lopd@dipucr.es o bien por tel�fono al n�mero gratuito 900 714 080.'"/>

		
	<xsl:template match="/" xmlns:java="http://xml.apache.org/xslt/java">
		<script language="Javascript">
			//array de campos obligatorios -> ('id_campo','nombre_campo')
			//----------------------------
			var validar = new Array(14);

			validar[0] = new Array('documentoIdentidad', '<xsl:value-of select="$lang.id_nif"/>');
			validar[1] = new Array('nombreSolicitante','<xsl:value-of select="$lang.id_nombre"/>');

			validar[2] = new Array('nif', '<xsl:value-of select="$lang.nif"/>');
			validar[3] = new Array('nombre','<xsl:value-of select="$lang.nombre"/>');
			validar[4] = new Array('calle','<xsl:value-of select="$lang.calle"/>');
			validar[5] = new Array('c_postal','<xsl:value-of select="$lang.c_postal"/>');

			validar[6] = new Array('motivo','Motivo');
			
			validar[7] = new Array('mun_1','<xsl:value-of select="$lang.municipio"/>');
			validar[8] = new Array('liq_1','<xsl:value-of select="$lang.liquidacion"/>');
			validar[9] = new Array('ref1_1','<xsl:value-of select="$lang.referencia"/>');
			validar[10] = new Array('ref1_1','<xsl:value-of select="$lang.referencia"/>');
			validar[11] = new Array('ref1_1','<xsl:value-of select="$lang.referencia"/>');
			validar[12] = new Array('ref1_1','<xsl:value-of select="$lang.referencia"/>');
			validar[13] = new Array('sit_1','<xsl:value-of select="$lang.situacion"/>');

			//Array con los datos especificos del formulario -> -> ('id_campo','tag_xml')
			//----------------------------------------------
			var especificos = new Array(123);
			
			especificos[0] = new Array('nif','nif');
			especificos[1] = new Array('nombre','nombre');
			especificos[2] = new Array('calle','calle');
			especificos[3] = new Array('ciudad','ciudad');
			especificos[4] = new Array('region','region');
			especificos[5] = new Array('rcalle','rcalle');
			especificos[6] = new Array('c_postal','c_postal');
			especificos[7] = new Array('movil','movil');
			especificos[8] = new Array('d_email','d_email');
			especificos[9] = new Array('repres_nif','repres_nif');
			especificos[10] = new Array('repres_nombre','repres_nombre');
			especificos[11] = new Array('repres_movil','repres_movil');
			especificos[12] = new Array('repres_d_email','repres_d_email');
			
			especificos[13] = new Array('mun_1','mun_1');
			especificos[14] = new Array('liq_1','liq_1');
			especificos[15] = new Array('ref1_1','ref1_1');
			especificos[16] = new Array('ref2_1','ref2_1');
			especificos[17] = new Array('ref3_1','ref3_1');
			especificos[18] = new Array('ref4_1','ref4_1');
			especificos[19] = new Array('sit_1','sit_1');
			especificos[20] = new Array('liq_2','liq_2');
			especificos[21] = new Array('ref1_2','ref1_2');
			especificos[22] = new Array('ref2_2','ref2_2');
			especificos[23] = new Array('ref3_2','ref3_2');
			especificos[24] = new Array('ref4_2','ref4_2');
			especificos[25] = new Array('sit_2','sit_2');
			especificos[26] = new Array('liq_3','liq_3');
			especificos[27] = new Array('ref1_3','ref1_3');
			especificos[28] = new Array('ref2_3','ref2_3');
			especificos[29] = new Array('ref3_3','ref3_3');
			especificos[30] = new Array('ref4_3','ref4_3');
			especificos[31] = new Array('sit_3','sit_3');
			especificos[32] = new Array('liq_4','liq_4');
			especificos[33] = new Array('ref1_4','ref1_4');
			especificos[34] = new Array('ref2_4','ref2_4');
			especificos[35] = new Array('ref3_4','ref3_4');
			especificos[36] = new Array('ref4_4','ref4_4');
			especificos[37] = new Array('sit_4','sit_4');
			especificos[38] = new Array('liq_5','liq_5');
			especificos[39] = new Array('ref1_5','ref1_5');
			especificos[40] = new Array('ref2_5','ref2_5');
			especificos[41] = new Array('ref3_5','ref3_5');
			especificos[42] = new Array('ref4_5','ref4_5');
			especificos[43] = new Array('sit_5','sit_5');
			especificos[44] = new Array('liq_6','liq_6');
			especificos[45] = new Array('ref1_6','ref1_6');
			especificos[46] = new Array('ref2_6','ref2_6');
			especificos[47] = new Array('ref3_6','ref3_6');
			especificos[48] = new Array('ref4_6','ref4_6');
			especificos[49] = new Array('sit_6','sit_6');
			especificos[50] = new Array('liq_7','liq_7');
			especificos[51] = new Array('ref1_7','ref1_7');
			especificos[52] = new Array('ref2_7','ref2_7');
			especificos[53] = new Array('ref3_7','ref3_7');
			especificos[54] = new Array('ref4_7','ref4_7');
			especificos[55] = new Array('sit_7','sit_7');
			especificos[56] = new Array('liq_8','liq_8');
			especificos[57] = new Array('ref1_8','ref1_8');
			especificos[58] = new Array('ref2_8','ref2_8');
			especificos[59] = new Array('ref3_8','ref3_8');
			especificos[60] = new Array('ref4_8','ref4_8');
			especificos[61] = new Array('sit_8','sit_8');
			especificos[62] = new Array('liq_9','liq_9');
			especificos[63] = new Array('ref1_9','ref1_9');
			especificos[64] = new Array('ref2_9','ref2_9');
			especificos[65] = new Array('ref3_9','ref3_9');
			especificos[66] = new Array('ref4_9','ref4_9');
			especificos[67] = new Array('sit_9','sit_9');
			especificos[68] = new Array('liq_10','liq_10');
			especificos[69] = new Array('ref1_10','ref1_10');
			especificos[70] = new Array('ref2_10','ref2_10');
			especificos[71] = new Array('ref3_10','ref3_10');
			especificos[72] = new Array('ref4_10','ref4_10');
			especificos[73] = new Array('sit_10','sit_10');
			especificos[74] = new Array('liq_11','liq_11');
			especificos[75] = new Array('ref1_11','ref1_11');
			especificos[76] = new Array('ref2_11','ref2_11');
			especificos[77] = new Array('ref3_11','ref3_11');
			especificos[78] = new Array('ref4_11','ref4_11');
			especificos[79] = new Array('sit_11','sit_11');
			especificos[80] = new Array('liq_12','liq_12');
			especificos[81] = new Array('ref1_12','ref1_12');
			especificos[82] = new Array('ref2_12','ref2_12');
			especificos[83] = new Array('ref3_12','ref3_12');
			especificos[84] = new Array('ref4_12','ref4_12');
			especificos[85] = new Array('sit_12','sit_12');
			especificos[86] = new Array('liq_13','liq_13');
			especificos[87] = new Array('ref1_13','ref1_13');
			especificos[88] = new Array('ref2_13','ref2_13');
			especificos[89] = new Array('ref3_13','ref3_13');
			especificos[90] = new Array('ref4_13','ref4_13');
			especificos[91] = new Array('sit_13','sit_13');
			especificos[92] = new Array('liq_14','liq_14');
			especificos[93] = new Array('ref1_14','ref1_14');
			especificos[94] = new Array('ref2_14','ref2_14');
			especificos[95] = new Array('ref3_14','ref3_14');
			especificos[96] = new Array('ref4_14','ref4_14');
			especificos[97] = new Array('sit_14','sit_14');
			especificos[98] = new Array('liq_15','liq_15');
			especificos[99] = new Array('ref1_15','ref1_15');
			especificos[100] = new Array('ref2_15','ref2_15');
			especificos[101] = new Array('ref3_15','ref3_15');
			especificos[102] = new Array('ref4_15','ref4_15');
			especificos[103] = new Array('sit_15','sit_15');
	
			especificos[104] = new Array('motivo','motivo');
			especificos[105] = new Array('otro_motivo','otro_motivo');
			especificos[106] = new Array('years','years');
			especificos[107] = new Array('ccc1','ccc1');
			especificos[108] = new Array('ccc2','ccc2');
			especificos[109] = new Array('ccc3','ccc3');
			especificos[110] = new Array('ccc4','ccc4');

			especificos[111] = new Array('rciudad','rciudad');
			especificos[112] = new Array('rregion','rregion');
			especificos[113] = new Array('rc_postal','rc_postal');

			especificos[114] = new Array('nombresolihidden','nombresolihidden');
			especificos[115] = new Array('nifsolihidden','nifsolihidden');

			especificos[116] = new Array('opcion','opcion');

			especificos[117] = new Array('titular','titular');
			especificos[118] = new Array('nifTitular','nifTitular');
			especificos[119] = new Array('telefonoTitular','telefonoTitular');

			especificos[120] = new Array('observaciones','observaciones');

			especificos[121] = new Array('opcion1','opcion1');
			especificos[122] = new Array('opcion2','opcion2');
			
			<xsl:call-template name="ADD_ROW2" />
			
			<xsl:call-template name="VALIDACIONES" />
			
			//Array de validaciones
			//----------------------------------------------
			var validarNumero;
			
			function verificacionesEspecificas() {
				document.getElementById('opcion1').value = document.getElementById('opcionR0').checked;
				document.getElementById('opcion2').value = document.getElementById('opcionR1').checked;

				var f = document.forms[0];

				if(!validaNIFObligado()) return false;
				if(!validaNIFRepresentante()) return false;
				if(!validaNIFPresentador()) return false;
				else{
					document.getElementById('nombresolihidden').value = document.getElementById('nombreSolicitante').value;
					document.getElementById('nifsolihidden').value = document.getElementById('documentoIdentidad').value;
				}


				if(document.getElementById('mun_1').value=='000'){
					alert('Municipio obligatorio');
					document.getElementById('mun_1').focus();
					return false;
				}

				if(document.getElementById('opcion').value == '')
					document.getElementById('opcion').value='1';

				if(document.getElementById('opcion').value == '2'){
					if(document.getElementById('ccc1').value==''){
						alert('Debe introducir los a�os de devoluci�n y los datos de la cuenta corriente');
						document.getElementById('years').focus();
						return false;
					}
				}				

				var liq = validaLiq();
				if(!liq) return false;
				
				if(!validaCC()) return false;


				return validarCuenta(f);
			}

			function validaLiq(){
				var i = 1;
				while(i!=16){
					if(document.getElementById('liq_'+i)!='undefined')
						if(document.getElementById('liq_'+i).value!=''){
						if(!validarLiquidacion(document.getElementById('liq_'+i))){
							alert('N� de liquidaci�n no v�lido: '+document.getElementById('liq_'+i).value);						
							document.getElementById('liq_'+i).focus();
							return false;
						}
					}
					i = i+1;
				}
				return true;
			}
			
			function getDatosObligado(nif){
				window.open('tramites/000/REC_ESP/buscaObligado.jsp?valor='+nif+';000','','width=3,height=3');
			}
			function getDatosRepresentante(nif){
				window.open('tramites/000/REC_ESP/buscaRepresentante.jsp?valor='+nif+';000','','width=3,height=3');
			}				

			function cambiaOpcion(){
				if(document.getElementById('motivo').value==4){
					document.getElementById('ocultaOpcion').style.display="";
				}
				else{
					document.getElementById('ocultaOpcion').style.display="none";
					document.getElementById('otro_motivo').value='';
				}
			}

		</script>
		
		<h1><xsl:value-of select="$lang.titulo"/></h1>
		<xsl:call-template name="BOTON_LIMPIAR_FORMULARIO" />
   		<br/>
		<div class="submenu">
			<xsl:variable name="lang.datosPresentador" select="'Datos del presentador'"/>
   			<h1><xsl:value-of select="$lang.datosPresentador"/></h1>
   		</div>

		<xsl:call-template name="DATOS_SOLICITANTE_EDITABLE" />
		<xsl:call-template name="DATOS_OBLIGADO" />
		<br/>
   		<div class="submenu">
   			<h1><xsl:value-of select="$lang.datosSolicitud"/></h1>
   		</div>				

		<xsl:variable name="fileMotBene" select="java:es.dipucr.sigem.registroTelematicoWeb.formulario.common.XmlCargaDatos.getDatosTablaValidacionConSustituto('REC_VLDTBL_MOT_ERROR_SP_IBI','000')"/>
		<xsl:variable name="motBene" select="document($fileMotBene)"/>

   		<div class="cuadro" style="">	

	   		<b><xsl:value-of select="$lang.expone1"/></b><xsl:value-of select="$lang.expone2"/>
				<select class="gr">
					<xsl:attribute name="style">border:none; width:250px;color:#006699;</xsl:attribute>
					<xsl:attribute name="name">mun_1</xsl:attribute>
					<xsl:attribute name="id">mun_1</xsl:attribute>
					<xsl:attribute name="value"><xsl:value-of select="Datos_Registro/datos_especificos/mun_1"/></xsl:attribute>
					<xsl:call-template name="OPTIONS_MUNICIPIOS" />
				</select>
			<xsl:value-of select="$lang.expone3"/>

			<select class="gr">
				<xsl:attribute name="style">margin-top:10px; width:400px;color:#006699;</xsl:attribute>
				<xsl:attribute name="name">motivo</xsl:attribute>
				<xsl:attribute name="id">motivo</xsl:attribute>
				<xsl:attribute name="onclick">cambiaOpcion()</xsl:attribute>
				<xsl:for-each select="$motBene/listado/dato">
				<option>
					<xsl:attribute name="value"><xsl:value-of select="valor"/></xsl:attribute>
					<xsl:value-of select="sustituto"/>
				</option>
			</xsl:for-each>
			</select>
			<br/>
			<div id="ocultaOpcion" style="display=none">
				<div style="margin-left:10px;margin-top:10px;">
					<i><xsl:value-of select="$lang.notas_motivos"/></i>
				</div>
				<textarea>
					<xsl:attribute name="style">margin-left:75px;margin-top:5px;width:400px;font:normal 100%/normal 'Arial', Tahoma, Helvetica, sans-serif;color:#006699;</xsl:attribute>
					<xsl:attribute name="name">otro_motivo</xsl:attribute>
					<xsl:attribute name="id">otro_motivo</xsl:attribute>
					<xsl:attribute name="rows">3</xsl:attribute>
	
					<xsl:value-of select="Datos_Registro/datos_especificos/otro_motivo"/>
				</textarea>
			</div>

			<div style="margin-top:30px; width:100%; text-align:center;color:#006699;"><xsl:value-of select="$lang.liquidaciones"/></div>
			<table style="font-size:10px; width:90%; table-layout: fixed;" cellspacing="0" border="1">
			    <tr>
					<td style="width:115px;background-color:#dee1e8"><xsl:value-of select="$lang.liquidacion"/></td>
					<td style="width:170px;background-color:#dee1e8"><xsl:value-of select="$lang.referencia"/></td>
					<td style="width:150px;background-color:#dee1e8"><xsl:value-of select="$lang.situacion"/></td>
				</tr>
				<xsl:call-template name="FIELDS"><xsl:with-param name="row_id">1</xsl:with-param></xsl:call-template>
				<xsl:call-template name="FIELDS"><xsl:with-param name="row_id">2</xsl:with-param></xsl:call-template>
				<xsl:call-template name="FIELDS"><xsl:with-param name="row_id">3</xsl:with-param></xsl:call-template>
				<xsl:call-template name="FIELDS"><xsl:with-param name="row_id">4</xsl:with-param></xsl:call-template>
				<xsl:call-template name="FIELDS"><xsl:with-param name="row_id">5</xsl:with-param></xsl:call-template>
				<xsl:call-template name="FIELDS"><xsl:with-param name="row_id">6</xsl:with-param></xsl:call-template>
				<xsl:call-template name="FIELDS"><xsl:with-param name="row_id">7</xsl:with-param></xsl:call-template>
				<xsl:call-template name="FIELDS"><xsl:with-param name="row_id">8</xsl:with-param></xsl:call-template>
				<xsl:call-template name="FIELDS"><xsl:with-param name="row_id">9</xsl:with-param></xsl:call-template>
				<xsl:call-template name="FIELDS"><xsl:with-param name="row_id">10</xsl:with-param></xsl:call-template>
				<xsl:call-template name="FIELDS"><xsl:with-param name="row_id">11</xsl:with-param></xsl:call-template>
				<xsl:call-template name="FIELDS"><xsl:with-param name="row_id">12</xsl:with-param></xsl:call-template>
				<xsl:call-template name="FIELDS"><xsl:with-param name="row_id">13</xsl:with-param></xsl:call-template>
				<xsl:call-template name="FIELDS"><xsl:with-param name="row_id">14</xsl:with-param></xsl:call-template>
				<xsl:call-template name="FIELDS"><xsl:with-param name="row_id">15</xsl:with-param></xsl:call-template>
			</table>
            <div style="margin:5px 0 20px 10px;">
                <a id="addRow_link" style="cursor:pointer" onclick="addRow()">[A�adir fila]</a><br/>
            </div>

		<hr/>
			<div style="display:inline;margin-right:20px;color:#006699;"><xsl:value-of select="$lang.observaciones"/>:</div>
			<br/>
		   	<textarea>
				<xsl:attribute name="style">margin-left:75px;margin-top:5px;width:450px;font:normal 100%/normal 'Arial', Tahoma, Helvetica, sans-serif;color:#006699;</xsl:attribute>
				<xsl:attribute name="name">observaciones</xsl:attribute>
				<xsl:attribute name="id">observaciones</xsl:attribute>
				<xsl:attribute name="rows">3</xsl:attribute>
				<xsl:attribute name="onkeypress">if(this.value.length&gt;255){ alert('Tama�o m�ximo de campo alcanzado'); this.value = this.value.substr(0,255);}</xsl:attribute>
				<xsl:attribute name="onkeyup">if(this.value.length&gt;255){ alert('Tama�o m�ximo de campo alcanzado'); this.value = this.value.substr(0,255);}</xsl:attribute>
				<xsl:value-of select="Datos_Registro/datos_especificos/observaciones"/>
			</textarea>
			<hr/>


			<b><xsl:value-of select="$lang.solicita1"/></b><xsl:value-of select="$lang.solicita2"/>
		
			<br/>
			<br/>
			<input type="checkbox">
				<xsl:attribute name="style">margin-left:10px;width:15px;border:none;color:#006699;</xsl:attribute>
				<xsl:attribute name="name">opcionR0</xsl:attribute>
				<xsl:attribute name="id">opcionR0</xsl:attribute>
			</input>
			<xsl:value-of select="$lang.opcion1"/>
			<br/>

			<input type="checkbox">
				<xsl:attribute name="style">margin-left:10px;width:15px;border:none;color:#006699;</xsl:attribute>
				<xsl:attribute name="name">opcionR1</xsl:attribute>
				<xsl:attribute name="id">opcionR1</xsl:attribute>
			</input>
			<xsl:value-of select="$lang.opcion2"/>
			<input type="text">
				<xsl:attribute name="style">margin-left:10px;width:250px;color:#006699;</xsl:attribute>
				<xsl:attribute name="name">years</xsl:attribute>
				<xsl:attribute name="id">years</xsl:attribute>
				<xsl:attribute name="value"><xsl:value-of select="Datos_Registro/datos_especificos/years"/></xsl:attribute>
			</input>
			<xsl:value-of select="$lang.opcion2.1"/>

			<input type="hidden">
				<xsl:attribute name="name">opcion</xsl:attribute>
				<xsl:attribute name="id">opcion</xsl:attribute>
				<xsl:attribute name="value"><xsl:value-of select="Datos_Registro/datos_especificos/opcion"/></xsl:attribute>
			</input>

			<xsl:call-template name="CUENTA_CORRIENTE" />				   		
		</div>
   		<br/>
		<div class="submenu">
   			<h1><xsl:value-of select="$lang.anexar"/></h1>
   		</div>
   		<div class="cuadro" style="">
			<label class="gr">
			   		<xsl:attribute name="style">width:650px;</xsl:attribute>
		   			<xsl:value-of select="$lang.anexarInfo1"/><br/>
		   			<xsl:value-of select="$lang.anexarInfo2"/><br/>
			</label>
			<br/>
   			<div class="col">
	   			<label class="gr">
					<xsl:attribute name="style">width:250px;</xsl:attribute>
					<xsl:value-of select="$lang.documento"/>:
				</label>
				<input type="file">
					<xsl:attribute name="style">width:400px; </xsl:attribute>
					<xsl:attribute name="name">REC-ESP-D1</xsl:attribute>
					<xsl:attribute name="id">REC-ESP-D1</xsl:attribute>
					<xsl:attribute name="value"></xsl:attribute>
				</input>
				<input type="hidden">
					<xsl:attribute name="name">REC-ESP-D1_Tipo</xsl:attribute>
					<xsl:attribute name="id">REC-ESP-D1_Tipo</xsl:attribute>
					<xsl:attribute name="value">zip</xsl:attribute>
				</input>
			</div>
   		</div>


		<div class="cuadro" style="color: grey; text-align:justify">
		<br/>
			
			<div style="margin-bottom:10px;margin-top:30px;"><i><xsl:value-of select="$lang.notas"/></i></div>
			<div style="margin-bottom:10px;"><i><xsl:value-of select="$lang.notas1"/></i></div>
			<div style="margin-bottom:10px;"><i><xsl:value-of select="$lang.notas2"/></i></div>
			<div style="margin-bottom:10px;"><i><xsl:value-of select="$lang.notas3"/></i></div>
			<div style="margin-bottom:10px;"><i><xsl:value-of select="$lang.notas4"/></i></div>
			<div class="col">

				<label class="gr">
					<xsl:attribute name="style">position: relative; width:650px</xsl:attribute>
					<xsl:value-of select="$lang.info_legal"/>
				</label>
			</div>
		</div>

   		<br/>
		<input type="hidden"><xsl:attribute name="id">telefono</xsl:attribute></input>
		<input type="hidden"><xsl:attribute name="id">domicilioNotificacion</xsl:attribute></input>
		<input type="hidden"><xsl:attribute name="id">localidad</xsl:attribute></input>
		<input type="hidden"><xsl:attribute name="id">provincia</xsl:attribute></input>
		<input type="hidden"><xsl:attribute name="id">codigoPostal</xsl:attribute></input>
		<input type="hidden"><xsl:attribute name="id">emailSolicitante</xsl:attribute></input>
		<input type="hidden"><xsl:attribute name="id">opcion1</xsl:attribute></input>
		<input type="hidden"><xsl:attribute name="id">opcion2</xsl:attribute></input>
   		<input type="hidden">
			<xsl:attribute name="name">datosEspecificos</xsl:attribute>
			<xsl:attribute name="id">datosEspecificos</xsl:attribute>
			<xsl:attribute name="value"></xsl:attribute>
		</input>

		<input type="hidden">
			<xsl:attribute name="name">nombresolihidden</xsl:attribute>
			<xsl:attribute name="id">nombresolihidden</xsl:attribute>
			<xsl:attribute name="value"><xsl:value-of select="Datos_Registro/datos_especificos/nombresolihidden"/></xsl:attribute>
		</input>
		<input type="hidden">
			<xsl:attribute name="name">nifsolihidden</xsl:attribute>
			<xsl:attribute name="id">nifsolihidden</xsl:attribute>
			<xsl:attribute name="value"><xsl:value-of select="Datos_Registro/datos_especificos/nifsolihidden"/></xsl:attribute>
		</input>	
	</xsl:template>
	
	<xsl:template name="FIELDS">
	    <xsl:param name="row_id" />
	    <xsl:variable name="param_liq">liq_<xsl:value-of select="$row_id"/></xsl:variable>
	    <xsl:variable name="param_ref1">ref1_<xsl:value-of select="$row_id"/></xsl:variable>
	    <xsl:variable name="param_ref2">ref2_<xsl:value-of select="$row_id"/></xsl:variable>
	    <xsl:variable name="param_ref3">ref3_<xsl:value-of select="$row_id"/></xsl:variable>
	    <xsl:variable name="param_ref4">ref4_<xsl:value-of select="$row_id"/></xsl:variable>
	    <xsl:variable name="param_sit">sit_<xsl:value-of select="$row_id"/></xsl:variable>
	    <xsl:variable name="row_style">
	    <xsl:choose>
            <xsl:when test="$row_id&gt;'5'">
   		        display:none;
            </xsl:when>
        </xsl:choose>
	    </xsl:variable>
	    <tr id="row_{$row_id}" style="{$row_style}">
	        <td>
		        <input type="text">
			        <xsl:attribute name="style">border:none;color:#006699;width:110px;</xsl:attribute>
			        <xsl:attribute name="name"><xsl:value-of select="$param_liq"/></xsl:attribute>
			        <xsl:attribute name="id"><xsl:value-of select="$param_liq"/></xsl:attribute>
			        <xsl:attribute name="maxlength">17</xsl:attribute>
				 <xsl:attribute name="onkeyup">if(this.value.length==17){document.getElementById('<xsl:value-of select="$param_ref1"/>').focus();}</xsl:attribute>
			        <xsl:attribute name="value"><xsl:value-of select="Datos_Registro/datos_especificos/*[name()=$param_liq]"/></xsl:attribute>
		        </input>
	        </td>
	        <td>
		        <input type="text">
			        <xsl:attribute name="style">border:none;margin:0;width:90px;color:#006699;</xsl:attribute>
			        <xsl:attribute name="name"><xsl:value-of select="$param_ref1"/></xsl:attribute>
			        <xsl:attribute name="id"><xsl:value-of select="$param_ref1"/></xsl:attribute>
			        <xsl:attribute name="size">14</xsl:attribute>
			        <xsl:attribute name="maxlength">14</xsl:attribute>
				 <xsl:attribute name="onkeyup">if(this.value.length==14){document.getElementById('<xsl:value-of select="$param_ref2"/>').focus();}</xsl:attribute>
			        <xsl:attribute name="value"><xsl:value-of select="Datos_Registro/datos_especificos/*[name()=$param_ref1]"/></xsl:attribute>
		        </input>�
		        <input type="text">
			        <xsl:attribute name="style">border:none;margin:0;width:32px;color:#006699;</xsl:attribute>
			        <xsl:attribute name="name"><xsl:value-of select="$param_ref2"/></xsl:attribute>
			        <xsl:attribute name="id"><xsl:value-of select="$param_ref2"/></xsl:attribute>
			        <xsl:attribute name="size">4</xsl:attribute>
			        <xsl:attribute name="maxlength">4</xsl:attribute>
				 <xsl:attribute name="onkeyup">if(this.value.length==4){document.getElementById('<xsl:value-of select="$param_ref3"/>').focus();}</xsl:attribute>
			        <xsl:attribute name="value"><xsl:value-of select="Datos_Registro/datos_especificos/*[name()=$param_ref2]"/></xsl:attribute>
		        </input>�
		        <input type="text">
			        <xsl:attribute name="style">border:none;margin:0;width:12px;color:#006699;</xsl:attribute>
			        <xsl:attribute name="name"><xsl:value-of select="$param_ref3"/></xsl:attribute>
			        <xsl:attribute name="id"><xsl:value-of select="$param_ref3"/></xsl:attribute>
			        <xsl:attribute name="size">1</xsl:attribute>
			        <xsl:attribute name="maxlength">1</xsl:attribute>
				 <xsl:attribute name="onkeyup">if(this.value.length==1){document.getElementById('<xsl:value-of select="$param_ref4"/>').focus();}</xsl:attribute>
			        <xsl:attribute name="value"><xsl:value-of select="Datos_Registro/datos_especificos/*[name()=$param_ref3]"/></xsl:attribute>
		        </input>�
		        <input type="text">
			        <xsl:attribute name="style">border:none;margin:0;width:12px;color:#006699;</xsl:attribute>
			        <xsl:attribute name="name"><xsl:value-of select="$param_ref4"/></xsl:attribute>
			        <xsl:attribute name="id"><xsl:value-of select="$param_ref4"/></xsl:attribute>
			        <xsl:attribute name="size">1</xsl:attribute>
			        <xsl:attribute name="maxlength">1</xsl:attribute>
				 <xsl:attribute name="onkeyup">if(this.value.length==1){document.getElementById('<xsl:value-of select="$param_sit"/>').focus();}</xsl:attribute>
			        <xsl:attribute name="value"><xsl:value-of select="Datos_Registro/datos_especificos/*[name()=$param_ref4]"/></xsl:attribute>
		        </input>
	        </td>
	        <td>
		        <input type="text">
			        <xsl:attribute name="style">border:none;color:#006699;width:150px;</xsl:attribute>
			        <xsl:attribute name="name"><xsl:value-of select="$param_sit"/></xsl:attribute>
			        <xsl:attribute name="id"><xsl:value-of select="$param_sit"/></xsl:attribute>
			        <xsl:attribute name="value"><xsl:value-of select="Datos_Registro/datos_especificos/*[name()=$param_sit]"/></xsl:attribute>
		        </input>
	        </td>
	    </tr>
	</xsl:template>

	<xsl:template name="ADD_ROW2">
			var last_row = new Number(5);
			var max_num_rows = new Number(15);
			function addRow() {
	            if (last_row &lt; max_num_rows)	{	
			        last_row = last_row + 1;
                    var row = document.getElementById("row_"+last_row.toString());
                    row.style.display = "";
                    if (last_row == max_num_rows)
                    {
                        var link = document.getElementById("addRow_link");
                        
                        link.style.display = "none";
                    }
                }
			}
	</xsl:template>

</xsl:stylesheet>