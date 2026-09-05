# Plano de Execução Revisado + Estrutura do Projeto — DiaTMS / MEPSync

## Contexto

O plano interno atual do projeto (seção 12 "Fases do Roadmap" de `HUB/script_projeto.md`) foi escrito em alto nível — 6 fases genéricas, sem calendário real, sem ligação explícita com os meses fixos já aprovados no edital, e sem levar em conta que Breno está aprendendo Python do zero ao mesmo tempo em que precisa entregar um Relatório Parcial e um Relatório Final. Ele pediu para essa análise virar um plano **fiel à realidade atual** (datas reais, estado real do git, riscos reais já documentados) e estruturado como **"aprender construindo"**: cada conceito novo de Python/processamento de sinal deve nascer produzindo uma peça de verdade do pipeline, não um exercício descartável.

Este plano substitui a seção 12 de `script_projeto.md` (hoje `docs/00_VISAO_GERAL.md`) e soma-se a uma reorganização da estrutura de pastas, que estava confusa (código enterrado em `HUB/hub-tms-pipeline/`, documentos administrativos misturados, dado de paciente não anonimizado sem `.gitignore`). Como o Git **não rastreava nenhum arquivo** no momento da reorganização (confirmado via `git ls-files` — os dois commits existentes adicionaram e depois apagaram um scaffold do PyCharm), foi uma janela de custo zero para reorganizar tudo sem perder histórico.

> **Status:** Sprint 0 / Semana 1 em andamento (executado em 05/09/2026: reorganização de pastas completa, `.gitignore` de raiz, venv nativo Windows recriado com todas as dependências instaladas). Ver `logbook.md` para o registro dia a dia.

---

## Parte 0 — Diagnóstico (o que fundamenta as decisões abaixo)

- **Git não rastreava nada.** Reorganizar pastas foi só uma operação de sistema de arquivos.
- **Código real vivia 2 níveis abaixo do que deveria**: `MEPSync/HUB/hub-tms-pipeline/` (já corrigido).
- **`venv/`, `.idea/` e `HUB/HUB-data/` não tinham nenhum `.gitignore` cobrindo-os na raiz** — só existia um `.gitignore` dentro de `hub-tms-pipeline/`, que cobria apenas `data/raw` e `data/processed` *daquela* pasta (já corrigido).
- **Risco de privacidade ainda ativo**: os 7 EDFs em `data/raw/edf/` (antes em `HUB/HUB-data/`) têm nome completo, data de nascimento e ID hospitalar reais no header (violação documentada de LGPD/CNS 466/12 pelo próprio projeto). **Ainda não anonimizados — próxima ação crítica (Semana 3).**
- **`HUB/logbook.md` e `HUB/hub-tms-pipeline/logbook.md` eram cópias idênticas do mesmo template vazio** (já resolvido — duplicata arquivada).
- **`HUB/07_Backups_e_Extracoes/` e `HUB/CONECTA/` eram ruído**: o primeiro é lixo de extração de texto de docx (sem valor além dos originais); o segundo é confirmadamente um evento não relacionado ao PIBIT (confirmado com o usuário). Ambos arquivados fora do repositório em `../MEPSync_arquivo_morto/`.
- **Nenhum código do pipeline existe ainda** — `src/` só tem um `__init__.py` vazio. `leitor_edf.py`, `anonimizar.py`, `pipeline_emg.py`, `leitor_us.py`, `pipeline_us.py`, `sincronizacao.py` são os próximos artefatos a escrever (Semanas 2-3 do Sprint 0 em diante).
- **Cronograma oficial (Edital Nº 02/2026) é fixo e não deve ser renegociado**: bolsa começa 01/10/2026 (hoje é 05/09/2026 — resultado final da seleção sai 10/09/2026, ainda pendente). Marcos imutáveis: Relatório Parcial no mês 6, coleta de dados no mês 3-6 (depende do ritmo do ensaio clínico macro, fora do seu controle), Relatório Final no mês 11-12.
- **Nenhum dado real de ultrassom (DICOM/AVI) existe ainda** — só os 7 EDFs de EMG do piloto. Isso é um bloqueio real para parte do pipeline (`leitor_us.py`, `sincronizacao.py`) até a coleta avançar.
- **Decisões técnicas já validadas e que não devem ser reabertas sem motivo forte**: MNE-Python em vez de pyedflib (pyedflib não compila no Windows sem MSVC Build Tools), DICOM preferido sobre AVI (timestamps de frame do OpenCV em AVI são sintéticos, não confiáveis). Ver `docs/05_DECISOES_TECNICAS.md`.

