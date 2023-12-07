<?php
session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Incluir o arquivo de conexão com o banco de dados
    include('dbdb.php');

                     
          
    $data_ocorrencia = $_POST['data_ocorrencia'];
    $genero_paciente = isset($_POST['genero_paciente']) ? $_POST['genero_paciente'] : '';
    $nome_hospital = $_POST['hospital'];
    $nome_paciente = $_POST['nome'];
    $idade_paciente = $_POST['idade'];
    $CPF_paciente = $_POST['cpf'];
    $telefone_paciente = $_POST['telefone'];
    $nome_acompanhante = $_POST['nome_acompanhante'];
    $idade_acompanhante = $_POST['idade_acompanhante'];
    $local_da_ocorrencia = $_POST['local_ocorrencia'];

    // Verificar se o CPF tem 11 digitos
    if (!empty($CPF_paciente) && !preg_match('/^\d{11}$/', $CPF_paciente)) {
        echo "O CPF deve conter exatamente 11 números.";
    } else {
    // Inserir no banco de dados para paciente
    $sql_paciente = "INSERT INTO paciente (data_ocorrencia, genero_paciente, nome_hospital, nome_paciente, idade_paciente, CPF_paciente, telefone_paciente, nome_acompanhante, idade_acompanhante, local_da_ocorrencia) 
                    VALUES ('$data_ocorrencia', '$genero_paciente', '$nome_hospital', '$nome_paciente', '$idade_paciente', '$CPF_paciente', '$telefone_paciente', '$nome_acompanhante', '$idade_acompanhante', '$local_da_ocorrencia')";
    }
    // Executar a query para paciente
    if ($conn->query($sql_paciente) === TRUE) {
        $last_paciente_id = $conn->insert_id;
    }
                      
            
    $causado_por_animais = isset($_POST['Animais']) ? 1 : null;
    $com_meio_de_transporte = isset($_POST['Meio_De_Transporte']) ? 1 : null;
    $desmoronamento_deslizamento = isset($_POST['Deslizamento']) ? 1 : null;
    $emergencia_medica = isset($_POST['Emergencia_Medica']) ? 1 : null;
    $queda_de_altura_2m = isset($_POST['Queda_De_Altura']) ? 1 : null;
    $tentativa_de_suicidio = isset($_POST['Tentativa_Suicidio']) ? 1 : null;
    $queda_propria_altura = isset($_POST['Queda_P_Altura']) ? 1 : null;
    $afogamento = isset($_POST['Afogamento']) ? 1 : null;
    $agressao = isset($_POST['Agressao']) ? 1 : null;
    $atropelamento = isset($_POST['Atropelamento']) ? 1 : null;
    $choque_eletrico = isset($_POST['Choque']) ? 1 : null;
    $desabamento = isset($_POST['Desabamento']) ? 1 : null;
    $domestico = isset($_POST['Domestico']) ? 1 : null;
    $esportivo = isset($_POST['Esportivo']) ? 1 : null;
    $intoxicacao = isset($_POST['Intoxicacao']) ? 1 : null;
    $queda_bicicleta = isset($_POST['Queda_Bike']) ? 1 : null;
    $queda_moto = isset($_POST['Queda_Moto']) ? 1 : null;
    $queda_nivel_2m = isset($_POST['Queda_Nivel']) ? 1 : null;
    $trabalho = isset($_POST['Trabalho']) ? 1 : null;
    $transferencia = isset($_POST['Transferencia']) ? 1 : null;
    $outro_campo = isset($_POST['Outroo']) ? $_POST['Outro'] : null;
    $outro_campo_text = isset($_POST['Outro_Text']) ? mysqli_real_escape_string($conn, $_POST['Outro_Text']) : null;


    // Inserir no banco de dados para ficha_tipo_de_ocorrencia
    $sql_tipo_ocorrencia = "INSERT INTO tipo_de_ocorrencia (
        Causado_Por_Animais, Com_Meio_De_Transporte, Desmoronamento_Deslizamento, Emergencia_Medica,
        Queda_De_Altura_2M, Tentativa_De_Suicidio, Queda_Propria_Altura, Afogamento, Agressao,
        Atropelamento, Choque_Eletrico, Desabamento, Domestico, Esportivo, Intoxicacao,
        Queda_Bicicleta, Queda_Moto, Queda_Nivel_2M, Trabalho, Transferencia, Outro_Campo) 
                            VALUES (
                            " . ($causado_por_animais ?? 'NULL') . ",
                            " . ($com_meio_de_transporte ?? 'NULL') . ",
                            " . ($desmoronamento_deslizamento ?? 'NULL') . ",
                            " . ($emergencia_medica ?? 'NULL') . ",
                            " . ($queda_de_altura_2m ?? 'NULL') . ",
                            " . ($tentativa_de_suicidio ?? 'NULL') . ",
                            " . ($queda_propria_altura ?? 'NULL') . ",
                            " . ($afogamento ?? 'NULL') . ",
                            " . ($agressao ?? 'NULL') . ",
                            " . ($atropelamento ?? 'NULL') . ",
                            " . ($choque_eletrico ?? 'NULL') . ",
                            " . ($desabamento ?? 'NULL') . ",
                            " . ($domestico ?? 'NULL') . ",
                            " . ($esportivo ?? 'NULL') . ",
                            " . ($intoxicacao ?? 'NULL') . ",
                            " . ($queda_bicicleta ?? 'NULL') . ",
                            " . ($queda_moto ?? 'NULL') . ",
                            " . ($queda_nivel_2m ?? 'NULL') . ",
                            " . ($trabalho ?? 'NULL') . ",
                            " . ($transferencia ?? 'NULL') . ",
                                " . ($outro_campo !== '' ? "'$outro_campo'" : 'NULL') . "
                            )";

    // Executar a query para tipo_de_ocorrencia
    if ($conn->query($sql_tipo_ocorrencia) === TRUE) {
        $last_tipo_ocorrencia_id = $conn->insert_id;
    } else {
        echo "Erro ao inserir dados: " . $conn->error;
    }

                     
          
    $forma_conducao = isset($_POST['forma_conducao']) ? $_POST['forma_conducao'] : '';

      // Inserir no banco de dados para transporte_forma_de_conducao
        $sql_forma_conducao = "INSERT INTO transporte_forma_de_conducao (forma_conducao) VALUES ('$forma_conducao')";

    if ($conn->query($sql_forma_conducao) === TRUE) {
        $last_forma_conducao_id = $conn->insert_id;
    } else {
        echo "Erro ao inserir dados: " . $conn->error;
    }

                           
                      
    $observacoes_importantes = isset($_POST['obsImpor']) ? mysqli_real_escape_string($conn, $_POST['obsImpor']) : '';

    // Inserir no banco de dados para observacoes_importantes
    $sql_observacoes = "INSERT INTO observacoes_importantes (observacoes_importantes) VALUES ('$observacoes_importantes')";

    // Executar a query para observacoes_importantes
    if ($conn->query($sql_observacoes) === TRUE) {
        $last_observacoes_id = $conn->insert_id;
    } else {
        echo "Erro ao salvar observações importantes: " . $conn->error;
    }

                     
          
    function getSafePost($key, $default = '')
    {
        return isset($_POST[$key]) ? $_POST[$key] : $default;
    }
    // Obter valor do campo 'perfusao'
    $perfusao_option = isset($_POST['perfusão']) ? $_POST['perfusão'] : null;
    // Definir $perfusao diretamente ou como NULL
    $perfusao = ($perfusao_option === 'perfusão2maior' || $perfusao_option === 'perfusão2menor') ? $perfusao_option : null;

    // Inserir dados no banco de dados para sinais_vitais
    $stmt = $conn->prepare("INSERT INTO sinais_vitais (pressao_arterial0, pressao_arterial1, pulso, respiracao, saturacao, hgt, temperatura, perfusao) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("ssssssss", $pressao_arterial0, $pressao_arterial1, $pulso, $respiracao, $saturacao, $hgt, $temperatura, $perfusao);

    $pressao_arterial0 = getSafePost('Pressão_arterial1');
    $pressao_arterial1 = getSafePost('Pressão_arterial2');
    $pulso = getSafePost('Pulso');
    $respiracao = getSafePost('Respiracao');
    $saturacao = getSafePost('Saturação');
    $hgt = getSafePost('HGT');
    $temperatura = getSafePost('Temperatura');

    $stmt->execute();

    if ($stmt->affected_rows > 0) {
        $last_sinais_vitais_id = $conn->insert_id;
    } else {
        echo "Erro ao salvar dados: " . $stmt->error;
    }

                      
            
    $objetos_recolhidos = isset($_POST['objRec']) ? mysqli_real_escape_string($conn, $_POST['objRec']) : '';

    // Inserir no banco de dados para objetos_recolhidos
    $sql_objetos = "INSERT INTO objetos_recolhidos (objetos_recolhidos) VALUES ('$objetos_recolhidos')";

    // Executar a query para objetos_recolhidos
    if ($conn->query($sql_objetos) === TRUE) {
        $last_objetos_id = $conn->insert_id;
    } else {
        echo "Erro ao salvar objetos recolhidos: " . $conn->error;
    }

              
 $vitima_era = isset($_POST['Vitima_Era']) ? $_POST['Vitima_Era'] : '';

    // Inserir no banco de dados para transporte_vitima_era
    $sql_vitima = "INSERT INTO transporte_vitima_era (vitima_era) VALUES ('$vitima_era')";

    // Executar a query para transporte_vitima_era
    if ($conn->query($sql_vitima) === TRUE) {
        $last_vitima_id = $conn->insert_id;
    } else {
        echo "Erro ao salvar vitima era: " . $conn->error;
    }

                           
                      
    $disturbio_comportamento = isset($_POST['disturbio_comportamento']) ? $_POST['disturbio_comportamento'] : null;
    $encontra_capacete = isset($_POST['encontra_capacete']) ? $_POST['encontra_capacete'] : null;
    $encontrado_cinto = isset($_POST['encontrado_cinto']) ? $_POST['encontrado_cinto'] : null;
    $para_brisa_avariado = isset($_POST['para_brisa_avariado']) ? $_POST['para_brisa_avariado'] : null;
    $caminhando_na_cena = isset($_POST['caminhando_na_cena']) ? $_POST['caminhando_na_cena'] : null;
    $painel_avariado = isset($_POST['painel_avariado']) ? $_POST['painel_avariado'] : null;
    $volante_torcido = isset($_POST['volante_torcido']) ? $_POST['volante_torcido'] : null;

    // Se o campo não for enviado deixar o valor como nulo
    $disturbio_comportamento = ($disturbio_comportamento === null) ? null : ($disturbio_comportamento === 'Sim' ? 'Sim' : 'Não');
    $encontra_capacete = ($encontra_capacete === null) ? null : ($encontra_capacete === 'Sim' ? 'Sim' : 'Não');
    $encontrado_cinto = ($encontrado_cinto === null) ? null : ($encontrado_cinto === 'Sim' ? 'Sim' : 'Não');
    $para_brisa_avariado = ($para_brisa_avariado === null) ? null : ($para_brisa_avariado === 'Sim' ? 'Sim' : 'Não');
    $caminhando_na_cena = ($caminhando_na_cena === null) ? null : ($caminhando_na_cena === 'Sim' ? 'Sim' : 'Não');
    $painel_avariado = ($painel_avariado === null) ? null : ($painel_avariado === 'Sim' ? 'Sim' : 'Não');
    $volante_torcido = ($volante_torcido === null) ? null : ($volante_torcido === 'Sim' ? 'Sim' : 'Não');

    // Inserir dados no banco de dados para avaliacao_cinematica
    $sql_cinematica = "INSERT INTO avaliacao_cinematica (disturbio_comportamento, encontra_capacete, encontrado_cinto, para_brisa_avariado, caminhando_na_cena, painel_avariado, volante_torcido) 
    VALUES ('$disturbio_comportamento', '$encontra_capacete', '$encontrado_cinto', '$para_brisa_avariado', '$caminhando_na_cena', '$painel_avariado', '$volante_torcido')";

    // Executar a query para avaliacao_cinematica
    if ($conn->query($sql_cinematica) === TRUE) {
        $last_cinematica_id = $conn->insert_id;
    } else {
        echo "Erro ao inserir dados: " . $conn->error;
    }

                      
            
    $decisao_transporte = isset($_POST['Decisao_Transporte']) ? $_POST['Decisao_Transporte'] : '';
    $M = isset($_POST['M']) ? $_POST['M'] : '';
    $S1 = isset($_POST['S1']) ? $_POST['S1'] : '';
    $S2 = isset($_POST['S2']) ? $_POST['S2'] : '';
    $S3 = isset($_POST['S3']) ? $_POST['S3'] : '';
    $demandante = isset($_POST['Demandante']) ? $_POST['Demandante'] : '';
    $equipe = isset($_POST['Equipe']) ? $_POST['Equipe'] : '';

    // Inserir dados no banco de dados para transporte_decisao_transporte
    $sql_decisao_transporte = "INSERT INTO transporte_decisao_transporte (decisao_transporte, M, S1, S2, S3, Demandante, Equipe) 
    VALUES ('$decisao_transporte', '$M', '$S1', '$S2', '$S3', '$demandante', '$equipe')";

    // Executar a query para transporte_decisao_transporte
    if ($conn->query($sql_decisao_transporte) === TRUE) {
        $last_decisao_transporte_id = $conn->insert_id;
    } else {
        echo "Erro ao inserir dados: " . $conn->error;
    }

                     
          
    $abertura = isset($_POST['Abertura_ocular']) ? $_POST['Abertura_ocular'] : '';
    $respostaVerbal = isset($_POST['Resposta_Verbal']) ? $_POST['Resposta_Verbal'] : '';
    $respostaMotora = isset($_POST['Resposta_Motora']) ? $_POST['Resposta_Motora'] : '';

    // Inserir dados no banco de dados para avaliacao_glasgow
    $sql_glasgow = "INSERT INTO avaliacao_glasgow (Abertura_Ocular, Resposta_Verbal, Resposta_Motora)
    VALUES ('$abertura', '$respostaVerbal', '$respostaMotora')";

    // Executar a query para avaliacao_glasgow
    if ($conn->query($sql_glasgow) === TRUE) {
        $last_glasgow_id = $conn->insert_id;
    } else {
    echo "Erro ao salvar dados: " . $conn->error;
    }

                     
          
    $abdomen_sensivel_rigido = isset($_POST['Abdomen_Rigido']) ? 1 : 0;
    $afundamento_cranio = isset($_POST['Afundamento_Cranio']) ? 1 : 0;
    $agitacao = isset($_POST['Agitacao']) ? 1 : 0;
    $amnesia = isset($_POST['Amnesia']) ? 1 : 0;
    $angna_peito = isset($_POST['Angna_Peito']) ? 1 : 0;
    $apneia = isset($_POST['Apneia']) ? 1 : 0;
    $bradicardia = isset($_POST['Bradicardia']) ? 1 : 0;
    $bradipneia = isset($_POST['Bradipneia']) ? 1 : 0;
    $bronco_aspiracao = isset($_POST['Bronco_Aspiracao']) ? 1 : 0;
    $cefaleia = isset($_POST['Cefaleia']) ? 1 : 0;
    $cianose_labios = isset($_POST['Cianose_Labios']) ? 1 : 0;
    $cianose_extremidade = isset($_POST['Cianose_Extremidade']) ? 1 : 0;
    $convulsao = isset($_POST['Convulsao']) ? 1 : 0;
    $decorticacao = isset($_POST['Decorticacao']) ? 1 : 0;
    $deformidade = isset($_POST['Deformidade']) ? 1 : 0;
    $descerebracao = isset($_POST['Descerebracao']) ? 1 : 0;
    $desmaio = isset($_POST['Desmaio']) ? 1 : 0;
    $desvio_traqueia = isset($_POST['Desvio_Traqueia']) ? 1 : 0;
    $despineia = isset($_POST['Despineia']) ? 1 : 0;
    $dor_local = isset($_POST['Dor_Local']) ? 1 : 0;
    $edema_generalizado = isset($_POST['Edema_Generalizado']) ? 1 : 0;
    $edema_localizado = isset($_POST['Edema_Localizado']) ? 1 : 0;
    $enfisema_subcutaneo = isset($_POST['Enfisema_Subcutaneo']) ? 1 : 0;
    $extase_jugular = isset($_POST['Extase_Jugular']) ? 1 : 0;
    $face_palida = isset($_POST['Face_Palida']) ? 1 : 0;
    $hemorragia_interna = isset($_POST['Hemorragia_Interna']) ? 1 : 0;
    $hemorragia_externa = isset($_POST['Hemorragia_Externa']) ? 1 : 0;
    $hipertensao = isset($_POST['Hipertensao']) ? 1 : 0;
    $hipotensao = isset($_POST['Hipotensao']) ? 1 : 0;
    $nauseas_vomitos = isset($_POST['Nauseas_Vomitos']) ? 1 : 0;
    $nasoragia = isset($_POST['Nasoragia']) ? 1 : 0;
    $obito = isset($_POST['Obito']) ? 1 : 0;
    $otorreia = isset($_POST['Otorreia']) ? 1 : 0;
    $otorragia = isset($_POST['Otorragia']) ? 1 : 0;
    $ovace = isset($_POST['OVACE']) ? 1 : 0;
    $parada_cardiaca = isset($_POST['Parada_Cardiaca']) ? 1 : 0;
    $parada_respiratoria = isset($_POST['Parada_Respiratoria']) ? 1 : 0;
    $priaprismo = isset($_POST['Priaprismo']) ? 1 : 0;
    $prurido_pele = isset($_POST['Prurido_Pele']) ? 1 : 0;
    $pupilas_anisocoria = isset($_POST['Pupilas_Anisocoria']) ? 1 : 0;
    $pupilas_isocoria = isset($_POST['Pupilas_Isocoria']) ? 1 : 0;
    $pupilas_midriase = isset($_POST['Pupilas_Midriase']) ? 1 : 0;
    $pupilas_miose = isset($_POST['Pupilas_Miose']) ? 1 : 0;
    $pupilas_reagente = isset($_POST['Pupilas_Reagente']) ? 1 : 0;
    $pupilas_nao_reagente = isset($_POST['Pupilas_Nao_Reagente']) ? 1 : 0;
    $sede = isset($_POST['Sede']) ? 1 : 0;
    $sinal_battle = isset($_POST['Sinal_Battle']) ? 1 : 0;
    $sinal_guaxinim = isset($_POST['Sinal_Guaxinim']) ? 1 : 0;
    $sudorese = isset($_POST['Sudorese']) ? 1 : 0;
    $taquipneia = isset($_POST['Taquipneia']) ? 1 : 0;
    $taquicardia = isset($_POST['Taquicardia']) ? 1 : 0;
    $tontura = isset($_POST['Tontura']) ? 1 : 0;
    $observacoes = isset($_POST['Observacoes']) ? $_POST['Observacoes'] : '';

    // Inserir dados no banco de dados para sinais_e_sintomas
    $sql_sinais_sintomas = "INSERT INTO sinais_e_sintomas (Abdomen_Sensivel_Rigido, Afundamento_Cranio, Agitacao, Amnesia, Angna_Peito, Apneia, Bradicardia, Bradipneia, Bronco_Aspiracao, 
    Cefaleia, Cianose_Labios, Cianose_Extremidade, Convulsao, Decorticacao, Deformidade, Descerebracao, Desmaio, Desvio_Traqueia, Despineia, Dor_Local, Edema_Generalizado, 
    Edema_Localizado, Enfisema_Subcutaneo, Extase_Jugular, Face_Palida, Hemorragia_Interna, Hemorragia_Externa, Hipertensao, Hipotensao, Nauseas_Vomitos, Nasoragia, Obito, 
    Otorreia, Otorragia, OVACE, Parada_Cardiaca, Parada_Respiratoria, Priaprismo, Prurido_Pele, Pupilas_Anisocoria, Pupilas_Isocoria, Pupilas_Midriase, Pupilas_Miose, 
    Pupilas_reagente, Pupilas_nao_reagente, Sede, Sinal_Battle, Sinal_Guaxinim, Sudorese, Taquipneia, Taquicardia, Tontura, Observacoes) 
    VALUES ($abdomen_sensivel_rigido, $afundamento_cranio, $agitacao, $amnesia, $angna_peito, $apneia, $bradicardia, $bradipneia, $bronco_aspiracao, 
    $cefaleia, $cianose_labios, $cianose_extremidade, $convulsao, $decorticacao, $deformidade, $descerebracao, $desmaio, $desvio_traqueia, $despineia, 
    $dor_local, $edema_generalizado, $edema_localizado, $enfisema_subcutaneo, $extase_jugular, $face_palida, $hemorragia_interna, $hemorragia_externa, 
    $hipertensao, $hipotensao, $nauseas_vomitos, $nasoragia, $obito, $otorreia, $otorragia, $ovace, $parada_cardiaca, $parada_respiratoria, $priaprismo, 
    $prurido_pele, $pupilas_anisocoria, $pupilas_isocoria, $pupilas_midriase, $pupilas_miose, $pupilas_reagente, $pupilas_nao_reagente, $sede, $sinal_battle, 
    $sinal_guaxinim, $sudorese, $taquipneia, $taquicardia, $tontura, '$observacoes')";

    // Executar a query para sinais_e_sintomas
    if ($conn->query($sql_sinais_sintomas) === TRUE) {
        $last_sinais_sintomas_id = $conn->insert_id;
    } else {
        echo "Erro ao salvar dados: " . $conn->error;
    }

                   
      
    $NumeroUSB = mysqli_real_escape_string($conn, $_POST['Numero_viatura']);
    $CodigoIR = mysqli_real_escape_string($conn, $_POST['Codigo_IR']);
    $NumeroOcorrencia = isset($_POST['Numero_Ocorrencia']) ? mysqli_real_escape_string($conn, $_POST['Numero_Ocorrencia']) : null;
    $CodigoPS = mysqli_real_escape_string($conn, $_POST['Codigo_PS']);
    $Desp = mysqli_real_escape_string($conn, $_POST['Desp']);
    $HCH = mysqli_real_escape_string($conn, $_POST['HCH']);
    $KMFinal = mysqli_real_escape_string($conn, $_POST['KM_Final']);
    $CodigoSIASUS = mysqli_real_escape_string($conn, $_POST['Codigo_SIASUS']);

    // Inserir dados na tabela transporte_detalhes_viagem
    $sql_detalhes_viagem = "INSERT INTO transporte_detalhes_viagem (NumeroUSB, CodigoIR, NumeroOcorrencia, CodigoPS, Desp, HCH, KMFinal, CodigoSIASUS)
            VALUES ('$NumeroUSB', '$CodigoIR', '$NumeroOcorrencia', '$CodigoPS', '$Desp', '$HCH', '$KMFinal', '$CodigoSIASUS')";

    // Executar a query para sinais_e_sintomas
    if (mysqli_query($conn, $sql_detalhes_viagem)) {
        $last_detalhes_viagem_id = $conn->insert_id;
    } else {
        echo "Erro ao salvar dados: " . mysqli_error($conn);
    }

                        
                
    $tempo_gestacao = $_POST["tempoGestacao"];
    $pre_natal = isset($_POST['flexRadioDefault6']) ? $_POST['flexRadioDefault6'] : null;
    $nome_medico = $_POST["nomeMedico"];
    $complicacoes = isset($_POST['flexRadioDefault7']) ? $_POST['flexRadioDefault7'] : null;
    $primeiro_filho = isset($_POST['flexRadioDefault8']) ? $_POST['flexRadioDefault8'] : null;
    $num_filhos = $_POST["numFilhos"];
    $inicio_contracoes = $_POST["inicoContracoes"];
    $duracao_contracoes = $_POST["duracaoContrações"];
    $intervalo_contracoes = $_POST["intervaloContrações"];
    $pressao_quadril = isset($_POST['flexRadioDefault9']) ? $_POST['flexRadioDefault9'] : null;
    $ruptura_bolsa = isset($_POST['flexRadioDefault10']) ? $_POST['flexRadioDefault10'] : null;
    $inspecao_visual = isset($_POST['flexRadioDefault11']) ? $_POST['flexRadioDefault11'] : null;
    $parto_realizado = isset($_POST['flexRadioDefault12']) ? $_POST['flexRadioDefault12'] : null;
    $hora_nascimento = $_POST["horaNascimento"];
    $bebe_sexo = isset($_POST['bebeSexo']) ? $_POST['bebeSexo'] : null;
    $bebe_nome = $_POST["bebeNome"];

    // Insere os dados na tabela formulário anamnese_gestacional
    $sql_gestacional = "INSERT INTO anamnese_gestacional (tempoGestacao, fezPreNatal, nomeMedico, complicacoes, primeiroFilho, numFilhos, inicioContracoes, duracaoContracoes, 
    intervaloContracoes, pressaoQuadril, rupturaBolsa, inspecaoVisual, partoRealizado, horaNascimento, bebeSexo, bebeNome) 
    VALUES ('$tempo_gestacao', '$pre_natal', '$nome_medico', '$complicacoes', '$primeiro_filho', '$num_filhos', '$inicio_contracoes', '$duracao_contracoes', 
    '$intervalo_contracoes', '$pressao_quadril', '$ruptura_bolsa', '$inspecao_visual', '$parto_realizado', '$hora_nascimento', '$bebe_sexo', '$bebe_nome')";

    // Executar a query para anamnese_gestacional
    if ($conn->query($sql_gestacional) === TRUE) {
        $last_gestacional_id = $conn->insert_id;
    } else {
        echo "Erro ao inserir dados: " . $conn->error;
    }

                         
                  
    $psiquiatrico = isset($_POST['Psiquiátrico']) ? 1 : 0;
    $obstetrico = isset($_POST['Obstetrico']) ? $_POST['Obstetrico'] : null;
    $respiratorio = isset($_POST['Respiratorio']) ? $_POST['Respiratorio'] : null;
    $diabetes = isset($_POST['Diabetes']) ? $_POST['Diabetes'] : null;
    $transporte = isset($_POST['Transporte']) ? $_POST['Transporte'] : null;
    $outros = isset($_POST['Outros']) ? $_POST['Outros'] : null;


    // Insere os dados na tabela problemas_encontrados
    $sql_problemas = "INSERT INTO problemas_encontrados (psiquiatrico, obstetrico, respiratorio, diabetes, transporte, outros) 
    VALUES('$psiquiatrico', '$obstetrico', '$respiratorio','$diabetes','$transporte','$outros')";


    // Executar a query para problemas_encontrados
    if($conn->query($sql_problemas) === TRUE) {
        $last_problemas_id = $conn->insert_id;
    }else{
        echo "Erro ao inserir dados:". $conn->error;
    }

                              
                            
    $ataduras = $_POST['quantAtaduras'];
    $cateter = $_POST['quantCateter'];
    $compressa = $_POST['quantCompressa'];
    $kit = $_POST['quantKits'];
    $luvas = $_POST['quantLuvas'];
    $mascara = $_POST['quantMascara'];
    $manta = $_POST['quantManta'];
    $pas = $_POST['quantPas'];
    $sonda = $_POST['quantSonda'];
    $soro = $_POST['quantSoro'];
    $talas = $_POST['quantTalas'];
    $outro_nome = $_POST['Outro_Mat1'];
    $outro_valor = $_POST['quantOutro'];

    // Insere os dados na tabela materiais_utilizados_descartavel
    $sql_matdesc = "INSERT INTO materiais_utilizados_descartavel (ataduras, cateter, compressa, kit, luvas, mascara, manta, pas, sonda, soro, talas, outro_nome, outro_valor) 
    VALUES('$ataduras', '$cateter', '$compressa','$kit','$luvas','$mascara', '$manta', '$pas', '$sonda', '$soro', '$talas', '$outro_nome', '$outro_valor')";

    // Executar a query para materiais_utilizados_descartavel
    if($conn->query($sql_matdesc) === TRUE) {
        $last_matdesc_id = $conn->insert_id;
    }else{
        echo "Erro ao inserir dados:". $conn->error;
    }

                                 
                                  
    $base = $_POST['quantBase'];
    $colar1 = $_POST['QuantColar1'];
    $colar2 = $_POST['quantColar2'];
    $coxins = $_POST['quantCoxins'];
    $KED = $_POST['quantKED'];
    $maca = $_POST['quantMaca'];
    $TTF = $_POST['quantTTF'];
    $tirante_aranha = $_POST['quantTiranteA'];
    $tirante_cabeca = $_POST['quantTiranteC'];
    $canula = $_POST['quantCanula'];
    $outro_campo1 = $_POST['Outro_Mat1'];
    $outro_valor1 = $_POST['quantOutro1'];
    $outro_campo2 = $_POST['Outro_Mat2'];
    $outro_valor2 = $_POST['quantOutro2'];

    // Insere os dados na tabela materiais_utilizados_deixados
    $sql_matdeix = "INSERT INTO materiais_utilizados_deixados (base, colar1, colar2, coxins, KED, maca, TTF, tirante_aranha, tirante_cabeca, canula, outro_campo1, outro_valor1, outro_campo2, outro_valor2) 
    VALUES('$base', '$colar1', '$colar2', '$coxins', '$KED', '$maca', '$TTF', '$tirante_aranha', '$tirante_cabeca', '$canula', '$outro_campo1', '$outro_valor1', '$outro_campo2', '$outro_valor2')";

    // Executar a query para materiais_utilizados_deixados
    if($conn->query($sql_matdeix) === TRUE) {
        $last_matdeix_id = $conn->insert_id;
    }else{
        echo "Erro ao inserir dados:". $conn->error;
    }

                              
                            
    $que_aconteceu = isset($_POST['OqueAconteceu']) ? $_POST['OqueAconteceu'] : null;
    $vezes_aconteceu = isset($_POST['AconteceuOutrasVezes']) ? $_POST['AconteceuOutrasVezes'] : null;
    $tempo_aconteceu = isset($_POST['QuandoAconteceu']) ? $_POST['QuandoAconteceu'] : null;
    $problema_saude = isset($_POST['ProblemaSaude']) ? $_POST['ProblemaSaude'] : null;
    $qual_problema = isset($_POST['QuaisProblemas']) ? $_POST['QuaisProblemas'] : null;
    $uso_medicacao = isset($_POST['UsoMedicacao']) ? $_POST['UsoMedicacao'] : null;
    $horario_medicacao = isset($_POST['HorarioMedicacao']) ? $_POST['HorarioMedicacao'] : null;
    $qual_medicacao = isset($_POST['MedicacaoQuais']) ? $_POST['MedicacaoQuais'] : null;
    $alergico = isset($_POST['TemAlergia']) ? $_POST['TemAlergia'] : null;
    $qual_alergia = isset($_POST['TemAlergiaQue']) ? $_POST['TemAlergiaQue'] : null;
    $ingeriu_alimentos = isset($_POST['IngeriuAlimento']) ? $_POST['IngeriuAlimento'] : null;
    $ingeriu_horas = isset($_POST['IngeriuAlimentoHoras']) ? $_POST['IngeriuAlimentoHoras'] : null;

    // Insere os dados na tabela anamnese_emergencia_medica
    $sql_anamnese_emergencia_medica = "INSERT INTO anamnese_emergencia_medica (que_aconteceu, vezes_aconteceu, tempo_aconteceu, problema_saude, qual_problema, uso_medicacao, 
    horario_medicacao, qual_medicacao, alergico, qual_alergia, ingeriu_alimentos,ingeriu_horas) 
    VALUES('$que_aconteceu','$vezes_aconteceu','$tempo_aconteceu','$problema_saude','$qual_problema','$uso_medicacao','$horario_medicacao','$qual_medicacao','$alergico',
    '$qual_alergia','$ingeriu_alimentos', '$ingeriu_horas')";

    // Executar a query para anamnese_emergencia_medica
    if($conn->query($sql_anamnese_emergencia_medica) === TRUE) {
        $last_anm_medica_id = $conn->insert_id;
    }else{
        echo "Erro ao inserir dados:". $conn->error;
    }

                           
                      
    $procedimentos_efetuados = [];
    $procedimentos = [
        "Aspiracao", "Avaliacao_Inicial", "Avaliacao_Dirigida", "Avaliacao_Continuada", "Chave_de_Rautek",
        "Canula_de_Guedel", "Desobstrucao_de_VA", "Emprego_do_DEA", "Gerenciamento_de_Riscos",
        "Limpeza_de_Ferimentos", "Curativos", "Compressivo", "Encravamento", "Ocular", "Queimadura",
        "Simples", "tres_Pontas", "Imobilizacoes", "Membro_INF_dir", "Membro_INF_esq", "Membro_SUP_dir",
        "Membro_SUP_esq", "Quadril", "Cervical", "Maca_Sobre_Rodas", "Maca_Rigida", "Ponte",
        "Retirado_Capacete", "RCP", "Rolamento_90", "Rolamento_180", "Tomada_Decisao", "Tratado_Choque",
        "Uso_de_Canula", "Uso_Colar", "tamColar", "Uso_KED", "Uso_TTF", "Ventilacao_Suporte", "Oxigenioterapia",
        "Reanimador", "Reanimador_LPM", "Oxigenioterapia_LPM", "Meios_Auxiliares", "Celesc", "Def_Civil",
        "IGP_PC", "Policia", "Policia_Value", "Samu", "Samu_Value", "CIT", "OutrosMeios"
    ];
        // Coleta os dados marcados
    foreach ($procedimentos as $procedimento) {
        if (isset($_POST[$procedimento])) {
            $procedimentos_efetuados[$procedimento] = 1;
        } else {
            $procedimentos_efetuados[$procedimento] = NULL;
        }
    }

    // Coleta os dados de texto
    $procedimentos_efetuados['tamColar'] = isset($_POST['tamColar']) ? "'" . $conn->real_escape_string($_POST['tamColar']) . "'" : 'NULL';
    $procedimentos_efetuados['Reanimador_LPM'] = isset($_POST['Reanimador_LPM']) ? "'" . $conn->real_escape_string($_POST['Reanimador_LPM']) . "'" : 'NULL';
    $procedimentos_efetuados['Oxigenioterapia_LPM'] = isset($_POST['Oxigenioterapia_LPM']) ? "'" . $conn->real_escape_string($_POST['Oxigenioterapia_LPM']) . "'" : 'NULL';
    $selectedPoliciaValue = isset($_POST['Policia_Value']) ? $conn->real_escape_string($_POST['Policia_Value']) : null;
    $selectedPoliciaValue = !empty($selectedPoliciaValue) ? "'" . $selectedPoliciaValue . "'" : 'NULL';
    $selectedSamuValue = isset($_POST['Samu_Value']) ? $conn->real_escape_string($_POST['Samu_Value']) : null;
    $selectedSamuValue = !empty($selectedSamuValue) ? "'" . $selectedSamuValue . "'" : 'NULL';
    $procedimentos_efetuados['OutrosMeios'] = isset($_POST['OutrosMeios']) ? "'" . $conn->real_escape_string($_POST['OutrosMeios']) . "'" : 'NULL';

    $procedimentos_efetuados['Policia_Value'] = $selectedPoliciaValue;
    $procedimentos_efetuados['Samu_Value'] = $selectedSamuValue;

    // Prepara os valores para a string SQL
    $columns = implode(", ", array_map(function ($column) {
        return "`$column`";
    }, array_keys($procedimentos_efetuados)));

    $values = implode(", ", array_map(function ($value) use ($conn) {
        return is_null($value) ? "NULL" : $value;
    }, $procedimentos_efetuados));

    // Insere os dados na tabela ficha_procedimentos_efetuados
    $sql_procedimentos = "INSERT INTO procedimentos_efetuados ($columns) VALUES ($values)";

    // Executar a query para ficha_procedimentos_efetuados
    if ($conn->query($sql_procedimentos) === TRUE) {
        $last_procedimentos_id = $conn->insert_id;
    } else {
        echo "Erro ao inserir dados: " . $conn->error;
    }

                           
                          
    // $local1 = $_POST["local1"];
    // $lado1 = $_POST["lado1"];
    // $face1 = $_POST["face1"];
    // $tipo1 = $_POST["tipo1"];
    // $local2 = $_POST["local2"];
    // $lado2 = $_POST["lado2"];
    // $face2 = $_POST["face2"];
    // $tipo2 = $_POST["tipo2"];
    // $local3 = $_POST["local3"];
    // $lado3 = $_POST["lado3"];
    // $face3 = $_POST["face3"];
    // $tipo3 = $_POST["tipo3"];
    // $local4 = $_POST["local4"];
    // $lado4 = $_POST["lado4"];
    // $face4 = $_POST["face4"];
    // $tipo4 = $_POST["tipo4"];
    // $Cabeca_Value = $_POST["Cabeca_Value"];
    // $Pescoco_Value = $_POST["Pescoco_Value"];
    // $Tant_Value = $_POST["Tant_Value"];
    // $Tpos_Value = $_POST["Tpos_Value"];
    // $Genit_Value = $_POST["Genit_Value"];
    // $MID_Value = $_POST["MID_Value"];
    // $MIE_Value = $_POST["MIE_Value"];
    // $MSD_Value = $_POST["MSD_Value"];
    // $MSE_Value = $_POST["MSE_Value"];

    // // Insere os dados na tabela localizacao_dos_traumas
    // $sql_localizacao_traumas = "INSERT INTO localizacao_dos_traumas  (local1, lado1, face1, tipo1, local2, lado2, face2, tipo2,  local3, lado3, face3,
    //  tipo3, local4, lado4, face4, tipo4, cabeca, pescoco, t_ant, t_pos, genit, MID, MIE, MSD, MSE)
    // VALUES ('$local1', '$lado1', '$face1', '$tipo1', '$local2', '$lado2', '$face2', '$tipo2', '$local3', '$lado3', '$face3', '$tipo3', '$local4', '$lado4',
    //  '$face4', '$tipo4', '$Cabeca_Value', '$Pescoco_Value', '$Tant_Value', '$Tpos_Value', '$Genit_Value', '$MID_Value', '$MIE_Value', '$MSD_Value', '$MSE_Value')";

    // // Executar a query para localizacao_dos_traumas
    // if($conn->query($sql_localizacao_traumas) === TRUE) {
    //     $last_localizacao_traumas_id = $conn->insert_id;
    // }else{
    //     echo "Erro ao inserir dados:". $conn->error;
    // }

                   
      
    // if(isset($_FILES['imagem_recusa'])){
    //     $imagem_recusa = $_FILES['imagem_recusa'];

    //     if($imagem_recusa['error'])
    //     die("Falha ao enviar o arquivo.");

    //     if($imagem_recusa['size'] > 2097152)
    //     die("Arquivo muito grande! Máx: 2MB");

    //     $pasta = "../TermoRecusa/";
    //     $nomeDoArquivo = $imagem_recusa['name'];
    //     $novoNomeArquivo = uniqid();
    //     $extensao = strtolower(pathinfo($nomeDoArquivo, PATHINFO_EXTENSION));

    //     if($extensao != "jpg" && $extensao != "png")
    //     die("Tipo de arquivo inválido!");

    //     $path = $pasta . $novoNomeArquivo . "." . $extensao;

    //     $next = move_uploaded_file($imagem_recusa["tmp_name"], $path);
    //     if($next){
    //         $conn->query("INSERT INTO termo_recusa(nome_imagem, caminho_imagem) VALUES('$nomeDoArquivo', '$path')");
    //     $last_termo_id = $conn->insert_id;
    //     }else{
    //     echo "Falha ao enviar o arquivo";
    //     }
    // }

