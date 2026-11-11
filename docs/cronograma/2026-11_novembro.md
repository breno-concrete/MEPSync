# Cronograma — Novembro/2026 (Mês 2 da bolsa)

> **Tarefas oficiais do edital neste mês:**
> - Revisão de literatura e estado da arte (meses 1–2), que **fecha em 30/11**.
> - Familiarização com equipamentos e protocolos do projeto guarda-chuva (meses 1–3), que fecha em dezembro.
>
> **Ritmo:** 1 artigo por dia útil. Fins de semana e feriados servem de **reposição**: se atrasar um dia, recupere ali, sem empurrar a fila.

---

## Rotina de cada dia de leitura (~1h a 1h30)

1. Ler o artigo (foco em: objetivo, método, resultado principal, limitação).
2. Escrever **1 parágrafo** em `docs/04_REVISAO_BIBLIOGRAFICA.md` usando o bloco-modelo (por que li, resumo, relevância).
3. Escrever a entrada do dia no `logbook.md`.
4. Commit: `git add docs/04_REVISAO_BIBLIOGRAFICA.md logbook.md && git commit -m "revisao: <Autor Ano>"`.

Notas detalhadas em `docs/leituras/` (como as do Laurentino) **só para os artigos centrais** marcados com ★. Nos outros, o parágrafo da revisão basta.

---

## Semana 0 — 06 a 08/11

| Dia | Tarefa | Feito |
|---|---|---|
| Sex 06/11 | Resumo do Laurentino (2025) na revisão. Logbook populado com o histórico. Este cronograma. | [x] |
| Sáb 07 – Dom 08 | Reposição / folga | |

## Semana 1 — 09 a 13/11: TMS no diafragma (a base do MEP)

| Dia | Artigo | Por que ler | Feito |
|---|---|---|---|
| Seg 09/11 | MASKILL, D. et al. Motor cortical representation of the diaphragm in man. *J. Physiol.*, v. 443, p. 105–121, 1991. | Onde fica o córtex do diafragma. É a referência de localização que o Laurentino usa. | [ ] → passou para sáb 14/11 |
| Ter 10/11 | ★ CHAKALOV, I. et al. The role of the TMS parameters for activation of the corticospinal pathway to the diaphragm. *Clin. Neurophysiol.*, v. 138, p. 173–185, 2022. (PDF já em `administrativo/04_Artigos_Referencia/`) | Pulso monofásico × bifásico, direção da corrente, hotspot. | [x] |
| Qua 11/11 | LUO, Y. M.; MOXHAM, J.; POLKEY, M. I. Diaphragm electromyogram measured with unilateral magnetic stimulation. *Eur. Respir. J.*, v. 13, p. 385–390, 1999. | Como se capta o EMG do diafragma na superfície (7º–8º espaço intercostal). | [ ] |
| Qui 12/11 | ★ WELCH, J. F. et al. Reliability of diaphragmatic motor-evoked potentials induced by transcranial magnetic stimulation. *J. Appl. Physiol.*, v. 129, p. 1393–1404, 2020. | Confiabilidade do MEP diafragmático. É a base do ICC que o projeto vai calcular. | [ ] |
| Sex 13/11 | LEFAUCHEUR, J. P.; LOFASO, F. Diaphragmatic silent period to transcranial magnetic cortical stimulation... *Exp. Brain Res.*, v. 146, p. 404–409, 2002. | Período de silêncio cortical (CSP) no diafragma. | [ ] |
| Sáb 14 – Dom 15 | Reposição: **Maskill (1991)**, que ficou de 09/11. **Familiarização:** escrever o relato das visitas e das coletas simuladas (ver lista abaixo). | | [ ] |

## Semana 2 — 16 a 20/11: TMS na ELA + ultrassom diafragmático