---

## Parte 1 — Plano de execução "aprender construindo"

### Princípios

1. **Todo conceito novo produz uma peça real do pipeline no mesmo sprint em que é aprendido.** Notebook de sprint → quando a lógica estabiliza, vira função em `src/` com teste em `tests/`.
2. **Privacidade primeiro, não depois.** `.gitignore` de raiz e `anonimizar.py` são entrega do **Sprint 0**, antes de qualquer outro código tocar os EDFs reais.
3. **Revisão bibliográfica roda em paralelo, sempre**, alimentando `docs/04_REVISAO_BIBLIOGRAFICA.md` — que vira literalmente o rascunho da fundamentação teórica dos dois relatórios oficiais.
4. **Falta de dado real não bloqueia aprendizado.** Onde falta ultrassom real, usa-se dataset de exemplo do `pydicom` e sinal sintético gerado por script — deixando a interface pronta para receber dado real assim que a coleta avançar.
5. **O cronograma oficial é o esqueleto; os sprints são a carne.** Cada bloco é rotulado com o mês oficial correspondente, para copiar status direto para os relatórios.
6. **Ritmo assumido:** ~4-6h/semana (compatível com carga acadêmica, conforme o próprio edital exige) — 2 sprints por mês, um a cada ~2 semanas. Ajustável, mas é a base de todo o calendário abaixo.
7. **Hábito de registro:** logbook preenchido de verdade a cada sessão de trabalho + commit no mesmo dia (a própria instrução que já existe no template do logbook, só que nunca foi seguida).

### Mês oficial × calendário × sprints

| Mês oficial | Calendário | Sprints | Entrega oficial associada |
|---|---|---|---|
| Pré-bolsa | 05–30/09/2026 | Sprint 0 (4 semanas) | Ponte para o início oficial — resolve o débito técnico crítico |
| Mês 1 | Out/2026 | Sprints 1–2 | Revisão bibliográfica + familiarização (início) |
| Mês 2 | Nov/2026 | Sprints 3–4 | Revisão bibliográfica (fecha) |
| Mês 3 | Dez/2026 | Sprints 5–6 | Familiarização (fecha) / coleta (abre) |
| Mês 4 | Jan/2027 | Sprints 7–8 | Coleta em andamento (recesso acadêmico = janela de imersão) |
| Mês 5 | Fev/2027 | Sprints 9–10 | Início da rotina de integração temporal |
| Mês 6 | Mar/2027 | Sprints 11–12 | **Relatório Parcial** |
| Mês 7 | Abr/2027 | Sprints 13–14 | Rotina de integração (fecha) + estatística (abre) |
| Mês 8 | Mai/2027 | Sprints 15–16 | Estatística (fecha) / Protocolo Tecnológico (abre) |
| Mês 9 | Jun/2027 | Sprints 17–18 | Protocolo Tecnológico |
| Mês 10 | Jul/2027 | Sprints 19–20 | Protocolo Tecnológico (fecha) / registro de inovação (abre) |
| Mês 11 | Ago/2027 | Sprints 21–22 | Registro de inovação / Relatório Final (abre) |
| Mês 12 | Set/2027 | Sprints 23–24 | **Relatório Técnico Final** + Jornada do HUB |

### Sprint 0 — Janela pré-bolsa (05–30/09/2026)

