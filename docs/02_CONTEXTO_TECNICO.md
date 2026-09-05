# Contexto Técnico e Arquitetura — PIBIT HUB (2026-2027)

## 1. Equipamentos e Softwares de Coleta (HUB)
Durante as coletas, há 4 sistemas rodando simultaneamente sem sincronização de clock de hardware:
1. **Neuro-MS / Neuro-EMG-Micro (Neurosoft):** Aplica a TMS e capta o EMG. Usa o software **Neuro-MEP.NET**.
2. **Delsys Trigno Discover:** Capta EMG de superfície de até 12 canais (músculos acessórios).
3. **PowerLab / LabChart (ADInstruments):** Gravador de sinais fisiológicos gerais.
4. **GE Versana Active:** Ultrassom portátil para a dinâmica diafragmática (equipado com transdutores **convexo 4C-RS** para cúpula do diafragma e **linear L6-12-RS** para zona de aposição).

## 2. Diagnóstico dos Arquivos Brutos Atuais (Piloto)
A análise dos dados preliminares gerou os seguintes alertas críticos que precisam de correção nas próximas coletas:
- **Falta de EDF+:** Os exames foram exportados como EDF "puro", perdendo as marcações (annotations) dos disparos de TMS.
- **Timestamps genéricos:** Todos os arquivos ficaram com a mesma data/hora da abertura do exame (ex: 12:14:35 UTC).
- **Varredura Única (Sweep):** O software exportou apenas a média ou o traçado principal de 80ms, em vez do exame completo com todas as repetições (necessário para estatística de reprodutibilidade).
- **Falta de Anonimização:** O header do EDF continha nome, CPF e data de nascimento do paciente.

## 3. Stack Tecnológica Definida
O projeto utilizará uma arquitetura de microsserviço (Python + Java):

### Processamento (Python 3.10+)
- **MNE-Python:** Padrão-ouro em neurofisiologia para leitura e filtragem de EDF/EDF+.
- **NumPy & SciPy:** Tratamento de arrays, detecção de picos (artefato da TMS no EMG) e filtros (passa-banda, notch 60Hz).
- **pydicom & OpenCV:** Leitura dos vídeos do ultrassom (DICOM preferencialmente por ter metadados de *FrameTime* absolutos; AVI como backup, embora sem timestamps absolutos).
- **Pandas:** Tabela de extração de métricas (Latência, Amplitude do MEP, Estado Diafragmático).
- **FastAPI:** Para empacotar o pipeline Python como uma API.

### Backend/Orquestração (Java)
- **Spring Boot 3 + Java 17+:** Gerencia os exames, chama a API Python, guarda o histórico de execuções.
- **PostgreSQL:** Banco de dados relacional para persistência (Pacientes anonimizados, Sessões, Sinais, MEPs).
- **Docker:** Para subir todo o ecossistema facilmente.

## 4. Pipeline de Processamento (O Fluxo de Código)
1. **Ingestão:** Leitura do EDF (MNE) e DICOM/AVI (pydicom/OpenCV).
2. **Sinal EMG:** Filtragem (10-500Hz + Notch 60Hz) -> Detecção de picos de disparo -> Recorte das janelas (Sweeps de -5ms a +50ms).
3. **Vídeo US:** Detecção da curva de espessamento/incursão -> Identificação dos marcos (Fim da Expiração, Início da Inspiração).
4. **Alinhamento:** Cruzamento dos timestamps das janelas do MEP com a fase do ciclo do ultrassom.
5. **Cálculo:** Cálculo de latência e amplitude do MEP -> Exportação CSV para análise estatística (Bland-Altman, ICC).
