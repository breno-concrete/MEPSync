# Revisão Bibliográfica (documento vivo)

> Alimente este arquivo continuamente (ver trilha paralela em `PLANO_EXECUCAO.md`). Um parágrafo-resumo por artigo lido, não um resumo perfeito — o objetivo é nunca ter que reler tudo do zero na hora de escrever os relatórios oficiais.
>
> Ritmo sugerido: 1 artigo novo/semana até o mês 2; 1 a cada 2 semanas do mês 3 ao 6, focado em lacunas que aparecerem durante a implementação.

## Artigos já referenciados no projeto (ponto de partida, em `administrativo/04_Artigos_Referencia/`)

- [ ] DE CARVALHO, M.; SWASH, M. TMS para monitorar progressão da ELA. *ALS and FTD*, v. 24, n. 5-6, 2023.
- [x] LAURENTINO, E. K. F. et al. HD-tDCS in ALS: Study Protocol. *J. Clin. Med.*, v. 14, n. 6701, 2025. (lido em 27/10–06/11/2026; notas em `docs/leituras/01` a `04`)
- [ ] FAN, X. et al. Multimodal fusion technologies in neuroscience. *Front. Neurosci.*, v. 17, 2023.
- [ ] LI, J.; WANG, Q. Multi-modal bioelectrical signal fusion. *Information Fusion*, v. 79, 2022.
- [ ] SANTANA, P. V. et al. Ultrassonografia diafragmática. *Diagnostics*, v. 13, n. 6, 2023.
- [ ] SINISCALCHI, C. et al. Diaphragm Ultrasound. *Geriatrics*, v. 9, n. 3, 2024.
- [ ] VUCIC, S. et al. Clinical diagnostic utility of TMS. *Clin. Neurophysiol.*, v. 150, 2023.

## Acrescentados no cronograma de novembro/2026

Ver `docs/cronograma/2026-11_novembro.md`. Os quatro últimos vêm das referências do Laurentino.

- [x] CHAKALOV, I. et al. The role of the TMS parameters for activation of the corticospinal pathway to the diaphragm. *Clin. Neurophysiol.*, v. 138, p. 173–185, 2022. (PDF em `administrativo/04_Artigos_Referencia/`; lido em 10/11/2026; notas em `docs/leituras/05`)
- [ ] MASKILL, D. et al. Motor cortical representation of the diaphragm in man. *J. Physiol.*, v. 443, p. 105–121, 1991.
- [ ] LUO, Y. M.; MOXHAM, J.; POLKEY, M. I. Diaphragm electromyogram measured with unilateral magnetic stimulation. *Eur. Respir. J.*, v. 13, p. 385–390, 1999.
- [ ] WELCH, J. F. et al. Reliability of diaphragmatic motor-evoked potentials induced by transcranial magnetic stimulation. *J. Appl. Physiol.*, v. 129, p. 1393–1404, 2020.
- [ ] LEFAUCHEUR, J. P.; LOFASO, F. Diaphragmatic silent period to transcranial magnetic cortical stimulation for assessing cortical motor control of the diaphragm. *Exp. Brain Res.*, v. 146, p. 404–409, 2002.

## Resumos

### Laurentino et al., 2025 — Protocolo de HD-tDCS na ELA

> LAURENTINO, E. K. F. et al. HD-tDCS Therapy in ALS: Study Protocol for a Multicenter Randomized Controlled Clinical Trial. *J. Clin. Med.*, v. 14, 6701, 2025.

**Por que li:** é o protocolo publicado do ensaio clínico guarda-chuva do HUB (Mês 1).

**Resumo (1 parágrafo):**
Laurentino et al. (2025) descrevem o protocolo de um ensaio multicêntrico, randomizado, controlado com sham e triplo-cego. O ensaio avalia a HD-tDCS anódica (3 mA, 30 min, 10 sessões em casa) sobre o córtex motor do diafragma em pacientes com ELA. A função respiratória é medida por espirometria, pressões respiratórias e sEMG de 10 músculos. A excitabilidade cortical é medida por TMS, com MEPs captados nos hemidiafragmas, e a perfusão cerebral por fNIRS. As avaliações acontecem do basal até 6 meses após a intervenção.

**Relevância para o projeto:**
Define o protocolo de TMS que o MEPSync processa: hotspot, 80% da potência máxima no fim da expiração, 5 pulsos com intervalo de 45 a 60 s, latência e amplitude. O artigo já coleta EMG e fNIRS ao mesmo tempo, mas **não usa ultrassom diafragmático**. Essa é a lacuna que o projeto preenche.

---

### Chakalov et al., 2022 — Parâmetros da TMS no diafragma

> CHAKALOV, I. et al. The role of the TMS parameters for activation of the corticospinal pathway to the diaphragm. *Clin. Neurophysiol.*, v. 138, p. 173–185, 2022.

**Por que li:** é o artigo central sobre como o pulso de TMS afeta o diMEP, que é a medida que o MEPSync processa (cronograma, 10/11).

**Resumo (1 parágrafo):**
Chakalov et al. (2022) compararam quatro configurações de pulso de TMS neuronavegada: forma de onda monofásica ou bifásica e corrente anterior-posterior (AP) ou posterior-anterior (PA). Os pulsos foram dados no fim da expiração passiva, em 19 voluntários saudáveis. O diMEP foi captado por eletrodos de superfície no 7º a 9º espaço intercostal. Músculos vizinhos (serrátil/grande dorsal e abdominais) também foram registrados, para controlar contaminação. O ultrassom (modos B e M) confirmava em tempo real o movimento do diafragma. O pulso bifásico teve limiar menor (~68% contra ~88% da potência máxima) e diMEP maior (~0,28 contra ~0,19 mV). Com o monofásico, 6 dos 19 participantes não responderam nem a 100% da potência. A corrente AP gerou latências menores (~16,4 ms). O hotspot ficou no mesmo lugar nas quatro configurações, mas precisou ser procurado de novo a cada troca de pulso.

**Relevância para o projeto:**
Refina a lacuna do MEPSync. TMS e ultrassom já foram usados ao mesmo tempo, mas o ultrassom serviu só como checagem visual e manual, feita por um segundo examinador, sem sincronização nem medida quantitativa. O artigo também dá parâmetros para o código: amostragem de 5 kHz, latência medida do artefato até o início do MEP, amplitude pico a pico e critério de 50 µV. E dá janelas de latência que separam o diMEP (~16–17 ms) da contaminação por serrátil/dorsal (~13 ms) e por abdominais (~20 ms), úteis como controle de qualidade automático.

---


<!-- Copie o bloco abaixo para cada artigo lido -->

### [Autor, Ano] — Título curto

**Por que li:** [sprint/dúvida que motivou a leitura]

**Resumo (1 parágrafo):**


**Relevância para o projeto:**

---