Esta janela existe de fato (bolsa só começa 01/10) e não deve virar tempo morto — ela resolve o risco crítico de privacidade e entrega a primeira peça real do pipeline.

**Semana 1 (05–12/09) — Higiene + primeiro sinal na tela**
- [x] Criar `.gitignore` de raiz cobrindo `venv/`, `.idea/`, `data/raw/`, `data/interim/`, `*.edf`, `*.dcm`, `*.avi`, `__pycache__/`.
- [x] Reorganizar a estrutura de pastas (ver Parte 2).
- [x] Recriar venv nativo Windows (o antigo era WSL, inutilizável no PowerShell/VS Code) e instalar `requirements.txt`.
- [ ] **Verificar sincronização OneDrive**: `Documents` no Windows 11 Home costuma sincronizar automaticamente. Se estiver sincronizando, mover o projeto para um caminho fora de sincronização (ex. `C:\Dev\MEPSync`) antes de manipular os EDFs reais — `.gitignore` só protege o Git, não impede o OneDrive de subir os arquivos identificáveis para a nuvem.
- [ ] Python básico: rodar um `.py`, rodar uma célula de notebook, `import`, `print`.
- [ ] **Primeiro artefato real**: `notebooks/sprint00_primeiro_edf.ipynb` — `mne.io.read_raw_edf(caminho, preload=True)`, `raw.info`, `raw.plot()`. Primeira vez vendo um EMG real na tela.
- [ ] Paralelo: ler os artigos de `administrativo/04_Artigos_Referencia/`, abrir `docs/04_REVISAO_BIBLIOGRAFICA.md` com um parágrafo-resumo por artigo.
- [ ] Logbook: preencher de verdade o "Dia 1".

**Semana 2 (13–19/09) — Funções e o primeiro módulo reaproveitável**
- Python: funções, docstring, `try/except`, `pathlib.Path.glob`, import de módulo local.
- Artefato: `src/leitor_edf.py` com `carregar_edf(caminho) -> mne.io.Raw` e `resumo_arquivo(raw) -> dict` (duração, nº canais, taxa de amostragem). Rodar nos 7 arquivos, montar um `pandas.DataFrame` de inventário — primeiro contato com pandas.

**Semana 3 (20–26/09) — `anonimizar.py` (a entrega mais crítica do plano inteiro)**
- Conceitos: `raw.info['subject_info']`, cópia defensiva (`raw.copy()`), por que nunca sobrescrever o dado bruto.
- Implementação: `raw.anonymize(daysback=..., keep_his=False)` (método nativo do MNE) + exportação via `mne.export.export_raw(..., fmt='edf')` com backend `edfio` (pure-Python, evita o problema de compilação do pyedflib).
- Artefato: `src/anonimizar.py::anonimizar_edf(entrada, saida)`, rodado nos 7 arquivos → `data/interim/edf_anon/*.edf`. **A partir daqui, todo desenvolvimento futuro só toca `data/interim/`, nunca `data/raw/` diretamente.**
- Primeiro teste automatizado: `tests/test_anonimizar.py` (pytest) verificando que o header de saída não contém mais nome/DOB/ID.

**Semana 4 (27–30/09) — Consolidação e ponte para o mês 1**
- Escrever um parágrafo de status ("setup concluído, dado piloto anonimizado, leitor funcional") reaproveitável quando o resultado da seleção sair e a bolsa começar oficialmente.

### Sprints 1–24

