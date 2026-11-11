# Leitura 05 — Chakalov et al. (2022): parâmetros da TMS no diafragma

> **Artigo:** CHAKALOV, I. et al. The role of the TMS parameters for activation of the corticospinal pathway to the diaphragm. *Clin. Neurophysiol.*, v. 138, p. 173–185, 2022. doi:10.1016/j.clinph.2022.03.019
> **Arquivo:** `administrativo/04_Artigos_Referencia/1-s2.0-S1388245722002218-main.pdf`
> **Lido em:** 10/11/2026 (inteiro: Introdução, Métodos, Resultados, Discussão e Conclusão)
>
> As analogias e as observações marcadas como "ideia" são minhas, para ajudar a entender, e **não vêm do artigo**.

---

## 1. A pergunta

Qual configuração do pulso de TMS ativa melhor o diafragma? Até então, ninguém tinha testado isso. O artigo compara **4 configurações**:

| | Corrente AP (anterior → posterior) | Corrente PA (posterior → anterior) |
|---|---|---|
| **Monofásico (Mo)** | Mo-Ap | Mo-Pa |
| **Bifásico (Bi)** | Bi-Ap | Bi-Pa |

Participaram 20 voluntários **saudáveis**, destros e jovens (19 a 38 anos). Um deles saiu antes da TMS, então foram 19 estimulados.

## 2. Mono × Bi e AP × PA, explicado

### A historinha

Os neurônios do diafragma moram atrás de uma **porta de vaivém pesada**, a de um saloon. Para chamar o diafragma, alguém precisa abrir essa porta.

- **Monofásico:** a criança dá **um empurrão curto** e pronto. Muitas vezes a porta nem abre.
- **Bifásico:** a criança **puxa um pouquinho** a porta para trás e, na volta, dá **um empurrão comprido**. É esse segundo movimento, mais longo, que abre a porta. Com menos força, ela abre mais e mais vezes.
- **AP × PA** é **de que lado** a criança empurra: da frente para trás ou de trás para a frente. Os dois lados abrem a porta, mas um deles a abre **um tiquinho mais rápido**.

### Quem é quem

| Na historinha | No artigo |
|---|---|
| A porta pesada | Os neurônios do córtex do diafragma (área pequena e funda, difícil de ativar) |
| A força da criança | A intensidade do pulso, em % da potência máxima do aparelho (MSO) |
| O empurrão curto | O pulso **monofásico**: uma única corrente num sentido só (~100 µs) |
| Puxar e depois empurrar comprido | O pulso **bifásico**: uma fase de ida e uma fase de volta. **A segunda fase é a que conta** e dura ~200 µs, o dobro da monofásica |
| O lado de onde se empurra | A **direção da corrente** induzida no cérebro: AP ou PA |
| A porta abrir mais rápido | **Latência** menor do diMEP |

### Onde a analogia para de valer

- **Nome do bifásico:** no pulso bifásico, a corrente induzida no cérebro tem sentido **oposto** ao da corrente inicial na bobina. O artigo nomeia o Bi pela **segunda fase**, a que tem efeito. Então "Bi-Ap" quer dizer que a fase que conta corre de frente para trás.
- **Por que o Bi ganha:** pode ser por ter duas fases **ou** por a fase útil ser mais longa. Os autores dizem que não dá para separar as duas causas com esse aparelho (MagPro X100).
- **Lado da porta:** no diafragma, AP dá latência menor. Na mão é o contrário (PA é mais rápida). A hipótese dos autores é que a área do diafragma é mais funda no córtex.

## 3. Como fizeram

- **TMS neuronavegada** (Brainsight + câmera Polaris), aparelho **MagPro X100** e bobina em **figura de oito** (MC-B70). O aparelho permite escolher a forma de onda e a direção da corrente.
- **Momento do pulso:** fim da **expiração passiva**, com o diafragma relaxado (*relaxed end-expiration*).
- **Hotspot:** grade virtual de 9 pontos, centrada num ponto "M" entre C3 e Fz (sistema 10–20). A bobina é girada de 90° em 90° e depois em ajustes de 25°, até achar a maior amplitude. **O hotspot é procurado de novo para cada uma das 4 configurações.**
- **Limiar motor de repouso (RMT):** algoritmo **ML-PEST**, uma "caça ao limiar" adaptativa. O critério é o MEP **≥ 50 µV** pico a pico. Depois, a estimulação é feita a **120% do RMT**, com 12 a 17 pulsos por configuração. Se o RMT passasse de 100%, usavam 100% da MSO.
- **Ordem das 4 sessões:** pseudoaleatória, com pausa de 5 a 10 min entre elas.
- **Estimulação elétrica do nervo frênico**, feita antes da TMS, para confirmar a posição dos eletrodos e calcular o **tempo de condução motora central (CMCT)**.

