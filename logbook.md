# Diario de Bordo — PIBIT HUB-UnB (2026-2027)

> **Projeto:** Integracao TMS x Ultrassonografia Diafragmatica
> **Aluno:** Breno
> **Inicio:** Agosto 2026

---

## Como usar este diario

1. **Escreva todo dia que trabalhar no projeto** (mesmo que 2 linhas)
2. **Nao se preocupe com escrita bonita.** Isso e pra voce, nao pro orientador.
3. **Copie o template abaixo** e preencha no final do dia.
4. **Nunca apague entradas antigas.** O historico e o valor deste documento.
5. **Commit no Git junto com o codigo do dia:** `git add logbook.md && git commit -m "logbook: dia XX"`

---

## Template de Entrada Diaria

```
### AAAA-MM-DD (Dia da semana) — [Titulo curto]

**Tempo dedicado:** Xh
**Fase do roadmap:** Fase 0 / Fase 1 / etc.

**O que fiz:**
- [descreva o que fez, com nome de arquivos se aplicavel]

**O que aprendi:**
- [conceito novo, ferramenta nova, descoberta]

**Problemas encontrados:**
- [erros, travamentos, coisas que nao funcionaram]
- [como resolveu ou se ainda esta pendente]

**Proximos passos:**
- [o que pretende fazer amanha/proximo dia]

**Anotacoes extras:**
- [links uteis, comandos que funcionaram, observacoes]
```

---

## Registro

> **Entradas de 12/07 a 06/11/2026 reconstruídas em 06/11/2026** a partir dos commits do Git, das datas das pastas de leitura e das fotos da visita. Onde não havia registro, o campo diz "não registrado". As visitas e as coletas simuladas aparecem numa entrada à parte, porque as datas exatas não ficaram registradas.

---

### 2026-07-12 (Domingo) — Visita ao HUB (pré-projeto)

**Tempo dedicado:** não registrado
**Fase do roadmap:** pré-bolsa

**O que fiz:**
- Visita ao laboratório do HUB. Fotos em `administrativo/05_Imagens_Visita/`. Data tirada das fotos (pode ser o dia em que foram recebidas, e não o da visita).

---

### 2026-08-19 (Quarta) — Dia 1: Criação do repositório

**Tempo dedicado:** não registrado
**Fase do roadmap:** pré-bolsa

**O que fiz:**
- Criei o repositório MEPSync no GitHub (`first commit`) e o `README.md`.

---

### 2026-08-20 (Quinta) — Dia 2

- Entrada criada no modelo original e não preenchida. Sem registro de atividade.

---

### 2026-09-05 (Sábado) — Sprint 0: Reorganização do repositório

**Tempo dedicado:** não registrado
**Fase do roadmap:** Sprint 0 / Semana 1

**O que fiz:**
- Reorganizei a estrutura: o código saiu de `HUB/hub-tms-pipeline/` para a raiz, e `HUB/` virou `administrativo/` (commit `edc4b6d`).
- Criei o `.gitignore` de raiz cobrindo `data/raw/`, `data/interim/`, `*.edf`, `*.dcm`, `*.avi`, venv e `.idea/`.
- Recriei o venv nativo do Windows (o antigo era WSL) e instalei o `requirements.txt`.
- Troquei o roadmap genérico pelo `PLANO_EXECUCAO.md` (24 sprints amarrados ao cronograma do edital).

**Proximos passos:**
- Escrever `leitor_edf.py` e `anonimizar.py`; verificar a sincronização do OneDrive.

---

### Visitas e coletas simuladas (datas a preencher)

**Fase do roadmap:** Mês 1 — familiarização com equipamentos e protocolos

**O que fiz:**
- Visitas ao HUB para conhecer os equipamentos.
- Coletas **simuladas** (nenhuma coleta real com paciente até 06/11/2026).
- <!-- preencher: datas, aparelhos vistos, o que foi simulado -->

---

### 2026-10-27 (Terça) — Leitura 01: Laurentino (Abstract e Introdução)

**Tempo dedicado:** não registrado
**Fase do roadmap:** Mês 1 — revisão bibliográfica

