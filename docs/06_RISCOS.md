# Riscos Críticos do Projeto

> Migrado da seção 11 de `00_VISAO_GERAL.md`. Esta tabela é viva — atualize conforme novos riscos surgirem ou riscos existentes forem mitigados. Ver também a tabela de "Riscos e gatilhos de decisão" em `PLANO_EXECUCAO.md`, que é a visão tática (o que fazer quando o risco se concretiza).

| # | Risco | Prob. | Impacto | Mitigação |
|---|-------|:---:|:---:|-----------|
| R1 | EDF sem timestamps absolutos ou resolução insuficiente | Alta | Crítico | Testar exportação ANTES de programar |
| R2 | Vídeo DICOM sem timestamps por frame | Média | Crítico | Verificar tags (0018,1063) FrameTime e (0018,1065) FrameTimeVector |
| R3 | Coleta de dados atrasada (depende do ensaio macro) | Alta | Alto | Pipeline com dados sintéticos, mas NÃO validar PoC sem dados reais |
| R4 | Poucos pacientes (ELA é doença rara) | Alta | Médio | PoC funciona com 3-5 pacientes |
| R5 | Integração Java-Python excede o tempo | Média | Alto | Entregar Python standalone + banco modelado separadamente |
| R6 | Neuro-MEP.NET exporta caracteres Cyrillic no header EDF | Média | Baixo | Sanitizar header na leitura |
| R7 | OpenCV não extrai timestamps reais de AVI | Confirmado | Alto | `CAP_PROP_POS_MSEC` é sintético. Preferir DICOM sempre. |
| R8 | Dados de paciente não anonimizados no header EDF | Confirmado | Crítico (LGPD/CNS 466/12) | Resolvido no Sprint 0 — ver `src/anonimizar.py` e `data/interim/edf_anon/` |