### Registro (o que interessa para o código)

| Item | Valor |
|---|---|
| Eletrodos | Ag/AgCl de superfície, 5 mm, até 2 cm de distância entre eles |
| Diafragma (ativo) | 7º, 8º ou 9º espaço intercostal direito, entre a junção costocondral e a linha hemiclavicular |
| Referência | um pouco lateral, na costela de cima |
| Amplificador / ADC | Digitimer D360 / CED Micro1401 mk II |
| Software | Signal (CED) |
| Filtro | passa-baixa de 2,5 kHz |
| **Amostragem** | **5 kHz** |
| Latência | do artefato do pulso até o início do MEP |
| Amplitude | pico a pico (pico positivo − pico negativo) |
| Estatística | ANOVA 2 × 2 de medidas repetidas (forma de onda × direção), Bonferroni, R |

**Eletrodos extras, para controlar contaminação por músculos vizinhos:**
- 6º espaço intercostal, linha axilar posterior: grande dorsal e serrátil anterior;
- parede abdominal, 4 cm abaixo das costelas: reto e transverso do abdome.

## 4. O papel do ultrassom

- Aparelho SonoSite Edge, sonda curvilínea de 2,5 a 5 MHz, posição subcostal na linha hemiclavicular, apontada para a cúpula direita do diafragma.
- Usaram os modos **B** (imagem) e **M** (traçado do movimento ao longo do tempo).
- **Função:** confirmar que **o diafragma se mexeu** depois do pulso, ou seja, que o sinal captado é um diMEP de verdade. No modo M aparece um **desvio no padrão** da respiração logo depois do pulso (Fig. 2C).
- **Como foi feito:** um examinador opera o ultrassom e outro dispara a TMS. A checagem é **visual e manual**. Não há sincronização dos dados nem medida quantitativa.

## 5. Resultados

| | Bi-Ap | Bi-Pa | Mo-Ap | Mo-Pa |
|---|---|---|---|---|
| RMT (% MSO) | 69,2 | 68,1 | 88,2 | 87,4 |
| Amplitude do diMEP (mV) | 0,287 | 0,268 | 0,189 | 0,194 |
| Latência (ms) | **16,35** | 16,69 | 16,71 | 17,47 |
| CMCT (ms) | 11,19 | 11,53 | 11,56 | 12,32 |

- **Forma de onda:** o bifásico tem limiar menor **e** amplitude maior, mesmo estimulando com menos intensidade (p < 0,001 para o RMT).
- **Quem respondeu:** **6 de 19 pessoas nunca responderam ao monofásico**, nem a 100% da potência. Com o bifásico, todos responderam (só 1 pessoa não respondeu ao Bi-Pa). O bifásico também achou o hotspot mais rápido e com menos pulsos.
- **Direção:** a corrente AP dá latência menor (p < 0,05).
- **Hotspot:** fica no mesmo lugar nas 4 configurações, de 0 a 4 cm ao lado da linha média e até 2 cm à frente do plano das orelhas. Mas **manter o ponto e trocar a configuração quase zerava o MEP**. Por isso foi preciso procurar de novo a cada troca.
- **Ângulo da bobina:** não segue um padrão. Inverter a corrente **não** significa simplesmente girar a bobina 180°.
- **Relação RMT × amplitude:** é negativa. Quanto maior o limiar, menor a resposta.
- **Nervo frênico:** latência de ~5,15 ms. O CMCT é a latência da TMS menos a latência do frênico.
- **Efeito adverso:** 1 pessoa teve **síncope reflexa** (desmaio por reflexo: a pressão e os batimentos caem de repente) **logo depois da estimulação elétrica do frênico**, não da TMS. Por isso o estudo ficou com 19 participantes.

## 6. Contaminação e diMEP bilateral (importante para o código)

Os músculos vizinhos ativaram junto em cerca de metade das pessoas, mas cada grupo responde **numa janela de latência diferente**:

