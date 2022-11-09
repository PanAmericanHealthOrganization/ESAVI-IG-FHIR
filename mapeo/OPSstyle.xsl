

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns="http://hl7.org/fhir" version="2.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <xsl:output indent="yes"/>
    <xsl:template match="/">
    <xsl:element name="MCCI_IN200100UV01">
      <xsl:attribute name="ITSVersion">XML_1.0</xsl:attribute>
      <xsl:attribute name="xsi">http://www.w3.org/2001/XMLSchema-instance</xsl:attribute>
      <xsl:attribute name="schemaLocation">urn:hl7-org:v3 http://eudravigilance.ema.europa.eu/XSD/multicacheschemas/MCCI_IN200100UV01.xsd</xsl:attribute>
      
      <xsl:element name="id">
        <xsl:attribute name="extension">HC-B0123456</xsl:attribute>
        <xsl:attribute name="root">2.16.840.1.113883.3.989.2.1.3.22</xsl:attribute>
      </xsl:element>

      <xsl:element name="creationTime">
          <xsl:attribute name="value"><xsl:value-of select ="format-date(//item/item[linkId/@value='fechaLlenadoFicha']/answer//@value, '[Y][M01][D01]')" />
          </xsl:attribute>          
      </xsl:element>

      <xsl:element name="responseModeCode">
        <xsl:attribute name="code">D</xsl:attribute>
      </xsl:element>

      <xsl:element name="interactionId">
        <xsl:attribute name="root">2.16.840.1.113883.1.6</xsl:attribute>
        <xsl:attribute name="extension">MCCI_IN200100UV01"</xsl:attribute>
      </xsl:element>

      
      <xsl:element name="name">
        <xsl:attribute name="code">1</xsl:attribute>
        <xsl:attribute name="codeSystem">2.16.840.1.113883.3.989.2.1.1.1"</xsl:attribute>
        <xsl:attribute name="codeSystemVersion">2.0"</xsl:attribute>
      </xsl:element>

      <xsl:element name="PORR_IN049016UV">
           
        <xsl:element name="id">
          <xsl:attribute name="root">2.16.840.1.113883.3.989.2.1.3.1</xsl:attribute>
          <!-- extensión llamada de algún lado -->
          <xsl:attribute name="extension">UMC-UMCORG-300001133</xsl:attribute>
        </xsl:element>

        <xsl:element name="creationTime">
          <xsl:attribute name="value"><xsl:value-of select ="format-date(//item/item[linkId/@value='fechaLlenadoFicha']/answer//@value, '[Y][M01][D01]')" />
          </xsl:attribute>          
        </xsl:element>

        <xsl:element name="interactionId">
          <xsl:attribute name="root">2.16.840.1.113883.1.6</xsl:attribute>
          <xsl:attribute name="extension">PORR_IN049016UV</xsl:attribute>
        </xsl:element>

        <xsl:element name="processingCode">
          <xsl:attribute name="code">P</xsl:attribute>          
        </xsl:element>

        <xsl:element name="processingModeCode">
          <xsl:attribute name="code">T</xsl:attribute>          
        </xsl:element>

        <xsl:element name="acceptAckCode">
          <xsl:attribute name="code">AL</xsl:attribute>          
        </xsl:element>

        <xsl:element name="receiver">
          <xsl:attribute name="typeCode">RCV</xsl:attribute>
            <xsl:element name="device">
              <xsl:attribute name="classCode">DEV</xsl:attribute>
              <xsl:attribute name="determinerCode">INSTANCE</xsl:attribute>
                <xsl:element name="id">
                  <xsl:attribute name="root">Root del Id del sistema</xsl:attribute>
                  <xsl:attribute name="extension">Extension id sistema</xsl:attribute>
                </xsl:element>
            </xsl:element>
          
        </xsl:element>

        <xsl:element name="sender">
          <xsl:attribute name="typeCode">SND</xsl:attribute>
            <xsl:element name="device">
              <xsl:attribute name="classCode">DEV</xsl:attribute>
              <xsl:attribute name="determinerCode">INSTANCE</xsl:attribute>
                <xsl:element name="id">
                  <xsl:attribute name="root">Root del Id del sistema</xsl:attribute>
                  <xsl:attribute name="extension">Extension id sistema</xsl:attribute>
                </xsl:element>
            </xsl:element>
          
        </xsl:element>

        
        
        <xsl:element name="controlActProcess">
          <xsl:attribute name="classCode">CACT</xsl:attribute>
          <xsl:attribute name="moodCode">EVN</xsl:attribute>
            <xsl:element name="code">
              <xsl:attribute name="code">PORR_TE049016UV</xsl:attribute>
              <xsl:attribute name="codeSystem">2.16.840.1.113883.1.18</xsl:attribute>              
            </xsl:element>
            <xsl:element name="effectiveTime">
              <!-- Se uso la hora de llenado de ficha.. revisar este bien -->  
              <xsl:attribute name="value"><xsl:value-of select ="format-date(//item/item[linkId/@value='fechaLlenadoFicha']/answer//@value, '[Y][M01][D01]')" />
              </xsl:attribute>          
            </xsl:element>  

            <!-- comienzo de volcado del formulario -->    
            <xsl:element name="subject">
              <xsl:attribute name="typeCode">SUBJ</xsl:attribute>
              
              <xsl:element name="investigationEvent">
                <xsl:attribute name="classCode">INVSTG</xsl:attribute>
                <xsl:attribute name="moodCode">EVN</xsl:attribute>
                  <!--ahora vamos -->
                  <xsl:element name="id">
                    <xsl:attribute name="root">2.16.840.1.113883.3.989.2.1.3.1</xsl:attribute>
                    <!-- se uso el numero de caso.. revisar -->
                    <xsl:attribute name="extension"><xsl:value-of select ="//item/item[linkId/@value='numeroCaso']/answer//@value" />
                    </xsl:attribute> 
                  </xsl:element>

                  <xsl:element name="id">
                    <xsl:attribute name="root">2.16.840.1.113883.3.989.2.1.3.2</xsl:attribute>
                    <!-- se uso el numero de caso.. revisar -->
                    <xsl:attribute name="extension"><xsl:value-of select ="//item/item[linkId/@value='numeroCaso']/answer//@value" />
                    </xsl:attribute> 
                  </xsl:element>

                  <xsl:element name="code">
                    <xsl:attribute name="code">PAT_ADV_EVNT</xsl:attribute>
                    <xsl:attribute name="codeSystem">2.16.840.1.113883.5.4</xsl:attribute>              
                  </xsl:element>

                  <!-- descripcionESAVI a H.5.r.1a --> 
                  <xsl:element name="text">
                    <xsl:value-of select ="//item/item[linkId/@value='descripcionESAVI']/answer//@value" />
                                       
                  </xsl:element>

                  <!-- statusCode Siempre Active -->
                  <xsl:element name="statusCode">
                   <xsl:attribute name="code">active</xsl:attribute>        
                   
                  </xsl:element> 

                  <!--  fechaNotificacion a C.1.UMC.2 -->
                  <xsl:element name="effectiveTime">
                    <xsl:element name="low">               
                    
                      <xsl:attribute name="value"><xsl:value-of select ="format-date(//item/item[linkId/@value='fechaNotificacion']/answer//@value, '[Y][M01][D01]')" />
                      </xsl:attribute> 
                    </xsl:element>         
                  </xsl:element>

                  <!--  idem al anterior -->
                  <xsl:element name="availabilityTime">                  
                    
                      <xsl:attribute name="value"><xsl:value-of select ="format-date(//item/item[linkId/@value='fechaNotificacion']/answer//@value, '[Y][M01][D01]')" />
                      </xsl:attribute>                            
                  </xsl:element>

                  <!--  definiciones de la notificacion por E2b -->
                  <xsl:element name="component">
                   <xsl:attribute name="typeCode">COMP</xsl:attribute>        
                   <xsl:element name="observationEvent">
                     <xsl:attribute name="classCode">OBS</xsl:attribute> 
                     <xsl:attribute name="moodCode">EVN</xsl:attribute> 
                     <xsl:element name="code">
                       <xsl:attribute name="code">23</xsl:attribute> 
                       <xsl:attribute name="codeSystem">2.16.840.1.113883.3.989.2.1.1.19</xsl:attribute> 
                       <xsl:attribute name="codeSystemVersion">2.0</xsl:attribute>                      
                     </xsl:element>
                     <!--  en esta no se considera como xsl:value sino como atributo y dejamos fuera el xsi:type-->
                     <xsl:element name="value">
                      <xsl:attribute name="value">NI</xsl:attribute>
                      <!-- <value xsi:type="BL" nullFlavor="NI" /> -->                       
                     </xsl:element>
                     
                    </xsl:element>
                  </xsl:element>

                  <xsl:element name="component">
                    <xsl:attribute name="typeCode">COMP</xsl:attribute>
                    <xsl:element name="adverseEventAssessment">
                      <xsl:attribute name="classCode">INVSTG</xsl:attribute>
                      <xsl:attribute name="moodCode">EVN</xsl:attribute>
                    </xsl:element>
                    
                    <!-- Datos del Paciente y su ESAVI /> -->
                    <xsl:element name="subject1">
                      <xsl:attribute name="typeCode">SBJ</xsl:attribute>
                      <xsl:element name="primaryRole">
                        <xsl:attribute name="classCode">INVSBJ</xsl:attribute>
                        <!-- el Paciente /> -->
                        <xsl:element name="player1">
                          <xsl:attribute name="classCode">PSN</xsl:attribute> 
                          <xsl:attribute name="determineCode">INSTANCE</xsl:attribute>  
                          
                          <!-- Sexo Paciente /> -->
                          <xsl:element name="administrativeGenderCode">
                            <xsl:attribute name="code"><xsl:value-of select ="//item/item/item[linkId/@value='sexoPaciente']/answer/valueCoding/code//@value" />
                            </xsl:attribute>
                            <xsl:attribute name="codeSystem">2.16.840.1.113883.4.642.3.1</xsl:attribute> 
                            
                          </xsl:element>

                          <!-- Fecha de Nacimiento /> -->
                          <xsl:element name="birthTime">
                            <xsl:attribute name="value"><xsl:value-of select ="format-date(//item/item[linkId/@value='fechaNacimiento']/answer//@value, '[Y][M01][D01]')" />
                            </xsl:attribute> 
                          </xsl:element>
                          
                          <!-- Dirección: Desde el Formulario tenemos todo junto copiamos todo en city y state /> -->
                          <xsl:element name="addr">
                            <xsl:element name="city"><xsl:value-of select ="//item/item/item[linkId/@value='nombreResidenciaHabitual']/answer//@value" />
                            </xsl:element>
                            <xsl:element name="state"><xsl:value-of select ="//item/item[linkId/@value='nombreResidenciaHabitual']/answer//@value" />
                            </xsl:element>
                          </xsl:element>

                        </xsl:element>
                        <!-- Ahora una serie de SubjectOF2 este es para determinar si reporta enfermnedad previa/> -->
                        <xsl:element name="subjectOf2">
                          <xsl:element name="organizer">
                            <xsl:attribute name="classCode">CATEGORY</xsl:attribute> 
                            <xsl:attribute name="moodCode">EVN</xsl:attribute> 

                            <xsl:element name="code">
                              <xsl:attribute name="code">1</xsl:attribute> 
                              <xsl:attribute name="codeSystem">2.16.840.1.113883.3.989.2.1.1.20</xsl:attribute> 
                              <xsl:attribute name="codeSystemVersion">2.0</xsl:attribute>                              
                            </xsl:element>                            

                            <xsl:element name="component">
                              <xsl:attribute name="typeCode">COMP</xsl:attribute> 

                              <xsl:element name="observation">
                                <xsl:attribute name="classCode">OBS</xsl:attribute> 
                                <xsl:attribute name="moodCode">EVN</xsl:attribute> 
                                  
                                  <!-- Código Medra para antecedentes médicos.. esto es repetitivo /> -->
                                  <xsl:element name="code">
                                    <xsl:attribute name="code"><xsl:value-of select ="//item/item[linkId/@value='codigoMedDRAEnfPrevia']/answer/valueCoding/code//@value" />
                                    </xsl:attribute> 
                                    <xsl:attribute name="codeSystem">2.16.840.1.113883.6.163</xsl:attribute> 
                                    <xsl:attribute name="codeSystemVersion">Dont Know</xsl:attribute>                              
                                  </xsl:element>

                                  <!-- Texto para historia médica, en mapeo se habla de D.7.1.r5, yo creo es D7.2 /> -->
                                  <xsl:element name="outboundRelationship2">
                                    <xsl:attribute name="typeCode">COMP</xsl:attribute>

                                    <xsl:element name="observation"> 
                                      <xsl:attribute name="classCode">OBS</xsl:attribute>
                                      <xsl:attribute name="moodCode">EVN</xsl:attribute>
                                    </xsl:element>

                                    <xsl:element name="code">                                     
                                      <xsl:attribute name="code">10</xsl:attribute> 
                                      <xsl:attribute name="codeSystem">2.16.840.1.113883.3.989.2.1.1.19</xsl:attribute> 
                                      <xsl:attribute name="codeSystemVersion">1.1</xsl:attribute>
                                      <xsl:attribute name="displayName">comment</xsl:attribute>                              
                                    </xsl:element>
                                    <!-- Ahora va un <value xsi:type="ED"> /> -->
                                    <xsl:element name="value">
                                      <xsl:value-of select ="//item/item[linkId/@value='descripcionEnfPrevia']/answer//@value" />
                                                                      
                                    </xsl:element>
                                  </xsl:element>
                              </xsl:element>
                              
                            </xsl:element>
                          </xsl:element>
                          
                        </xsl:element>

                        <!-- Reporte de Medicamentos  /> -->
                        <xsl:element name="subjectOf2">
                          <xsl:attribute name="typeCode">SBJ</xsl:attribute>
                          <xsl:element name="organizer">
                            <xsl:attribute name="classCode">CATEGORY</xsl:attribute> 
                            <xsl:attribute name="moodCode">EVN</xsl:attribute>
                            <xsl:element name="code"> 
                              <xsl:attribute name="code">2</xsl:attribute> 
                              <xsl:attribute name="codeSystem">2.16.840.1.113883.3.989.2.1.1.20</xsl:attribute>
                              <xsl:attribute name="codeSystemVersion">1.0</xsl:attribute>
                              <xsl:attribute name="display">drugHistory</xsl:attribute>

                              <xsl:element name="component"> 
                                
                                <xsl:element name="substanceAdministration"> 
                                  <xsl:attribute name="classCode">SBADM</xsl:attribute> 
                                  <xsl:attribute name="moodCode">EVN</xsl:attribute>
                                
                                </xsl:element> 
                                <xsl:element name="consumable"> 
                                  <xsl:attribute name="typeCode">CSM</xsl:attribute>
                                  <xsl:element name="instanceOfKind">
                                    <xsl:attribute name="classCode">INST</xsl:attribute> 
                                    <xsl:element name="kindOfProduct"> 
                                      <xsl:attribute name="classCode">MMAT</xsl:attribute> 
                                      <xsl:attribute name="determinerCode">KIND</xsl:attribute>
                                      <xsl:element name="code">
                                        <xsl:attribute name="code"><xsl:value-of select ="//item/item/item[linkId/@value='codigoMedicamento']/answer/valueCoding/code//@value" />
                                        </xsl:attribute>
                                        <xsl:attribute name="codeSystem">http://paho.org/esavi/CodeSystem/CodigoMedicamentoCS</xsl:attribute>
                                        <xsl:attribute name="codeSystemVersion">1.0</xsl:attribute>                            

                                      </xsl:element>
                                      <xsl:element name="name">
                                        <xsl:value-of select ="//item/item[linkId/@value='nombreMedicamento']/answer//@value" />
                                      </xsl:element>
                                    </xsl:element>

                                  </xsl:element>

                                </xsl:element> 
                                <!-- Medicamento en MEdra  /> -->
                              </xsl:element> 
                            </xsl:element> 


                          </xsl:element>
                          
                        </xsl:element>   


                        <!-- Segundo subjectOf2 este reporta la descripción del evento adverso... me tinca son los E.i  /> -->
                        <xsl:element name="subjectOf2">
                          <xsl:element name="observation">
                            <xsl:attribute name="classCode">OBS</xsl:attribute> 
                            <xsl:attribute name="moodCode">EVN</xsl:attribute> 
                            <xsl:element name="id">
                              <xsl:attribute name="root">b4e7654d-86eb-4509-97eb-1d5dbd563bc7</xsl:attribute><!-- Me tinca es generico para el caso en ICH sale otro   /> -->
                            </xsl:element>

                            <!-- Código que indica se notifica una reacción /> -->
                            <xsl:element name="code">
                              <xsl:attribute name="code">29</xsl:attribute> 
                              <xsl:attribute name="codeSystem">2.16.840.1.113883.3.989.2.1.1.19</xsl:attribute> 
                              <xsl:attribute name="codeSystemVersion">2.0</xsl:attribute>    
                              <xsl:attribute name="displayName">reaction</xsl:attribute>                          
                            </xsl:element>

                            <!-- Fecha de la  reacción, en FHIR trabajamos solo con una y no con rango /> -->
                            <xsl:element name="effectiveTime">
                              <!-- Ahora va un <value xsi:type="IVL_TS"> /> -->
                              <xsl:element name="low"> 
                                <xsl:attribute name="value"><xsl:value-of select ="format-date(//item/item[linkId/@value='fechaESAVI']/answer//@value, '[Y][M01][D01]')" />
                                </xsl:attribute>
                              </xsl:element>
                              <!-- No debiera ir un high pero lo dejo copiando la fecha /> -->
                              <xsl:element name="high"> 
                                <xsl:attribute name="value"><xsl:value-of select ="format-date(//item/item[linkId/@value='fechaESAVI']/answer//@value, '[Y][M01][D01]')" />
                                </xsl:attribute>
                              </xsl:element>
                            </xsl:element>

                            <!-- Código en Medra y texto de la reación notificada /> -->
                            <xsl:element name="value">
                              <!-- Ahora va un <value xsi:type="CE"> /> -->
                              <xsl:attribute name="code"><xsl:value-of select ="//item/item[linkId/@value='codigoESAVIMedDRA']/answer/valueCoding/code//@value" />
                              </xsl:attribute> 
                              <xsl:attribute name="codeSystem">2.16.840.1.113883.6.163</xsl:attribute> 
                              <xsl:attribute name="codeSystemVersion">DEFINIR</xsl:attribute>
                              <xsl:element name="originalText">
                                <xsl:attribute name="language">es</xsl:attribute>
                                <xsl:value-of select ="//item/item[linkId/@value='descripcionESAVI']/answer//@value" />
                              </xsl:element>                                 
                            </xsl:element>

                            <!-- ubicación  a nivel de país de donde se notifica /> -->
                            <xsl:element name="location">
                              <xsl:attribute name="typeCode">LOC</xsl:attribute>
                              <xsl:element name="location">
                                <xsl:attribute name="classCode">LOCE</xsl:attribute>
                                <xsl:element name="locatedPlace">
                                  <xsl:attribute name="classCode">COUNTRY</xsl:attribute>
                                  <xsl:attribute name="determinerCode">INSTANCE</xsl:attribute>
                                  <xsl:element name="code">
                                    <xsl:attribute name="code"><xsl:value-of select ="//item/item[linkId/@value='codigoDireccionOrganizacion']/answer/valueCoding/code//@value" />
                                    </xsl:attribute> 
                                    <xsl:attribute name="codeSystem">	http://paho.org/esavi/ValueSet/DirOrgNotiVS</xsl:attribute> <!-- Aqui debiera ir un OID /> -->
                                  </xsl:element>
                                </xsl:element>
                              </xsl:element>
                              
                              <!-- ¿desenlace muerte? /> -->
                              <xsl:element name="outboundRelationship2">
                                <xsl:attribute name="typeCode">PERT</xsl:attribute>
                                <xsl:element name="observation">
                                  <xsl:attribute name="classCode">OBS</xsl:attribute> 
                                  <xsl:attribute name="moodCode">EVN</xsl:attribute>
                                  <xsl:element name="code">
                                    <xsl:attribute name="code">34</xsl:attribute> 
                                    <xsl:attribute name="codeSystem">2.16.840.1.113883.3.989.2.1.1.19</xsl:attribute> 
                                    <xsl:attribute name="codeSystemVersion">2.0</xsl:attribute>
                                    <xsl:attribute name="displayName">resultsInDeath</xsl:attribute>
                                    
                                    <xsl:element name="value">
                                       <!-- Ahora va un <value xsi:type="BL"> /> -->
                                      <xsl:attribute name="value"><xsl:value-of select ="//item/item[linkId/@value='gravMuerte']/answer//@value" />
                                      </xsl:attribute>
                                    </xsl:element> 
                                                                                                                                        
                                  </xsl:element>
                                </xsl:element>
                              </xsl:element>

                               <!-- Riesgo Vida /> -->
                              <xsl:element name="outboundRelationship2">
                                <xsl:attribute name="typeCode">PERT</xsl:attribute>
                                <xsl:element name="observation">
                                  <xsl:attribute name="classCode">OBS</xsl:attribute> 
                                  <xsl:attribute name="moodCode">EVN</xsl:attribute>
                                  <xsl:element name="code">
                                    <xsl:attribute name="code">21</xsl:attribute> 
                                    <xsl:attribute name="codeSystem">2.16.840.1.113883.3.989.2.1.1.19</xsl:attribute> 
                                    <xsl:attribute name="codeSystemVersion">2.0</xsl:attribute>
                                    <xsl:attribute name="displayName">isLifeThreatening</xsl:attribute>
                                    
                                    <xsl:element name="value">
                                       <!-- Ahora va un <value xsi:type="BL"> /> -->
                                      <xsl:attribute name="value"><xsl:value-of select ="//item/item[linkId/@value='gravRiesgoVida']/answer//@value" />
                                      </xsl:attribute>
                                    </xsl:element> 
                                                                                                                                        
                                  </xsl:element>
                                </xsl:element>
                              </xsl:element>

                              <!-- Hospitalización /> -->
                              <xsl:element name="outboundRelationship2">
                                <xsl:attribute name="typeCode">PERT</xsl:attribute>
                                <xsl:element name="observation">
                                  <xsl:attribute name="classCode">OBS</xsl:attribute> 
                                  <xsl:attribute name="moodCode">EVN</xsl:attribute>
                                  <xsl:element name="code">
                                    <xsl:attribute name="code">33</xsl:attribute> 
                                    <xsl:attribute name="codeSystem">2.16.840.1.113883.3.989.2.1.1.19</xsl:attribute> 
                                    <xsl:attribute name="codeSystemVersion">2.0</xsl:attribute>
                                    <xsl:attribute name="displayName">requiresInpatientHospitalization</xsl:attribute>
                                    
                                    <xsl:element name="value">
                                       <!-- Ahora va un <value xsi:type="BL"> /> -->
                                      <xsl:attribute name="value"><xsl:value-of select ="//item/item[linkId/@value='gravHospitalizacion']/answer//@value" />
                                      </xsl:attribute>
                                    </xsl:element> 
                                                                                                                                        
                                  </xsl:element>
                                </xsl:element>
                              </xsl:element>

                              <!-- Discapacidad /> -->
                              <xsl:element name="outboundRelationship2">
                                <xsl:attribute name="typeCode">PERT</xsl:attribute>
                                <xsl:element name="observation">
                                  <xsl:attribute name="classCode">OBS</xsl:attribute> 
                                  <xsl:attribute name="moodCode">EVN</xsl:attribute>
                                  <xsl:element name="code">
                                    <xsl:attribute name="code">35</xsl:attribute> 
                                    <xsl:attribute name="codeSystem">2.16.840.1.113883.3.989.2.1.1.19</xsl:attribute> 
                                    <xsl:attribute name="codeSystemVersion">2.0</xsl:attribute>
                                    <xsl:attribute name="displayName">resultsInPersistentOrSignificantDisability</xsl:attribute>
                                    
                                    <xsl:element name="value">
                                       <!-- Ahora va un <value xsi:type="BL"> /> -->
                                      <xsl:attribute name="value"><xsl:value-of select ="//item/item[linkId/@value='gravDiscapacidad']/answer//@value" />
                                      </xsl:attribute>
                                    </xsl:element> 
                                                                                                                                        
                                  </xsl:element>
                                </xsl:element>
                              </xsl:element>

                              <!-- Anomalía Congénita /> -->
                              <xsl:element name="outboundRelationship2">
                                <xsl:attribute name="typeCode">PERT</xsl:attribute>
                                <xsl:element name="observation">
                                  <xsl:attribute name="classCode">OBS</xsl:attribute> 
                                  <xsl:attribute name="moodCode">EVN</xsl:attribute>
                                  <xsl:element name="code">
                                    <xsl:attribute name="code">12</xsl:attribute> 
                                    <xsl:attribute name="codeSystem">2.16.840.1.113883.3.989.2.1.1.19</xsl:attribute> 
                                    <xsl:attribute name="codeSystemVersion">2.0</xsl:attribute>
                                    <xsl:attribute name="displayName">congenitalAnomalyBirthDefect</xsl:attribute>
                                    
                                    <xsl:element name="value">
                                       <!-- Ahora va un <value xsi:type="BL"> /> -->
                                      <xsl:attribute name="value"><xsl:value-of select ="//item/item[linkId/@value='gravAnomaliaCongenita']/answer//@value" />
                                      </xsl:attribute>
                                    </xsl:element> 
                                                                                                                                        
                                  </xsl:element>
                                </xsl:element>
                              </xsl:element>

                              <!-- Otros Eventos Importantes /> -->
                              <xsl:element name="outboundRelationship2">
                                <xsl:attribute name="typeCode">PERT</xsl:attribute>
                                <xsl:element name="observation">
                                  <xsl:attribute name="classCode">OBS</xsl:attribute> 
                                  <xsl:attribute name="moodCode">EVN</xsl:attribute>
                                  <xsl:element name="code">
                                    <xsl:attribute name="code">26</xsl:attribute> 
                                    <xsl:attribute name="codeSystem">2.16.840.1.113883.3.989.2.1.1.19</xsl:attribute> 
                                    <xsl:attribute name="codeSystemVersion">2.0</xsl:attribute>
                                    <xsl:attribute name="displayName">otherMedicallyImportantCondition</xsl:attribute>
                                    
                                    <xsl:element name="value">
                                       <!-- Ahora va un <value xsi:type="BL"> /> -->
                                      <xsl:attribute name="value"><xsl:value-of select ="//item/item[linkId/@value='otrosEventosImportantes']/answer//@value" />
                                      </xsl:attribute>
                                    </xsl:element> 
                                                                                                                                        
                                  </xsl:element>
                                </xsl:element>
                              </xsl:element>

                              <!-- Desenlace ESAVI ... el codigo es nuestro no se si calza con el del OID/> -->
                              <xsl:element name="outboundRelationship2">
                                <xsl:attribute name="typeCode">PERT</xsl:attribute>
                                <xsl:element name="observation">
                                  <xsl:attribute name="classCode">OBS</xsl:attribute> 
                                  <xsl:attribute name="moodCode">EVN</xsl:attribute>
                                  <xsl:element name="code">
                                    <xsl:attribute name="code">27</xsl:attribute> 
                                    <xsl:attribute name="codeSystem">2.16.840.1.113883.3.989.2.1.1.19</xsl:attribute> 
                                    <xsl:attribute name="codeSystemVersion">2.0</xsl:attribute>
                                    <xsl:attribute name="displayName">outcome</xsl:attribute>
                                    
                                   
                                    <xsl:element name="value">                      
                                       <!-- Ahora va un <value xsi:type="CE"> /> -->                                      
                                      <xsl:attribute name="code"><xsl:value-of select ="//item/item[linkId/@value='codDesenlaceESAVI']/answer/valueCoding/code//@value" />
                                      </xsl:attribute>
                                      <xsl:attribute name="codeSystem">2.16.840.1.113883.3.989.2.1.1.11</xsl:attribute> 
                                      <xsl:attribute name="codeSystemVersion">2.0</xsl:attribute>
                                    </xsl:element> 
                                                                                                                                        
                                  </xsl:element>
                                </xsl:element>
                              </xsl:element>

                              
                            </xsl:element>
                          </xsl:element>
                        </xsl:element>
                        <!-- Fin descripción del Evento Adverso SE REPITE CUANTO SE DEBE /> -->


                         
                      </xsl:element>
                    </xsl:element>
                  </xsl:element>


              </xsl:element>
              <!-- fin investigationEvent --> 
              
            </xsl:element>
             <!-- fin de volcado del formulario -->     
        </xsl:element>
        <!-- fin controlActProcess --> 


        <xsl:element name="id">
          <xsl:attribute name="extension"><xsl:value-of select ="//item/item[linkId/@value='numeroCaso']/answer//@value" />
          </xsl:attribute>
          <xsl:attribute name="root">2.16.840.1.113883.3.989.2.1.3.22</xsl:attribute>
        </xsl:element>

        <xsl:element name="value">
          <xsl:attribute name="xsi:type">BL</xsl:attribute>
          
        </xsl:element>
      </xsl:element>
     <!-- <xsl:apply-templates/>  -->
    </xsl:element>
  </xsl:template>
  
  


  
</xsl:stylesheet> 