| Sprint | Datas | Foco oficial | Conceito novo | Artefato real produzido |
|---|---|---|---|---|
| 1 | 01–15/10 | Familiarização equip. | NumPy (`raw.get_data()`, slicing, `mean/std/max`); filtro Butterworth passa-banda (`scipy.signal.butter` + `filtfilt`); Nyquist | `pipeline_emg.py::filtrar_emg(dados, fs, low, high)` |
| 2 | 16–31/10 | Familiarização equip. | Detecção de pico (`scipy.signal.find_peaks`) para achar o artefato do pulso de TMS, já que não há EDF+/anotações | `pipeline_emg.py::detectar_pulsos(...)`; nota formal pedindo reexportação EDF+ multi-sweep ao operador do Neuro-MEP.NET |
| 3 | 01–15/11 | Revisão bibliográfica (fecha) | Epoching manual (janelas ao redor de cada pulso), amplitude pico-a-pico | `pipeline_emg.py::extrair_epocas()`, `amplitude_pico_a_pico()`; primeiro teste com sinal sintético (seno + pulso artificial) |
| 4 | 16–30/11 | — | `pandas.DataFrame.to_csv`, integração ponta-a-ponta | `pipeline_emg.py` completo: carregar → anonimizar → filtrar → detectar → epocar → CSV. **Primeiro PoC parcial (só EMG) funcionando nos 7 arquivos piloto** |
| 5 | 01–15/12 | Familiarização (fecha) | Estrutura DICOM, `pydicom`, tags (0018,1063)/(0018,1065). Usar dataset de exemplo do próprio pydicom (não há US real ainda) — deixar explícito no relatório que é aprendizado de API, não validação científica | `src/leitor_us.py::ler_dicom(caminho)` |
| 6 | 16–31/12 | Coleta (abre) | Sprint leve (fim de semestre). Sinal sintético de excursão diafragmática (seno + ruído) como fixture de teste | `scripts/gerar_dado_sintetico.py::gerar_sinal_respiratorio(duracao, fs, freq)` |
| 7 | 01–15/01 | Coleta em andamento | Recesso acadêmico → janela de imersão. Reamostragem (`scipy.signal.resample`) para alinhar taxas diferentes (EMG em kHz vs US em dezenas de fps) | esqueleto de reamostragem em `sincronizacao.py` |
| 8 | 16–31/01 | Coleta em andamento | Derivada do sinal de excursão + limiar para achar fase respiratória (repouso/inspiração/expiração) | `pipeline_us.py::classificar_fase_respiratoria(sinal, fs)`, testado com dado sintético |
| 9 | 01–15/02 | Início rotina de integração | Junção temporal: pulsos (EMG) + timeline de fases (US) | `sincronizacao.py::classificar_pulsos(pulsos_ts, fases_us) -> DataFrame` |
| 10 | 16–28/02 | Rotina de integração | Testes com caso sintético "gabarito"; **início do rascunho do Relatório Parcial** (antecipar para fevereiro reduz risco de coincidir com carga de março) | `tests/test_sincronizacao.py`; `docs/relatorios/relatorio_parcial_mes6.md` (rascunho) |
| 11 | 01–15/03 | **Relatório Parcial** | Consolidação: pipeline completo nos 7 arquivos piloto + qualquer dado real integrado disponível até então | Figuras/tabelas finais em `data/processed/figures/` |
| 12 | 16–31/03 | **Relatório Parcial (entrega)** | Redação final usando `04_REVISAO_BIBLIOGRAFICA.md` + `02_CONTEXTO_TECNICO.md` + status real e honesto da coleta | Relatório Parcial formal |
| 13 | 01–15/04 | Rotina de integração (fecha) | ICC (`pingouin.intraclass_corr`) sobre amplitude de MEP por fase | `src/estatistica.py::calcular_icc(...)` |
| 14 | 16–30/04 | Estatística (abre) | Bland-Altman (matplotlib/pingouin) | `src/estatistica.py::bland_altman(...)` |
| 15 | 01–15/05 | Estatística | Wilcoxon/ANOVA comparando amplitude entre fases | `src/estatistica.py::comparar_fases(...)` |
| 16 | 16–31/05 | Estatística (fecha) | Consolidação + revisão com orientador | Relatório estatístico intermediário |
| 17–20 | Jun–Jul | Protocolo Tecnológico Visual | `argparse` para rodar o pipeline via linha de comando; fluxogramas (Mermaid em markdown); reaproveitar fotos de `administrativo/05_Imagens_Visita` | `scripts/rodar_pipeline_completo.py`; manual operacional em `docs/` |
| 21–22 | Ago | Registro de inovação | Pouco código novo; reaproveitar `docs/05_DECISOES_TECNICAS.md` como evidência técnica | Documento de descrição do produto |
| 23–24 | Set | **Relatório Técnico Final** | Revisão geral, pôster, retrospectiva no logbook | Relatório Final + apresentação na Jornada do HUB |