| Músculo | Latência média |
|---|---|
| Grande dorsal / serrátil | ~13 ms (**antes** do diMEP) |
| **Diafragma** | **~16–17 ms** |
| Abdominais | ~20–22 ms (**depois** do diMEP) |

- **O bifásico causou coativação com mais frequência** que o monofásico. Ou seja, o pulso que ativa melhor o diafragma também contamina mais.
- **diMEP bilateral:** o pulso ativou também o hemidiafragma do **mesmo lado** da estimulação em 5 casos com Bi e em 1 com Mo. Esse lado responde **1 a alguns ms depois** do lado oposto.
- **Eletrodo de superfície funciona:** Demoule et al. (2003) mostraram que a latência medida com eletrodo de superfície é igual à medida com agulha. Essa é a referência para justificar o uso de sEMG.

## 7. Discussão: o resto do artigo

- **Bobina double-cone (duplo cone):** é a alternativa quando a figura de oito não consegue gerar diMEP. Ela alcança mais fundo e ajuda a achar o ponto sem neuronavegação, mas é **menos focal**, exige **intensidade alta** e **contamina mais** o sinal de superfície. A bobina circular no vértex, usada nos estudos antigos como o de Maskill (1991), tem o mesmo problema.
- **Inspiração voluntária:** outros estudos estimularam durante a inspiração voluntária, ou com CO2, para baixar o limiar. Os autores **evitaram** isso porque aumenta a coativação dos músculos vizinhos. Por isso estimularam no fim da expiração passiva, como o Laurentino.
- **Poucos estudos de diafragma calcularam o limiar** com um método recomendado. A maioria estimulava direto a 100% da potência com aparelhos só monofásicos (Magstim 200).
- **Potencial terapêutico:** usar rTMS para "condicionar" a respiração, inclusive em pacientes em ventilação mecânica, em coma ou anestesiados, porque a TMS não depende do esforço do paciente.
- **Conclusão:** o bifásico é o mais indicado para o diafragma, e a escolha do pulso muda o resultado do exame.
- **Limitações:** o artigo não tem uma seção própria. *Ideia:* a principal é que todos eram **jovens e saudáveis**. Em ELA, com o limiar mais alto, a diferença entre Mo e Bi deve pesar ainda mais.

## 8. O que muda para o MEPSync

1. **A lacuna fica mais precisa.** O Laurentino não usa ultrassom. O Chakalov usa TMS e ultrassom **ao mesmo tempo**, mas só como checagem visual feita por um segundo examinador, sem sincronizar os dados e sem medir nada no ultrassom. O MEPSync entra exatamente aí: **alinhar no tempo o pulso, o diMEP e o movimento no modo M, e quantificar**.
2. **Janela de latência como controle de qualidade.** Um pico em ~13 ms ou em ~20 ms no canal do diafragma é suspeito de contaminação. *Ideia:* o código pode marcar esses casos automaticamente.
3. **Os dois canais do diafragma** (os dois lados) precisam ser lidos separadamente, porque o lado ipsilateral pode responder alguns ms depois.
4. **Parâmetros de referência:** amostragem de 5 kHz, latência medida do artefato até o início do MEP, amplitude pico a pico e critério de 50 µV (o mesmo do Laurentino).

### Comparação com o Laurentino

| | Laurentino (2025) | Chakalov (2022) |
|---|---|---|
| Intensidade | 80% fixo da MSO | 120% do RMT individual |
| Pulsos | 5, com intervalo de 45–60 s, ficam os 3 melhores | 12 a 17 por configuração |
| Momento | fim da expiração | fim da expiração passiva |
| Critério de hotspot | MEP ≥ 50 µV em ≥ 5 de 10 pulsos | maior amplitude; RMT com MEP ≥ 50 µV |
| Ultrassom | não usa | modos B e M, checagem visual |

## 9. Perguntas para a orientadora

- O aparelho de TMS do HUB gera pulso **mono ou bifásico**? Com monofásico, 1/3 dos saudáveis nem respondeu. Em ELA, isso pode ser pior.
- A coleta do HUB tem eletrodos nos músculos vizinhos (serrátil/dorsal e abdominais) para controlar contaminação?
- O ultrassom do HUB vai gravar o modo M durante os pulsos? Se sim, em que formato, e como fica marcado o momento do pulso?
