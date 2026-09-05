# agents.md — Contexto Completo do Projeto HUB

> **Ultima atualizacao:** 15 de Agosto de 2026
> **Caminho da pasta:** `c:\Users\breno\Documents\HUB\`
> **Aluno:** Breno (Iniciacao Tecnologica — PIBIT / HU Brasil 2026-2027)
> **Orientador vinculado ao ensaio clinico macro:** Prof. Vinicius Zacarias Maldaner da Silva
> **Responsavel pelo estudo no HUB-UnB:** Profa. Ingrid Faber
> **Instituicao:** Hospital Universitario de Brasilia (HUB) — Universidade de Brasilia (UnB)

---

## 1. VISAO GERAL DO PROJETO

### 1.1 O Que Este Projeto Faz (Resumo Executivo)

Este e um subprojeto de **Iniciacao Tecnologica (PIBIT)** vinculado a um ensaio clinico multicentrico. O objetivo e criar uma **prova de conceito (PoC)** de um sistema de **pos-processamento** que integra temporalmente dois tipos de sinais biomedicos:

1. **Sinais eletromiograficos (EMG)** evocados por Estimulacao Magnetica Transcraniana (TMS) — captando potenciais evocados motores (MEPs) do diafragma.
2. **Imagens de ultrassonografia diafragmatica** — mostrando o movimento mecanico do diafragma durante o ciclo respiratorio.

O objetivo final e responder: **"Em qual momento exato do ciclo respiratorio o pulso de TMS foi disparado?"** — permitindo classificar cada disparo como ocorrido durante repouso, inspiracao ou expiracao do diafragma. Isso reduz a variabilidade dos resultados e aumenta a reprodutibilidade dos protocolos de TMS diafragmatica.

### 1.2 Por Que Isso Importa

A **Esclerose Lateral Amiotrofica (ELA)** e uma doenca neurodegenerativa fatal que destroi os neuronios motores. A principal causa de obito e a **insuficiencia ventilatoria** por falencia dos musculos respiratorios (especialmente o diafragma). Monitorar a funcao neuromuscular respiratoria com precisao e essencial para decidir quando introduzir ventilacao nao invasiva (VNI) e planejar cuidados paliativos.

Atualmente, os protocolos de TMS para avaliar o diafragma nao controlam o estado mecanico do musculo no momento do disparo. Isso gera variabilidade nos resultados. Este projeto busca resolver isso.

### 1.3 O Que NAO e Este Projeto

- **NAO e um sistema em tempo real.** Todo o processamento e feito apos a coleta (pos-processamento / offline).
- **NAO e um produto comercial.** E uma prova de conceito academica.
- **NAO envolve coleta de dados propria.** Os dados vem do ensaio clinico multicentrico ja em andamento.
- **NAO envolve tratamento de pacientes.** E apenas processamento de sinais e analise de dados.

---

## 2. PROJETO GUARDA-CHUVA: ENSAIO CLINICO ELA / HD-tDCS

### 2.1 Titulo Oficial
"Terapia de Estimulacao Transcraniana por Corrente Continua de Alta Definicao (ETCC-HD) na Esclerose Lateral Amiotrofica: Ensaio Clinico Aleatorio Controlado Multicentrico"

### 2.2 Detalhes do Estudo
- **Tipo:** Ensaio clinico multicentrico paralelo, controlado, randomizado, triplo-cego
- **Periodo:** 01/08/2024 a 31/07/2026
- **Seguimento:** 6 meses apos termino da intervencao
- **Amostra:** 20 individuos por centro (total 40 participantes)
- **Financiamento:** FINEP — Edital Doencas Raras (DR)
- **CAEE:** 74679923.2.1001.5292
- **CEP aprovador:** Hospital Universitario Onofre Lopes (HUOL/EBSERH/UFRN)

### 2.3 Centros Participantes
| Centro | Cidade | Responsavel |
|--------|--------|-------------|
| Hospital Universitario Onofre Lopes (HUOL/EBSERH/UFRN) | Natal/RN | Prof. Guilherme Augusto Fregonezi |
| Hospital Universitario de Brasilia (HUB-UnB) | Brasilia/DF | Profa. Ingrid Faber |

### 2.4 Criterios de Inclusao do Estudo Macro
- Ambos os sexos, 18-80 anos
- Diagnostico de ELA pelos criterios revisados de El Escorial
- Cognicao preservada (>= 10 pontos no ALS Cognitive Behavioral Screen)
- CVF > 50% do previsto
- SNIP > 40 cmH2O

### 2.5 Criterios de Exclusao (Seguranca Neurofisiologica)
- Nao conseguir entender ou realizar etapas do estudo
- Comorbidade cardiaca, respiratoria ou musculoesqueletica
- Ventilacao mecanica invasiva ou traqueostomia
- Marcapasso, implantes metalicos cerebrais/cervicais, clips de aneurisma, DBS
- Epilepsia ou historico familiar de epilepsia
- AVC ou tumores previos
- Gestacao
- Instabilidade hemodinamica grave
- Alergia a prata (eletrodos Ag/AgCl)

### 2.6 Aprovacao Etica Detalhada
- **CEP de aprovacao:** Comite de Etica e Pesquisa do Hospital Universitario Onofre Lopes (CEP/HUOL)
- **CAEE:** 74679923.2.1001.5292
- **Numero do parecer de aprovacao:** 6.572.895
- **Data da aprovacao:** Dezembro de 2023
- **Regulamentacao:** Resolucao CNS 466/12 e Declaracao de Helsinki (64th WMA, Fortaleza, 2013)
- **Registro clinico:** ReBEC (Registro Brasileiro de Ensaios Clinicos)

### 2.7 Protocolo de Intervencao HD-tDCS (Detalhado)
- **Posicionamento dos eletrodos:** Circulo com 1 eletrodo central + 4 perifericos sobre o cortex motor primario diafragmatico
- **Grupo ativo (gETCC):** 3mA durante 30 min, rampa de subida/descida de 30s
- **Grupo sham (gSham):** Rampa inicial 30s a 3mA, depois 0.1mA por 30 min, rampa final 30s a 3mA
- **Frequencia:** 1 sessao/dia, 5 dias/semana, 2 semanas (total 10 sessoes)
- **Local de aplicacao:** Domicilio do participante
- **Seguimento pos-intervencao:** Avaliacoes em 1 mes, 2 meses, 4 meses e 6 meses

### 2.8 Desfechos
- **Primario:** ALSFRS-R (escala funcional revisada de ELA)
- **Secundarios:** Espirometria, SNIP/SNEP, drive respiratorio, pico de tosse, dispneia, fadiga, eletromiografia de musculos ventilatorios, potencial evocado diafragmatico, cinematica da parede toracica, oxigenacao tecidual (fNIRS)

---

## 3. SUBPROJETO PIBIT (PROJETO DO BRENO)

### 3.1 Dados do Edital
- **Edital:** N 02/2026 — HU Brasil
- **Programa:** Programa de Iniciacao Cientifica da HU Brasil (PIC/HU Brasil)
- **Modalidade:** Iniciacao Tecnologica (PIBIT)
- **Vigencia:** 12 meses (2026-2027)
- **Orcamento:** R$ 1.114,00 (recursos proprios)

### 3.2 Titulo do Subprojeto
"Integracao entre avaliacao magnetica transcraniana e ultrassonografia diafragmatica para protocolos clinicos"

### 3.3 Area CNPq
Engenharias > Engenharia Biomedica > Processamento de Sinais Biologicos

### 3.4 Objetivo Geral
Desenvolver e testar uma metodologia de integracao entre os sinais eletromiograficos evocados por TMS e os parametros ultrassonograficos da dinamica diafragmatica, em individuos com ELA, visando gerar uma prova de conceito para avaliacao neurofisiologica respiratoria.

### 3.5 Objetivos Especificos
1. Identificar o momento mecanico de repouso e inicio da incursao diafragmatica por meio da ultrassonografia
2. Registrar MEPs diafragmaticos em condicao sincronizada com o estado mecanico do diafragma
3. Desenvolver rotina de integracao temporal entre TMS/EMG e ultrassonografia
4. Comparar resposta eletrofisiologica entre diferentes momentos do ciclo respiratorio
5. Gerar prova de conceito para avaliacao neurofisiologica respiratoria em ELA

### 3.6 Cronograma Oficial do PIBIT (12 meses)
| Etapa | Atividade | Meses |
|-------|-----------|-------|
| 1 | Revisao bibliografica e estado da tecnica | 1-2 |
| 2 | Familiarizacao com equipamentos e protocolos | 1-3 |
| 3 | Coleta de dados integrados (EMG/TMS + US) | 3-6 |
| 4 | Desenvolvimento da rotina de integracao temporal | 5-7 |
| 5 | Entrega do Relatorio Parcial | 6 |
| 6 | Analise de dados e avaliacao de consistencia | 7-8 |
| 7 | Desenvolvimento e validacao do Protocolo Tecnologico Visual | 8-10 |
| 8 | Redacao da descricao do produto e registros de inovacao | 10-11 |
| 9 | Elaboracao do Relatorio Tecnico Final | 11-12 |

### 3.7 Validacao Estatistica Planejada
- Coeficiente de Correlacao Intraclasse (ICC) para reprodutibilidade
- Analise de concordancia de Bland-Altman
- ANOVA ou Wilcoxon para comparacao entre estados respiratorios
- Nivel de significancia: p < 0.05
- Metricas comparadas: Latencia (ms) e Amplitude (mV) dos MEPs diafragmaticos

---

## 4. EQUIPAMENTOS E INSTRUMENTACAO

### 4.1 Estimulacao Magnetica Transcraniana (TMS)
- **Equipamento:** Neuro-MS (fabricante Neurosoft)
- **Software:** Neuro-MEP.NET
- **Bobina:** RC-03-125 Big Ring Coil (formato de 8 / butterfly)
- **Formas de onda:** Monofasicas/bifasicas
- **Posicionamento:** Area motora diafragmatica (coordenada Cz, Sistema 10-20)
- **Intensidade:** 40-50% do MSO (individualizada pelo RMT)
- **Exportacao de dados:** Formato EDF/EDF+ e/ou ASCII (CSV/TXT)

### 4.2 Eletromiografo Digital (EMG)
- **Equipamento:** Neuro-EMG-Micro (fabricante Neurosoft)
- **Software:** Neuro-MEP.NET
- **Eletrodos:** Superficie descartaveis Ag/AgCl
- **Posicionamento:** 7o e 8o espacos intercostais, linha hemiclavicular anterior
- **Amplificacao:** Diferencial
- **Filtro passa-banda:** Configuravel no hardware e software
- **Filtro notch:** 60 Hz (rede eletrica brasileira)

### 4.3 Ultrassonografia Diafragmatica
- **Equipamento:** GE Versana Active (fabricante General Electric Healthcare)
- **Transdutores:**
  - Linear L6-12-RS (alta frequencia) — zona de aposicao, espessura
  - Convexo 4C-RS (baixa/media frequencia) — cupula, excursao
- **Modos:** Modo B (espessura/DTF) e Modo M (excursao/incursao)
- **Exportacao:** DICOM e/ou AVI

### 4.4 Outros Equipamentos Mencionados no Ensaio Macro
- **Delsys Trigno Discover:** 12 eletrodos EMG wireless para musculos respiratorios
- **PowerLab + LabChart (ADInstruments):** Aquisicao de sinais fisiologicos
- **Sistema de Neuronavegacao:** Rastreamento 3D da posicao da bobina TMS

### 4.5 Observacao Critica Sobre Sincronizacao
Os equipamentos Neuro-MS (TMS/EMG) e GE Versana (US) sao sistemas de aquisicao INDEPENDENTES. Nao compartilham sinal TTL, clock PTP, nem trigger de hardware. Qualquer sincronizacao temporal sera estimada computacionalmente com incerteza minima de +/-10-50ms.

---

## 5. PROTOCOLOS DE COLETA OBSERVADOS (Notas de Campo do Aluno)

### 5.1 Procedimento 1 — Neuronavegacao + Mapeamento Motor com TMS
1. Touca de EEG com marcadores de rastreamento para neuronavegacao
2. Checagem de impedancia dos eletrodos (verde = bom, vermelho = ruim)
3. Posicionamento da bobina butterfly (formato de 8) sobre o cortex motor
4. Mapeamento do HOTSPOT (ponto de maior excitabilidade cortical)
5. Determinacao do Motor Threshold (MT) — aumento gradual da intensidade
6. Aplicacao de estimulos automaticos em diferentes intensidades

### 5.2 Procedimento 2 — Avaliacao Respiratoria + EMG + TMS Diafragmatica
1. Espirometria (medicao de volumes e fluxos pulmonares)
2. Manovacuometria / SNIP (medicao de forca muscular respiratoria)
3. Colocacao de touca e eletrodos EMG (12 canais Trigno + eletrodos Neuro-EMG)
4. Checagem de impedancia
5. **Protocolos TMS executados (na ordem):**
   - MEP (Motor Evoked Potential) — amplitude x latencia
   - UMT/RMT (Upper/Resting Motor Threshold)
   - CSP (Cortical Silent Period) — paciente inspira apos comando, 65% MSO
   - SICI (Short-Interval Intracortical Inhibition) — par de pulsos, inibicao
   - ICF (Intracortical Facilitation) — par de pulsos, facilitacao
   - MEP Medular — bobina circular nas costas, estimulacao espinhal

### 5.3 Computadores e Softwares em Uso Simultaneo
- **PC1:** Neuro-MEP.NET (TMS + EMG via Neuro-EMG-Micro)
- **PC2:** Software Delsys Trigno (12 eletrodos EMG wireless)
- **PC3:** LabChart / PowerLab (gravacao de sinais fisiologicos)
- **PC4:** GE Versana (ultrassom diafragmatico)

Implicacao: Sao 4 sistemas sem sincronizacao de clock entre si.

---

## 6. DADOS DISPONIVEIS E ANALISE DOS ARQUIVOS EDF

### 6.1 Arquivos EDF na Pasta HUB-data
Data da coleta: 06 de Julho de 2026. Sete arquivos EDF exportados do Neuro-MEP.NET.

| Arquivo | Protocolo | Tamanho | Duracao | Amostras | Canal | Freq. |
|---------|-----------|---------|---------|----------|-------|-------|
| CSP.edf | Cortical Silent Period | 14.9 KB | 360 ms | 7,200 | EMG 1 | 20 kHz |
| ICF.edf | Intracortical Facilitation | 3.7 KB | 79.9 ms | 1,600 | EMG 1 | 20 kHz |
| ICF 2.edf | Intracortical Facilitation (2) | 3.7 KB | 79.9 ms | 1,600 | EMG 1 | 20 kHz |
| MEP.edf | Motor Evoked Potential | 3.7 KB | 79.9 ms | 1,600 | EMG 1 | 20 kHz |
| MEP medular.edf | MEP Medular (espinhal) | 3.7 KB | 79.9 ms | 1,600 | EMG 1 | 20 kHz |
| MT.edf | Motor Threshold | 3.7 KB | 79.9 ms | 1,600 | EMG 1 | 20 kHz |
| SICI.edf | Short-Interval Intracortical Inhibition | 3.7 KB | 79.9 ms | 1,600 | EMG 1 | 20 kHz |

### 6.2 Estatisticas dos Sinais
| Arquivo | Min (mV) | Max (mV) | Pico-a-Pico (mV) | Std (mV) | Picos >5*std |
|---------|:--------:|:--------:|:-----------------:|:--------:|:------------:|
| CSP.edf | -1.208 | 0.809 | 2.017 | 0.226 | 30 |
| ICF.edf | -5.123 | 1.932 | 7.055 | 0.442 | 2 |
| ICF 2.edf | -4.749 | 1.929 | 6.678 | 0.178 | 6 |
| MEP.edf | -1.385 | 0.112 | 1.497 | 0.161 | 14 |
| MEP medular.edf | -1.648 | 0.535 | 2.183 | 0.195 | 14 |
| MT.edf | -0.081 | 0.363 | 0.444 | 0.049 | 14 |
| SICI.edf | -4.820 | 1.958 | 6.778 | 0.181 | 6 |

### 6.3 Dados do Paciente no Header EDF (NAO ANONIMIZADOS)
- **Nome:** Lindomar Freitas Cavalcante
- **Sexo:** Masculino
- **Nascimento:** 28/06/1979 (47 anos)
- **ID hospitalar:** e4ab865d-8f50-4abd-aa23-f6530b6a22ca
- **Timestamp da sessao:** 2026-07-06 12:14:35 UTC

### 6.4 Problemas Criticos Encontrados na Exportacao

1. **DADOS PESSOAIS NAO ANONIMIZADOS:** Nome completo, data de nascimento e sexo do paciente estao no header EDF de todos os 7 arquivos. Viola LGPD e Resolucao 466/2012 do CNS.

2. **NENHUMA ANOTACAO EDF+:** Todos os 7 arquivos estao em formato EDF puro (nao EDF+). Nao ha marcadores de timestamp dos pulsos TMS. A deteccao do instante do estimulo depende de identificar o artefato de amplitude no sinal.

3. **TIMESTAMPS IDENTICOS EM TODOS OS ARQUIVOS:** Todos os 7 arquivos tem exatamente o mesmo timestamp (2026-07-06 12:14:35 UTC). Provavelmente e o timestamp da sessao, nao de cada teste individual. Inuteis para sincronizacao.

4. **APENAS 1 SWEEP POR ARQUIVO:** 6 dos 7 arquivos tem apenas 79.9ms de dados (1 unica varredura). O Neuro-MEP.NET exportou a sweep media ou representativa, nao todas as repeticoes. Para validacao estatistica (ICC etc.), sao necessarias multiplas sweeps.

5. **CANAL UNICO (EMG 1):** Apenas 1 canal por arquivo. Dados de musculatura acessoria nao estao presentes.

6. **TAXA DE AMOSTRAGEM ADEQUADA:** 20 kHz e excelente (resolucao de 50 microsegundos).

7. **AMPLITUDES NA FAIXA ESPERADA:** Sinais entre 0.4 e 7 mV pico-a-pico, compativel com EMG diafragmatico.

### 6.5 Acoes Necessarias Sobre os Dados
- Re-exportar do Neuro-MEP.NET com TODAS as sweeps e em formato EDF+ (com anotacoes)
- Obter video de ultrassom diafragmatico (DICOM e AVI) do GE Versana
- Criar script de anonimizacao para limpar headers EDF
- Se a re-exportacao com sweeps individuais nao for possivel no EDF, tentar exportar em CSV/TXT

---

## 7. DOCUMENTOS NA PASTA HUB

### 7.1 Projeto PIBIT (Versoes)
| Arquivo | Descricao |
|---------|-----------|
| PIBIT_HUB.docx / .pdf | Versao original |
| PIBIT_HUB (V1).docx | Versao 1 |
| PIBIT_HUB(V2).docx | Versao 2 |
| PIBIT_HUB V4.docx | Versao 4 |
| PIBIT_HUB (V5).docx | Versao 5 |
| PIBIT_HUB V6.docx | Versao 6 |
| PIBIT_HUB FINAL .docx | **Versao final submetida** |
| PIBIT_FINAL_text.txt | Texto extraido da versao final (referencia principal) |

### 7.2 Projeto Guarda-Chuva (ELA)
| Arquivo | Descricao |
|---------|-----------|
| ELA_Resumo Executivo.docx | Resumo executivo do ensaio clinico macro |
| ELA_text.txt | Texto extraido do resumo executivo |
| projeto_CEP_HUB.docx | Projeto completo submetido ao CEP |
| CEP_text.txt | Texto extraido do projeto CEP |

### 7.3 Documentos Eticos e Regulatorios
| Arquivo | Descricao |
|---------|-----------|
| final_ELA_PB_PARECER_CONSUBSTANCIADO_CEP_8024938_E1 (2).pdf | Parecer consubstanciado do CEP (aprovacao) |
| 03_Lista_de_Documentacao CEP.pdf | Lista de documentacao exigida pelo CEP |
| 10_Modelo_TCLE.pdf | Modelo do Termo de Consentimento Livre e Esclarecido |
| termo-de-compromisso-para-utilizacao-de-dados-tcud (1).pdf | Termo de compromisso para uso de dados |
| EditalRetificadoPIT.pdf | Edital retificado do processo seletivo PIBIT |

### 7.4 Artigos Cientificos de Referencia
| Arquivo | Referencia |
|---------|-----------|
| 1-s2.0-S1388245722002218-main.pdf | De Carvalho & Swash, 2023 — TMS na progressao da ELA |
| jcm-14-06701.pdf | Laurentino et al., 2025 — HD-tDCS em ELA (protocolo do ensaio multicentrico) |

### 7.5 Dados de Exames
| Pasta/Arquivo | Descricao |
|---------------|-----------|
| HUB-data/ | 7 arquivos EDF de exames TMS de um paciente (ver secao 6) |

### 7.6 Scripts Auxiliares
| Arquivo | Descricao |
|---------|-----------|
| extract_text.ps1 | PowerShell para extrair texto de .docx |
| extract_comments.ps1 | PowerShell para extrair comentarios de .docx |
| audit_v4.ps1 | Script de auditoria da versao 4 |
| search_cep.ps1 | Script de busca no documento CEP |

---

## 8. STACK TECNOLOGICA DEFINIDA

### 8.1 Processamento de Sinais (Python)
| Biblioteca | Funcao |
|-----------|--------|
| MNE-Python | Leitura EDF/EDF+, filtragem, processamento neurofisiologico |
| NumPy + SciPy | Operacoes numericas, filtros digitais, FFT, deteccao de picos |
| Matplotlib + Seaborn | Visualizacao e graficos publicaveis |
| Pandas | Manipulacao de tabelas, exportacao CSV |
| pydicom | Leitura de arquivos DICOM (ultrassom) |
| OpenCV (cv2) | Processamento de video AVI frame-a-frame |
| pingouin + SciPy.stats | Estatistica (ICC, Bland-Altman, ANOVA, Wilcoxon) |
| FastAPI | Microsservico de processamento (comunicacao com backend Java) |

### 8.2 Backend (Java)
| Tecnologia | Funcao |
|-----------|--------|
| Java 17+ / Spring Boot 3 | API REST, orquestracao, regras de negocio |
| JPA / Hibernate | Persistencia no banco de dados |
| PostgreSQL 15+ | Banco de dados relacional |

### 8.3 Infraestrutura
| Tecnologia | Funcao |
|-----------|--------|
| Docker + Docker Compose | Containerizacao do ambiente completo |
| Git / GitHub | Controle de versao |

---

## 9. ARQUITETURA DO SISTEMA

```
COLETA (HUB-UnB)
  Neuro-MEP.NET -> EDF/EDF+/CSV     GE Versana -> DICOM/AVI
                |                                |
                v                                v