### Trilha paralela de revisão bibliográfica
- Pré-bolsa a mês 2: 1 artigo novo/semana, resumo de 1 parágrafo em `docs/04_REVISAO_BIBLIOGRAFICA.md`.
- Meses 3–6: 1 artigo a cada 2 semanas, focado em lacunas que aparecerem durante a implementação (ex. metodologia de ICC para variabilidade de MEP).
- O arquivo nunca é reescrito do zero para o relatório — é editado incrementalmente desde o dia 1.

### Riscos e gatilhos de decisão

| Risco | Gatilho de decisão |
|---|---|
| Dado de ultrassom real ainda não existe | Sprints 5–9 usam exemplo do pydicom + sinal sintético. Assim que o primeiro DICOM real chegar, `leitor_us.py` já está pronto — só troca a fonte, a interface (tempo × excursão) é a mesma. |
| Coleta depende do ritmo do ensaio macro | Se até o mês 6 não houver par EMG+US real do mesmo paciente, o Relatório Parcial reporta honestamente: PoC validado em EMG real + dado sintético, integração pendente de recrutamento — narrativa legítima, não falha. |
| EDF piloto sem EDF+/anotações, 1 sweep em 6 de 7 arquivos | Mitigado detectando o pulso pelo artefato de amplitude (Sprint 2), não por anotação. Ação paralela: pedido formal de reexportação multi-sweep. |
| Dado não anonimizado | Resolvido no Sprint 0/Semana 3, antes de qualquer outro processamento. |
| Carga de aulas em março coincide com entrega do Relatório Parcial | Rascunho começa no Sprint 10 (fevereiro, recesso), não em março. |

---

## Parte 2 — Estrutura do projeto (já implementada)

### Decisão principal

Um único repositório Git, com a **raiz do repositório sendo a raiz do projeto de código** — fim do aninhamento `MEPSync/HUB/hub-tms-pipeline/`. O conteúdo de `HUB/hub-tms-pipeline/` subiu para a raiz do `MEPSync`. O material administrativo/ético/bibliográfico (antes em `HUB/`) agora vive em `administrativo/`, dentro do **mesmo** repositório.

### Árvore atual

```
MEPSync/
├── .gitignore
├── README.md
├── PLANO_EXECUCAO.md
├── logbook.md
├── requirements.txt
├── data/
│   ├── raw/
│   │   ├── edf/            # 7 EDFs do piloto — AINDA NAO ANONIMIZADOS
│   │   ├── dicom/
│   │   └── avi/
│   ├── interim/            # sera criado quando anonimizar.py rodar
│   │   └── edf_anon/
│   └── processed/
│       ├── csv/
│       └── figures/
├── notebooks/
├── src/
│   └── __init__.py         # demais modulos ainda a escrever
├── tests/
├── scripts/
├── docs/
│   ├── 00_VISAO_GERAL.md
│   ├── 01_CONTEXTO_CLINICO.md
│   ├── 02_CONTEXTO_TECNICO.md
│   ├── 03_CONTEXTO_EDITAL.md
│   ├── 04_REVISAO_BIBLIOGRAFICA.md
│   ├── 05_DECISOES_TECNICAS.md
│   ├── 06_RISCOS.md
│   └── relatorios/
│       ├── relatorio_parcial_mes6.md
│       └── relatorio_final_mes12.md
└── administrativo/
    ├── 01_Projeto_PIBIT/        # so a versao final + pdf + edital
    ├── 02_Projeto_Macro_ELA/
    ├── 03_Documentos_CEP_e_Etica/
    ├── 04_Artigos_Referencia/
    ├── 05_Imagens_Visita/
    └── 06_Scripts_Auxiliares/
```

