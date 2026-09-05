# Histórico de Decisões Técnicas

> Migrado da seção 14 de `00_VISAO_GERAL.md`. Registre aqui toda decisão técnica não-óbvia, com data e justificativa — é o que evita relitigar a mesma escolha meses depois.

| Data | Decisão | Justificativa |
|------|---------|---------------|
| 22/07/2026 | Usar MNE-Python como leitor primário de EDF | Padrão-ouro em neurofisiologia; pyedflib falhou na compilação no Windows (requer MSVC Build Tools) |
| 22/07/2026 | Preferir DICOM sobre AVI para ultrassom | OpenCV `CAP_PROP_POS_MSEC` é sintético; DICOM tem timestamps reais por frame |
| 22/07/2026 | Arquitetura microsserviços (Java chama Python via HTTP) | Desacopla processamento pesado da orquestração — mas adiada para mês 8+, não bloqueia o PoC |
| 22/07/2026 | PostgreSQL como banco de dados | Robusto, open-source, suporta JSONB e alta precisão numérica |
| 22/07/2026 | FastAPI sobre Flask para API Python | Mais moderno, tipado, documentação automática OpenAPI |
| 28/07/2026 | Cronograma dia-a-dia criado para Fases 0-1 | Aluno precisa de guia detalhado por ser iniciante |
| 05/09/2026 | Roadmap genérico (Fase 0-5) substituído por `PLANO_EXECUCAO.md` (24 sprints quinzenais + Sprint 0) | O roadmap antigo não tinha calendário real nem ligação com os meses fixos do edital, e não era pensado como currículo de aprendizado |
| 05/09/2026 | Repositório reorganizado: código promovido para a raiz do `MEPSync`, documentos administrativos movidos para `administrativo/` | Git não rastreava nenhum arquivo ainda (`git ls-files` vazio) — janela de custo zero para eliminar o aninhamento `HUB/hub-tms-pipeline/` |
| 05/09/2026 | venv WSL antigo (Python 3.12.3, criado em `/mnt/c/...`) substituído por venv nativo Windows (Python 3.13.7) | O venv anterior era um binário Linux inutilizável a partir do PowerShell/VS Code no Windows; renomeado para `venv_wsl_antigo_desativar/` (mantido, não apagado) |
| 05/09/2026 | `anonimizar.py` usa `raw.anonymize()` (nativo do MNE) + exportação via `mne.export.export_raw(..., fmt='edf')` com backend `edfio` | Evita reintroduzir a dependência de compilação C do pyedflib; `edfio` é pure-Python |
