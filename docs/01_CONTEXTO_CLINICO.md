# Contexto Clínico e Visão Geral — PIBIT HUB (2026-2027)

**Projeto:** Integração entre avaliação magnética transcraniana e ultrassonografia diafragmática para protocolos clínicos
**Aluno:** Breno
**Orientador Institucional:** Prof. Vinícius Zacarias Maldaner da Silva
**Responsável no HUB-UnB:** Profa. Ingrid Faber

---

## 1. O Problema (Esclerose Lateral Amiotrófica - ELA)
A ELA é uma doença neurodegenerativa fatal que destrói os neurônios motores. A principal causa de óbito é a insuficiência ventilatória por falência dos músculos respiratórios (especialmente o diafragma). Monitorar a função neuromuscular respiratória com precisão é essencial para decidir quando introduzir ventilação não invasiva (VNI) e planejar cuidados paliativos.

Atualmente, os protocolos de Estimulação Magnética Transcraniana (TMS) para avaliar o diafragma não controlam o estado mecânico do músculo no momento do disparo. O pulso de TMS é disparado "às cegas" em relação ao ciclo respiratório do paciente. Isso gera grande variabilidade nos resultados dos Potenciais Evocados Motores (MEPs).

## 2. A Solução (O que este projeto faz)
O objetivo é criar um **sistema de pós-processamento (Prova de Conceito - PoC)** que integra temporalmente dois sinais:
1. **Sinais EMG/TMS:** Captando potenciais evocados motores (MEPs) do diafragma (via Neuro-MEP.NET).
2. **Vídeos de Ultrassom Diafragmático:** Mostrando o movimento mecânico e o espessamento do diafragma (via GE Versana).

O sistema responderá: *"Em qual momento exato do ciclo respiratório o pulso de TMS foi disparado?"*
Isso permitirá classificar os MEPs como "Disparo em Repouso", "Disparo na Inspiração" ou "Disparo na Expiração", reduzindo a variabilidade e aumentando a reprodutibilidade clínica.

## 3. O Estudo Guarda-Chuva
Este projeto é um braço de um Ensaio Clínico Multicêntrico maior:
- **Título:** Terapia de Estimulação Transcraniana por Corrente Contínua de Alta Definição (ETCC-HD) na ELA.
- **Pesquisador Principal:** Prof. Vinícius Zacarias Maldaner da Silva
- **Centros:** HUOL/UFRN (Natal) e HUB/UnB (Brasília).
- **Aprovação Ética Original:** Parecer CEP 8.024.938. O projeto original aprovava a TMS/EMT apenas como ferramenta de mapeamento e a intervenção ETCC-HD.
- **Emenda ao CEP (Pendente):** Como a **Ultrassonografia Diafragmática** é um procedimento novo que não constava no projeto original, foi necessária a submissão de uma emenda ao CEP da Faculdade de Medicina (CEP/FM da UnB).
  - **TCLE (Termo de Consentimento Livre e Esclarecido):** Atualizado para incluir explicitamente o procedimento de ultrassom (duração de 2h, medidas de conforto, riscos mínimos).
  - **TCUD (Termo de Compromisso de Utilização de Dados):** Assinado por toda a equipe (incluindo o bolsista auxiliar de pesquisa) para garantir o anonimato e sigilo no manuseio dos dados (EDF/DICOM).
- **Intervenção:** HD-tDCS domiciliar por 2 semanas (10 sessões) sobre o córtex motor diafragmático.
- **Desfecho Primário:** Escala funcional ALSFRS-R.

## 4. O que o seu projeto NÃO é
- **NÃO é em tempo real:** A sincronização será feita *offline* (pós-processamento) em Python, cruzando arquivos já exportados.
- **NÃO envolve contato clínico seu:** Os dados vêm das coletas do ensaio clínico que já ocorrem no hospital.
- **NÃO possui sincronização de hardware (TTL):** Como os equipamentos (Neuro-MS e GE Versana) são independentes, a sincronização será baseada em alinhamento de timestamps dos arquivos e marcações de eventos.