**O que fiz:**
- Li o Abstract e a Introdução de Laurentino et al. (2025). Notas em `docs/leituras/01_laurentino_abstract_introducao/`.

**O que aprendi:**
- A ELA mata os neurônios motores superior e inferior, e a insuficiência respiratória é uma das principais causas de morte.
- A tDCS ajusta a excitabilidade dos neurônios sem fazê-los disparar. A HD-tDCS (4×1) concentra a corrente.
- A TMS é **ferramenta de medição** (gera o MEP), não tratamento.
- A lacuna do artigo: quase ninguém estimulou o córtex do diafragma. E o artigo não usa ultrassom, que é onde o meu projeto entra.

---

### 2026-10-28 (Quarta) — Leitura 02: Laurentino (Objetivos e desenho)

**Tempo dedicado:** não registrado
**Fase do roadmap:** Mês 1 — revisão bibliográfica

**O que fiz:**
- Li as seções 1.1 a 2.2. Notas em `docs/leituras/02_laurentino_objetivos_e_desenho/`.

**O que aprendi:**
- Estudo multicêntrico, paralelo, randomizado, controlado com sham e triplo-cego. Avaliações no basal, T1, T2, T3 e T4.
- Excitabilidade é a propriedade; o MEP é a medida.
- No artigo, "MEP" também pode ser pressão expiratória máxima. Depende do contexto.
- CONSORT e SPIRIT são os guias de relato.

---

### 2026-10-29 (Quinta) — Leitura 03: Laurentino (Elegibilidade, intervenção, função pulmonar)

**Tempo dedicado:** não registrado
**Fase do roadmap:** Mês 1 — revisão bibliográfica

**O que fiz:**
- Li as seções 2.3 a 2.5.1. Notas em `docs/leituras/03_laurentino_elegibilidade_intervencao_avaliacao/`.

**O que aprendi:**
- Critérios de entrada (FVC > 50%, SNIP > 40 cmH2O) e exclusões, a maioria por segurança.
- Ativo: 3 mA por 30 min, 10 sessões em casa. O sham tem uma rampa para manter o cegamento.
- Espirometria e força respiratória: MIP, MEP, SNIP, SNEP, PCF.
- O artigo já registra EMG e fNIRS ao mesmo tempo, mas sem ultrassom.

---

### 2026-11-06 (Sexta) — Leitura 04, fim do Laurentino e cronograma de novembro

**Tempo dedicado:** não registrado
**Fase do roadmap:** Mês 2 — revisão bibliográfica (fecha) e familiarização

**O que fiz:**
- Terminei a leitura do Laurentino inteiro (Ética, Discussão e Limitações não geraram notas).
- Leitura 04 (seções 2.5.2 a 2.7: sEMG, fNIRS, TMS, efeitos adversos, Tabela 1) em `docs/leituras/04_laurentino_semg_fnirs_tms/`.
- Commits das leituras 01 a 04, merge no `main` e push (`505b248`, `7893a30`).
- Apaguei de `data/raw/edf/` os 7 EDFs de teste. Eram dados **simulados**, com nome e CPF falsos.
- Montei o cronograma do mês em `docs/cronograma/2026-11_novembro.md` (1 artigo por dia útil).

**O que aprendi:**
- O EMG aparece em dois usos: recrutamento muscular nas manobras (2.5.2) e MEP da TMS (2.5.4).
- O hotspot é o ponto com MEP ≥ 50 µV em pelo menos 5 de 10 pulsos. A medida usa 5 pulsos com intervalo de 45 a 60 s e fica com os 3 melhores.
- A ressonância serve para modelar o campo elétrico e para confirmar depois o alvo da estimulação.
- O projeto guarda-chuva do HUB é o mesmo ensaio do Laurentino, mas o protocolo do HUB inclui pletismografia optoeletrônica (POE).

**Problemas encontrados:**
- Pendentes para a orientadora: o filtro de 5 Hz é passa-baixa ou passa-alta? São 27 ou 22 canais de fNIRS?
- Sem os EDFs de teste, os sprints de código não têm dado para trabalhar.

**Proximos passos:**
- 09/11: Maskill et al. (1991), seguindo o cronograma.

---

<!-- COPIE O TEMPLATE ACIMA PARA CADA NOVO DIA -->