| Dia | Artigo | Por que ler | Feito |
|---|---|---|---|
| Seg 16/11 | VUCIC, S. et al. Clinical diagnostic utility of transcranial magnetic stimulation... *Clin. Neurophysiol.*, v. 150, 2023. | Uso clínico da TMS na ELA. | [ ] |
| Ter 17/11 | DE CARVALHO, M.; SWASH, M. TMS para monitorar a progressão da ELA. *ALS and FTD*, v. 24, n. 5-6, 2023. | TMS como marcador de progressão. | [ ] |
| Qua 18/11 | ★ SANTANA, P. V. et al. Ultrassonografia diafragmática. *Diagnostics*, v. 13, n. 6, 2023. | A outra metade do projeto: o que o US mede (excursão, espessamento). | [ ] |
| Qui 19/11 | SINISCALCHI, C. et al. Diaphragm Ultrasound. *Geriatrics*, v. 9, n. 3, 2024. | Técnica e valores de referência do US. | [ ] |
| Sex 20/11 | **Feriado (Consciência Negra).** Opcional: ler o protocolo do HUB (`administrativo/02_Projeto_Macro_ELA/projeto_CEP_HUB.docx`) e listar as diferenças em relação ao Laurentino. Se folgar, passa para o fim de semana. | | [ ] |
| Sáb 21 – Dom 22 | Reposição | | |

## Semana 3 — 23 a 27/11: US na ELA, fusão de sinais e estado da técnica

| Dia | Tarefa | Por que | Feito |
|---|---|---|---|
| Seg 23/11 | **Buscar e ler** 1 artigo de US diafragmático **em pacientes com ELA**. PubMed: `diaphragm ultrasound amyotrophic lateral sclerosis`. | Os artigos de US da lista são gerais. Falta um específico da doença. | [ ] |
| Ter 24/11 | **Buscar e ler** 1 artigo que combine **TMS/EMG com US** do diafragma. PubMed: `diaphragm ultrasound AND (electromyography OR magnetic stimulation)`. Se não achar nada, registrar isso como **lacuna**. | Prova (ou não) que o problema do projeto é inédito. | [ ] |
| Qua 25/11 | FAN, X. et al. Multimodal fusion technologies in neuroscience. *Front. Neurosci.*, v. 17, 2023. | Teoria de juntar sinais diferentes. | [ ] |
| Qui 26/11 | LI, J.; WANG, Q. Multi-modal bioelectrical signal fusion. *Information Fusion*, v. 79, 2022. | Lado de engenharia da fusão. | [ ] |
| Sex 27/11 | **Estado da técnica:** busca de patentes (INPI, Google Patents) e de softwares que já sincronizam EMG/TMS com US (LabChart, Spike2, EMGworks, Neuro-MEP.NET). Montar tabela de 1 página: o que existe × o que falta. | O edital pede "estado da técnica", não só artigos. Vai servir também no registro de inovação (meses 10–11). | [ ] |
| Sáb 28 – Dom 29 | Reposição | | |

**Reunião com a orientadora nesta semana** (marcar até 20/11). Levar:

- as dúvidas da leitura 04 (filtro de 5 Hz, 27 × 22 canais de fNIRS);
- as diferenças entre o protocolo do HUB e o Laurentino (POE, onde entra o US);
- o resultado da busca de 24/11 (existe ou não estudo TMS + US);
- de onde virão dados (reais ou simulados) para começar o código, já que os EDFs de teste foram apagados.

## Fechamento — 30/11

| Dia | Tarefa | Feito |
|---|---|---|
| Seg 30/11 | Revisar `04_REVISAO_BIBLIOGRAFICA.md` inteiro. Escrever 1 parágrafo de **síntese do estado da arte** (o que já se sabe, o que falta, onde o MEPSync entra). Marcar a tarefa do edital como concluída no logbook. | [ ] |

---

## Familiarização (paralelo, até dezembro)

- [ ] **Relato das visitas e coletas simuladas** (`docs/familiarizacao/relato_visitas.md`). Para cada aparelho visto: nome e modelo, o que mede, em que formato exporta (EDF, EDF+, DICOM, AVI) e **como marca o início da gravação** (trigger, botão, relógio do PC). Essa última informação é a mais importante para a sincronização.
- [ ] Diferenças entre o protocolo do HUB e o Laurentino (20/11).
- [ ] Reunião com a orientadora (semana 3).

## Fora deste mês (decidir na reunião)

Os sprints de código 3 e 4 do `PLANO_EXECUCAO.md` (épocas, amplitude, pipeline EMG completo) **não estão neste cronograma**. Eles dependiam dos 7 EDFs de teste, que foram apagados. Sem dado para trabalhar, o código precisa de uma decisão: pedir novos arquivos simulados ao HUB ou gerar sinal sintético.

## Contagem

| | Previsto |
|---|---|
| Artigos novos | 13 (11 da lista + 2 buscados) |
| Total na revisão até 30/11 | 14 (com o Laurentino) |
| Estado da técnica | 1 tabela |
