# DiaTMS (MEPSync)

Pipeline de pós-processamento para integração temporal entre sinais de Estimulação Magnética Transcraniana (TMS/EMG) e Ultrassonografia Diafragmática em pacientes com Esclerose Lateral Amiotrófica (ELA).

**Projeto:** PIBIT / HU Brasil 2026-2027 — Hospital Universitário de Brasília (HUB-UnB)

> Plano de execução completo (sprints, cronograma, decisões): [`PLANO_EXECUCAO.md`](PLANO_EXECUCAO.md).
> Contexto clínico/técnico/institucional: [`docs/`](docs/).

## Estrutura do Repositório

```
MEPSync/
├── data/                    # Dados locais (NAO versionados no Git, exceto .gitkeep)
│   ├── raw/                 #   Arquivos brutos intocaveis (edf/dicom/avi)
│   ├── interim/             #   Dado anonimizado, ainda nao processado
│   └── processed/           #   Saidas geradas pelos scripts (csv/figures)
├── notebooks/                # Jupyter Notebooks (um por sprint de aprendizado)
├── src/                       # Modulos Python do pipeline (a escrever ao longo dos sprints)
│   └── __init__.py
├── tests/                     # Testes unitarios (pytest)
├── scripts/                   # Scripts utilitarios avulsos (CLI, geracao de dado sintetico)
├── docs/                       # Contexto do projeto + documentacao viva
│   ├── 00_VISAO_GERAL.md
│   ├── 01_CONTEXTO_CLINICO.md
│   ├── 02_CONTEXTO_TECNICO.md
│   ├── 03_CONTEXTO_EDITAL.md
│   ├── 04_REVISAO_BIBLIOGRAFICA.md
│   ├── 05_DECISOES_TECNICAS.md
│   ├── 06_RISCOS.md
│   └── relatorios/
├── administrativo/             # Documentos administrativos/eticos/bibliograficos (versionados)
├── PLANO_EXECUCAO.md            # Roadmap ativo (sprints, cronograma oficial, riscos)
├── logbook.md                    # Diario de bordo
├── requirements.txt
└── .gitignore
```

## Stack

| Camada | Tecnologia |
|--------|-----------|
| Processamento de sinais | Python 3.13 / MNE-Python / NumPy / SciPy |
| Visualização | Matplotlib / Seaborn |
| Leitura DICOM | pydicom |
| Processamento de vídeo | OpenCV |
| Tabelas | Pandas |
| Estatística | pingouin |
| Exportação EDF | edfio (backend pure-Python do MNE, evita a compilação C do pyedflib) |

## Setup rápido

```powershell
# Criar ambiente virtual (Windows)
py -3.13 -m venv venv
venv\Scripts\activate

# Instalar dependencias
pip install -r requirements.txt

# Dados brutos de paciente ja estao em data/raw/edf/ (nao versionados, NUNCA processar direto daqui)
```

## Dados

Os dados brutos (EDF, DICOM, AVI) **não são versionados** por conterem informações de pacientes e serem arquivos pesados — cobertos pelo `.gitignore` de raiz. Mantenha-os apenas localmente em `data/raw/` e em backup no HD externo.

**Regra de ouro:** nenhum código de processamento lê `data/raw/` diretamente. O primeiro passo do pipeline (`src/anonimizar.py`, ainda a escrever) gera uma cópia anonimizada em `data/interim/edf_anon/` — é dali que todo o resto do pipeline parte. Ver `docs/06_RISCOS.md` (risco R8) e `PLANO_EXECUCAO.md` (Sprint 0, Semana 3).