Arquivado fora do repositório (não versionado, não apagado): `../MEPSync_arquivo_morto/` contém os rascunhos V1-V6 do PIBIT, `07_Backups_e_Extracoes/`, `CONECTA/` e o logbook duplicado vazio. `venv_wsl_antigo_desativar/` (venv WSL inutilizável no Windows, substituído por um venv nativo) também segue na pasta do projeto, mantido só até confirmar que nada dependia dele.

### Por que cada decisão

- **Fim do aninhamento**: hoje são 3 níveis mentais até achar `src/`. Com Git rastreando zero arquivos, promover à raiz foi uma operação de sistema de arquivos sem custo.
- **`HUB/` → `administrativo/`**: uma vez que o código sai de dentro dela, `HUB` (nome do hospital) deixa de comunicar o conteúdo. `administrativo/` é autoexplicativo.
- **`data/interim/` é uma pasta nova**: não existia lugar para "dado já anonimizado mas ainda não processado". Sem ela, o risco é alguém processar direto `data/raw/` "só dessa vez", violando a regra de nunca tocar dado identificável.
- **`notebooks/` por sprint**: cada notebook é a sandbox de aprendizado; promover para `src/` é o sinal explícito de "isso virou parte real do pipeline". Evita o antipadrão de iniciante de prender toda a lógica em notebooks não testáveis.
- **`tests/` espelhando `src/` desde o Sprint 0**: para um pipeline que alimenta estatística de reprodutibilidade (ICC), testar a própria lógica desde o início é o objeto de estudo do projeto aplicado ao próprio código.
- **`docs/05_DECISOES_TECNICAS.md` e `06_RISCOS.md`**: essas tabelas evoluem junto com o código, não são conteúdo administrativo — merecem viver ao lado de `src/`.
- **Sem `pyproject.toml`/empacotamento formal por agora**: complexidade desnecessária para um PoC de notebooks + scripts; revisitar só na fase de registro de inovação (mês 10+).

### `.gitignore` de raiz (implementado)

Cobre `data/raw/`, `data/interim/`, `data/processed/`, extensões de dado bruto (`*.edf`, `*.dcm`, `*.avi`, `*.dicom`), venv, `__pycache__`, checkpoints do Jupyter e `.idea/`/`.vscode/`. Documentos administrativos (docx/pdf de `administrativo/`) **são versionados normalmente** — só dado de paciente é excluído.

---

## Verificação (como saber que está indo bem)

- `git status` na raiz não deve mostrar nenhum arquivo dentro de `data/raw/`, `data/interim/`, `venv/` ou `.idea/` como candidato a commit.
- Rodar `pytest` deve passar com os testes de `anonimizar.py` e `leitor_edf.py` do Sprint 0.
- Abrir um EDF anonimizado em `data/interim/edf_anon/` e inspecionar `raw.info['subject_info']` — não deve haver nome, data de nascimento ou ID reais.
- `notebooks/sprint00_primeiro_edf.ipynb` deve rodar do início ao fim e plotar o sinal de pelo menos 1 dos 7 arquivos piloto.
- Ao final do mês 6, `docs/relatorios/relatorio_parcial_mes6.md` deve conter texto suficiente para virar a base do Relatório Parcial oficial sem reescrita do zero.

## Próximos passos imediatos

1. ~~Criar `.gitignore` de raiz.~~ ✅
2. ~~Criar a nova árvore de pastas e mover os arquivos.~~ ✅
3. Escrever `src/leitor_edf.py` e o notebook do Sprint 0/Semana 1.
4. Escrever `src/anonimizar.py` e rodar nos 7 EDFs reais.
5. Fazer o primeiro `git add`/`git commit` real do projeto (depois de confirmar que `.gitignore` está correto).