//   // Certifique-se de que a variável $user_id esteja definida antes de usá-la
//   if (!isset($user_id)) {
//     // Defina $user_id conforme necessário ou redirecione para a página de login
//     header("Location: login.php");
//     exit();
// }

    // Inserir todos os dados na tabela fichas
    $sql_fichas = "INSERT INTO fichas (data_ficha, idAnamnese_Emergencia_Medica, idAnamnese_Gestacional, idAvaliacao_Cinematica, idAvaliacao_Glasgow, idMateriais_Utilizados_Deixados, idMateriais_Utilizados_Descartavel, idObjetos_Recolhidos, idObservacoes_Importantes, 
    idPaciente, idProblemas_Encontrados, idProcedimentos_Efetuados, idSinais_e_Sintomas, idSinais_Vitais, idTipo_de_Ocorrencia,  idDecisao_Transporte, idDetalhes_Viagem, idForma_de_Conducao, idTransporte_Vitima_Era) 
    VALUES ('$data_ocorrencia', '$last_anm_medica_id', '$last_gestacional_id', '$last_cinematica_id', '$last_glasgow_id', 
    '$last_matdeix_id', '$last_matdesc_id', '$last_objetos_id', '$last_observacoes_id', '$last_paciente_id', '$last_problemas_id', '$last_procedimentos_id', 
    '$last_sinais_sintomas_id', '$last_sinais_vitais_id', '$last_tipo_ocorrencia_id', '$last_decisao_transporte_id', '$last_detalhes_viagem_id', 
    '$last_forma_conducao_id', '$last_vitima_id')";

    // Executar a query para fichas
    if ($conn->query($sql_fichas) === TRUE) {
        echo "Registro Salvo com Sucesso";
    } else {
        echo "Erro ao inserir na tabela fichas: " . $conn->error;
    }

    // Fecha a conexão com o banco de dados
    $conn->close();
} else {
    // Se o formulário não foi enviado redireciona para a página inicial
    header("Location: index.php");
    exit();
}

?>