PROCESSAMENTO (Python / FastAPI)
  MNE-Python + pydicom + OpenCV + NumPy + SciPy
  - Leitura dos sinais EDF (EMG/MEP)
  - Extracao frame-a-frame do ultrassom
  - Deteccao de eventos (onset diafragmatico, pulso TMS)
  - Alinhamento temporal (trigger computacional)
  - Calculo de metricas (Latencia, Amplitude, ICC)
  - Exportacao de resultados (JSON)
                |
                | API REST
                v
ORQUESTRACAO (Java / Spring Boot)
  - Upload de arquivos brutos
  - Cadastro de pacientes e sessoes
  - Aciona processamento Python via HTTP
  - Persiste resultados no banco de dados
  - Exporta relatorios (JSON/PDF)
                |
                | JPA/Hibernate
                v
BANCO DE DADOS (PostgreSQL)
  - Pacientes, Sessoes, Sinais, Resultados
  - Rastreabilidade completa (audit trail)
```

---

## 10. MODELAGEM DO BANCO DE DADOS (PRELIMINAR)

| Tabela | Campos-chave |
|--------|-------------|
| paciente | id, codigo_anonimizado, sexo, idade_inicio_sintomas, tipo_ela (bulbar/espinhal), alsfrs_r_score |
| sessao_coleta | id, paciente_id, data_coleta, operador, arquivo_edf_path, arquivo_us_path |
| sinal_emg | id, sessao_id, canal, taxa_amostragem_hz, duracao_s, filtros_aplicados |
| pulso_tms | id, sessao_id, timestamp_ms, intensidade_pct_mso, posicao_bobina |
| mep_resultado | id, pulso_tms_id, latencia_ms, amplitude_mv, area_sob_curva, valido, motivo_exclusao |
| us_ciclo_respiratorio | id, sessao_id, timestamp_inicio_ms, timestamp_fim_ms, tipo, excursao_mm, dtf_pct |
| sincronizacao | id, pulso_tms_id, ciclo_respiratorio_id, estado_diafragma_no_disparo, offset_temporal_ms |
| resultado_analise | id, sessao_id, icc_valor, bland_altman_bias, p_valor_anova |

---

## 11. RISCOS CRITICOS DO PROJETO

| # | Risco | Prob. | Impacto | Mitigacao |
|---|-------|:---:|:---:|-----------|
| R1 | EDF sem timestamps absolutos ou resolucao insuficiente | Alta | Critico | Testar exportacao ANTES de programar |
| R2 | Video DICOM sem timestamps por frame | Media | Critico | Verificar tags (0018,1063) FrameTime e (0018,1065) FrameTimeVector |
| R3 | Coleta de dados atrasada (depende do ensaio macro) | Alta | Alto | Pipeline com dados sinteticos, mas NAO validar PoC sem dados reais |
| R4 | Poucos pacientes (ELA e doenca rara) | Alta | Medio | PoC funciona com 3-5 pacientes |
| R5 | Integracao Java-Python excede o tempo | Media | Alto | Entregar Python standalone + banco modelado separadamente |
| R6 | Neuro-MEP.NET exporta caracteres Cyrillic no header EDF | Media | Baixo | Sanitizar header na leitura |
| R7 | OpenCV nao extrai timestamps reais de AVI | Confirmado | Alto | CAP_PROP_POS_MSEC e sintetico. Preferir DICOM sempre. |

---

## 12. FASES DO ROADMAP DE DESENVOLVIMENTO

| Fase | Descricao | Meses | Duracao |
|------|-----------|:-----:|---------|
| 0 | Verificacao de viabilidade dos dados | 1 | 4 semanas |
| 1 | Prova de Conceito — Pipeline Python | 2-4 | 10 semanas |
| 2 | Banco de Dados + Backend Java | 4-7 | 10-12 semanas |
| 3 | Validacao Estatistica e Analise | 6-9 | 8-10 semanas |
| 4 | Documentacao, Protocolo e Registro de Inovacao | 9-11 | 6-8 semanas |
| 5 | Relatorio Final e Apresentacao | 11-12 | 4-5 semanas |

### Marcos Obrigatorios
| Marco | Mes | Entregas |
|-------|:---:|---------|
| Go/No-Go | 1 | Relatorio de viabilidade + scripts de teste |
| PoC funcional | 4 | Pipeline Python testada com dados reais |
| Relatorio Parcial | 6 | Relatorio formal + PoC + inicio do backend |
| Sistema integrado | 8 | Java + Python + PostgreSQL via Docker |
| Resultados estatisticos | 9 | ICC, Bland-Altman, ANOVA |
| Documentacao | 11 | Manual operacional + documentacao tecnica |
| Entrega Final | 12 | Relatorio Final + Poster + Repositorio |

---

## 13. PERFIL DO ALUNO E PREMISSAS

- **Nivel:** Iniciacao Tecnologica (primeiro contato com pesquisa e processamento de sinais)
- **Experiencia previa com Python:** Basica/nenhuma (aprendendo durante o projeto)
- **Experiencia previa com sinais biomedicos:** Nenhuma
- **Ambiente de desenvolvimento:** Windows, Python 3.13, VS Code / Jupyter Notebook
- **Bibliotecas instaladas:** MNE-Python 1.12.1, NumPy, SciPy, Matplotlib (pyedflib NAO instalou — requer compilador C)
- **Limitacao conhecida:** pyedflib nao compila no Windows sem Microsoft Visual C++ Build Tools

---

## 14. HISTORICO DE DECISOES TECNICAS

| Data | Decisao | Justificativa |
|------|---------|---------------|
| 22/07/2026 | Usar MNE-Python como leitor primario de EDF | Padrao-ouro em neurofisiologia, pyedflib falhou na compilacao |
| 22/07/2026 | Preferir DICOM sobre AVI para ultrassom | OpenCV CAP_PROP_POS_MSEC e sintetico, DICOM tem timestamps reais |
| 22/07/2026 | Arquitetura microsservicos (Java chama Python via HTTP) | Desacopla processamento pesado da orquestracao |
| 22/07/2026 | PostgreSQL como banco de dados | Robusto, open-source, suporta JSONB e alta precisao numerica |
| 22/07/2026 | FastAPI sobre Flask para API Python | Mais moderno, tipado, documentacao automatica OpenAPI |
| 28/07/2026 | Cronograma dia-a-dia criado para Fases 0-1 | Aluno precisa de guia detalhado por ser iniciante |

---

## 15. REFERENCIAS BIBLIOGRAFICAS PRINCIPAIS

1. BRASIL. Ministerio da Saude. Protocolo Clinico e Diretrizes Terapeuticas da ELA. Brasilia, 2021.
2. DE CARVALHO, M.; SWASH, M. TMS para monitorar progressao da ELA. ALS and FTD, v. 24, 2023.
3. FAN, X. et al. Multimodal fusion technologies in neuroscience. Front. Neurosci., v. 17, 2023.
4. LAURENTINO, E. K. F. et al. HD-tDCS in ALS: Study Protocol. J. Clin. Med., v. 14, 2025.
5. LI, J.; WANG, Q. Multi-modal bioelectrical signal fusion. Information Fusion, v. 79, 2022.
6. SANTANA, P. V. et al. Ultrassonografia diafragmatica. Diagnostics, v. 13, 2023.
7. SINISCALCHI, C. et al. Diaphragm Ultrasound. Geriatrics, v. 9, 2024.
8. VUCIC, S. et al. Clinical diagnostic utility of TMS. Clin. Neurophysiol., v. 150, 2023.

---

## 16. GLOSSARIO RAPIDO

| Termo | Significado |
|-------|------------|
| **ELA** | Esclerose Lateral Amiotrofica |
| **TMS** | Transcranial Magnetic Stimulation (Estimulacao Magnetica Transcraniana) |
| **MEP** | Motor Evoked Potential (Potencial Evocado Motor) |
| **EMG** | Eletromiografia |
| **US** | Ultrassonografia |
| **EDF/EDF+** | European Data Format (formato para sinais fisiologicos) |
| **DICOM** | Digital Imaging and Communications in Medicine |
| **RMT / MT** | Resting Motor Threshold (Limiar Motor de Repouso) |
| **MSO** | Maximum Stimulator Output (Saida Maxima do Estimulador) |
| **CSP** | Cortical Silent Period (Periodo de Silencio Cortical) |
| **SICI** | Short-Interval Intracortical Inhibition |
| **ICF** | Intracortical Facilitation |
| **DTF** | Diaphragm Thickening Fraction (Fracao de Espessamento) |
| **VNI** | Ventilacao Nao Invasiva |
| **ALSFRS-R** | ALS Functional Rating Scale — Revised |
| **ICC** | Intraclass Correlation Coefficient |
| **PoC** | Proof of Concept (Prova de Conceito) |
| **TTL** | Transistor-Transistor Logic (sinal de trigger de hardware) |
| **PIBIT** | Programa Institucional de Bolsas de Iniciacao Tecnologica |
| **CEP** | Comite de Etica em Pesquisa |
| **TCLE** | Termo de Consentimento Livre e Esclarecido |
| **LGPD** | Lei Geral de Protecao de Dados |
| **HUB** | Hospital Universitario de Brasilia |
| **HUOL** | Hospital Universitario Onofre Lopes (Natal/RN) |
| **CAEE** | Certificado de Apresentacao de Apreciacao Etica |
