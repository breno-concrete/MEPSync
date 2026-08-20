# hub-tms-pipeline

Pipeline de pos-processamento para integracao temporal entre sinais de Estimulacao Magnetica Transcraniana (TMS/EMG) e Ultrassonografia Diafragmatica em pacientes com Esclerose Lateral Amiotrofica (ELA).

**Projeto:** PIBIT / HU Brasil 2026-2027 — Hospital Universitario de Brasilia (HUB-UnB)

## Estrutura do Repositorio

```
hub-tms-pipeline/
├── data/                  # Dados locais (NAO versionados no Git)
│   ├── raw/               #   Arquivos brutos intocaveis
│   │   ├── edf/           #     EDF/EDF+ do Neuro-MEP.NET
│   │   ├── dicom/         #     DICOM do GE Versana
│   │   └── avi/           #     Videos AVI do ultrassom
│   └── processed/         #   Saidas geradas pelos scripts
│       ├── csv/           #     Tabelas de resultados
│       └── figures/       #     Graficos exportados
├── notebooks/             # Jupyter Notebooks (estudo e exploracao)
├── src/                   # Modulos Python do pipeline
│   ├── __init__.py
│   ├── leitor_edf.py      #   Leitura e validacao de arquivos EDF
│   ├── leitor_us.py       #   Leitura de DICOM/AVI
│   ├── pipeline_emg.py    #   Pipeline completa de EMG/TMS
│   ├── pipeline_us.py     #   Pipeline completa de ultrassom
│   ├── sincronizacao.py   #   Alinhamento temporal TMS x US
│   └── anonimizar.py      #   Limpeza de dados pessoais do EDF
├── tests/                 # Testes unitarios
├── docs/                  # Relatorios e documentacao tecnica
├── scripts/               # Scripts utilitarios avulsos
├── .gitignore
├── requirements.txt
├── logbook.md             # Diario de bordo
└── README.md              # Este arquivo
```

## Stack

| Camada | Tecnologia |
|--------|-----------|
| Processamento de sinais | Python 3.10+ / MNE-Python / NumPy / SciPy |
| Visualizacao | Matplotlib |
| Leitura DICOM | pydicom |
| Processamento de video | OpenCV |
| Tabelas | Pandas |

## Setup Rapido

```bash
# Clonar
git clone https://github.com/SEU_USUARIO/hub-tms-pipeline.git
cd hub-tms-pipeline

# Criar ambiente virtual
python -m venv venv
venv\Scripts\activate        # Windows

# Instalar dependencias
pip install -r requirements.txt

# Colocar dados brutos em data/raw/edf/ (nao versionados)
```

## Dados

Os dados brutos (EDF, DICOM, AVI) **nao sao versionados** por conterem informacoes de pacientes e serem arquivos pesados. Mantenha-os apenas localmente na pasta `data/raw/` e em backup no HD externo.
