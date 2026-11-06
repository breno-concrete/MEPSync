# Leitura 04 — Laurentino et al. (2025): sEMG, fNIRS, TMS, efeitos adversos e Tabela 1 (2.5.2 a 2.7)

> **Artigo:** LAURENTINO, E. K. F. et al. *HD-tDCS Therapy in ALS: Study Protocol...* J. Clin. Med., v. 14, 6701, 2025.
> **Arquivo:** `administrativo/04_Artigos_Referencia/jcm-14-06701.pdf`
> **Seções cobertas:** 2.5.2 sEMG respiratório, 2.5.3 fNIRS, 2.5.4 TMS, 2.6.8 Monitoramento e efeitos adversos, 2.7 Medidas dos desfechos (páginas 10–17). As seções 2.6.1 a 2.6.7 aparecem só de passagem.
>
> As analogias e as observações marcadas como "ideia" são minhas, para ajudar a entender, e **não vêm do artigo**.

---

## 1. Dois usos diferentes do EMG

O artigo usa a eletromiografia de superfície (sEMG) em **dois momentos**, com objetivos diferentes. Isso é fácil de confundir:

| | **2.5.2 sEMG respiratório** | **2.5.4 TMS** |
|---|---|---|
| Quem gera a contração | o **próprio paciente**, fazendo força nas manobras (MIP, MEP, SNIP, SNEP) | o **pulso magnético** no córtex |
| O que se mede | **recrutamento**: quanto cada músculo trabalha no esforço | **MEP** (potencial evocado motor): latência, amplitude etc. |
| Pergunta que responde | "como os músculos respiratórios trabalham?" | "como o caminho cérebro → diafragma responde?" |

*Analogia:* na 2.5.2 você observa o carro sendo dirigido pelo motorista. Na 2.5.4 você aperta um botão de teste no motor e mede a reação.

## 2. sEMG dos músculos respiratórios (2.5.2)

**São 10 sensores sem fio** (Delsys), colocados dos dois lados (bilateral):

| Músculo | Sensores | Posição |
|---|---|---|
| Escalenos (ESC) | 2 (EMG1–2) | 5 cm da articulação esternoclavicular e 2 cm acima |
| Esternocleidomastoideo (SCM) | 2 (EMG3–4) | terço inferior entre o processo mastoide e a articulação esternoclavicular |
| Paraesternais (PARA) | 2 (EMG5–6) | 2º espaço intercostal, a 3 cm do esterno |
| Hemidiafragmas (H-DIA) | 4 (EMG7–10) | **7º e 8º espaços intercostais**, um entre a junção costocondral e a linha hemiclavicular, outro entre a linha hemiclavicular e a linha axilar anterior |

**Por que não só o diafragma?** O alvo da estimulação é o córtex do diafragma, mas o artigo diz que ativar essa região **pode mexer também com os músculos acessórios** da respiração. Por isso eles medem o conjunto.

**Preparo da pele:** tricotomia (raspar os pelos), limpeza com álcool 70%, abrasão leve com gaze e eletrodo alinhado com as fibras do músculo, seguindo o **SENIAM** (guia de posicionamento de eletrodos de EMG). Os sensores são presos com fita dupla-face e fita por cima para reduzir **artefato de movimento** (ruído causado pelo sensor se mexendo).

**Software:**

- **EMGworks 4.8**: aquisição por Bluetooth e análise.
- **Neuromap 1.2.1**: só para o diafragma. Faz a **decomposição em unidades motoras**: acha no sinal a "forma" de cada unidade motora e identifica todos os disparos, mesmo quando se sobrepõem. Saem a amplitude média, o limiar de disparo e as taxas de disparo máxima e média.

**Quando registra:**

- Durante as manobras respiratórias.
- Em **repouso** (antes das manobras) e na **recuperação** (depois delas).
- Os **maiores valores** de MIP e MEP servem para **normalizar** os dados.

*Ideia:* normalizar significa expressar o sinal como porcentagem do máximo daquela pessoa. Assim dá para comparar pacientes com pele, gordura e posição de eletrodo diferentes.

## 3. fNIRS — espectroscopia funcional no infravermelho próximo (2.5.3)

**O que mede:** a **oxigenação do sangue** no córtex, usando luz infravermelha que atravessa o crânio. A atividade elétrica dos neurônios não é medida diretamente. Ela é **deduzida**: região mais ativa recebe mais sangue oxigenado.

*Analogia:* em vez de ouvir a conversa numa sala, você conta quantas xícaras de café entram nela. Mais café sugere mais gente trabalhando.

**Montagem:**

- Aparelho Brite MKIII (Artinis), preso na cabeça com faixa elástica.
- 10 transmissores e 8 receptores numa grade 3 × 7, com o detector central em **Fz** (sistema 10–20).
- 30 mm entre emissor e detector.
- Luz em 750 e 830 nm.
- **Taxa de amostragem: 25 Hz.**
- Software OxySoft 4.0, com "coleta sincronizada".

**Variáveis:** médias de Oxy-Hb (hemoglobina oxigenada), Deoxy-Hb (desoxigenada) e Hb total em cada canal, no repouso e durante as manobras.

**Inconsistência no artigo:** o texto fala em **27 canais**, mas a legenda da Figura 5 fala em **22 canais + 2 de separação curta** (10 mm).

## 4. TMS — excitabilidade cortical (2.5.4)

**Equipamento:** Neuro-MS (Neurosoft) com **bobina em forma de "8"** sobre o córtex motor do diafragma no **hemisfério esquerdo**. O MEP é captado por sEMG nos hemidiafragmas, com o amplificador NEURO-MEP.

**A touca:** nela são marcados o vértex e as linhas interaural e nasion–inion (sistema 10/20), e desenhada uma **grade de 1 × 1 cm** que serve de referência.

**Passo 1 — achar o hotspot:**

- O ponto de partida é ~3 cm à esquerda da linha média e 2–3 cm à frente do plano auricular.
- O operador segura a bobina a **45° da linha média**, com o cabo para trás, o que gera corrente de trás para frente (pulso monofásico).
- O **hotspot** é o ponto da touca que gera **MEP ≥ 50 µV em pelo menos 5 de 10 estímulos**, no fim da expiração e durante a inspiração.
- A partir da primeira posição da grade, exploram-se os pontos vizinhos até achar a melhor resposta.

**Passo 2 — medir:**

- Eletrodos nos **7º e 8º espaços intercostais**, dos dois lados (os mesmos da seção 2.5.2).
- Paciente **sentado a 45°**.
- Intensidade de **80% da potência máxima** do aparelho, no **fim da expiração**.
- O EMG é acompanhado em tempo real para ajustar a orientação da bobina e obter o maior MEP.
- **5 estímulos com intervalo de 45 a 60 s**, e ficam os **3 traçados de melhor qualidade**.

**O que é medido depois da localização:**

| Medida | Em palavras simples |
|---|---|
| **Latência** | tempo entre o pulso e o início do MEP |
| **Amplitude** | "altura" do MEP |
| **rMT** | limiar motor em repouso: menor intensidade que gera MEP com o músculo relaxado |
| **aMT** | limiar motor ativo: o mesmo, com o músculo contraído |
| **CSP** | período de silêncio cortical: pausa no EMG depois do MEP, durante contração |
| **SICI / LICI** | inibição intracortical de intervalo curto / longo (pulso duplo) |
| **SICF** | facilitação intracortical (pulso duplo) |

Os pulsos duplos usam 10 pulsos (mínimo 7) a 90% do aMT. Os MEPs são expressos em porcentagem da amplitude média e analisados por latência e área.

**Para o meu projeto:** latência e amplitude do MEP são exatamente o que o pipeline vai extrair do sinal.

**Estranho no artigo:** o amplificador aparece com **"filtro passa-baixa de 5 Hz"**. Um passa-baixa deixa passar só o que é lento, e o MEP é um sinal rápido (dura milissegundos). Com 5 Hz ele seria apagado. Provavelmente é um **passa-alta** de 5 Hz (que tira o desvio lento da linha de base). **Levar para a orientadora.**

## 5. MRI — ressonância magnética

É a **imagem estrutural do cérebro** de cada paciente. Tem dois usos no artigo:

1. **Antes:** entra no HD-Explore (Soterix) para montar um **modelo individual do campo elétrico**, com a anatomia daquela pessoa (é a mesma ideia da seção 2.4).
2. **Depois (retrospectivo):** confirmar que o estímulo caiu mesmo no **córtex motor do diafragma**, perto da linha média do giro pré-central, ~3 cm ao lado do vértex (descrito primeiro por Maskill et al.).

O artigo admite que a **certeza anatômica absoluta** só viria com TMS combinada com fMRI. A neuronavegação serve para chegar o mais perto possível.

## 6. Desfechos secundários (2.6.1 a 2.6.7) — de passagem

Para o meu projeto pesam menos, mas existem:

| Seção | O que avalia | Instrumento |
|---|---|---|
| 2.6.1 | Funcionalidade | ALSFRS-R/BR (0 a 48) |
| 2.6.2 | Controle motor dos braços | sEMG com 16 sensores Trigno (Delsys) |
| 2.6.3 | Fadiga e falta de ar | Escala de Severidade da Fadiga e Borg modificada (0 a 10) |
| 2.6.4 | Dor | Escala numérica (0 a 10) e desenho do corpo |
| 2.6.5 | Sono | Mini-Sleep Questionnaire (10 a 70) |
| 2.6.6 | Cognição | ALS-CBS-Br (máximo 20) |
| 2.6.7 | Qualidade de vida | QVELA-20/Br |

## 7. Monitoramento e efeitos adversos (2.6.8)

- A tDCS tem **taxa baixa de efeitos adversos**, e os que aparecem são leves: alteração de sensibilidade no local, dor de cabeça, sensação de calor, coceira, desconforto (muito pela fita que prende o eletrodo).
- **Nuance do artigo:** a taxa baixa **também pode indicar viés de relato**, ou seja, os estudos podem ter registrado menos efeitos do que aconteceram.
- **Margem de segurança:** doses que poderiam lesionar o cérebro ficam na ordem de **100 mA**. Em humanos se usa de 0,8 a 3 mA.
- Durante os testes são monitorados frequência cardíaca, saturação de O₂, pressão arterial e escala de Borg antes e depois.
- Todos os participantes (ativo e sham) respondem sobre coceira, formigamento, vermelhidão, sonolência, dor de cabeça etc.:
  - **intensidade** de 1 a 4 (nenhum, leve, moderado, forte);
  - **relação com a estimulação** de 1 a 5 (Likert).
- Se surgir efeito adverso, o participante é encaminhado ao setor do hospital adequado, sob supervisão de um médico do projeto.

## 8. Tabela 1 — Medidas dos desfechos (2.7)

A Tabela 1 liga cada **desfecho** à **medida** e ao **instrumento**, na ordem dos objetivos. Exemplos:

| Desfecho | Medidas | Instrumento |
|---|---|---|
| Excitabilidade cortical | latência, amplitude, rMT, aMT, CSP, CMCT, SICI, LICI, ICF | TMS |
| Perfusão cerebral | O2Hb, HHb, tHb, HbDiff, TSI% | fNIRS |
| Atividade elétrica dos músculos respiratórios | RMS, %RMS, frequência mediana, recrutamento de unidades motoras | sEMG |
| Pressões nasais | SNIP, SNEP | PowerLab C |
| Função pulmonar | FVC, FEV1, FEV1/FVC, FEF25–75% | PowerLab C |
| Sinais vitais | FC, FR, SaO₂, PA | oxímetro e esfigmomanômetro |

Além disso, são coletados dados sociodemográficos (sexo, idade, estado civil, escolaridade, emprego), hábitos (álcool, tabaco, horas de sono) e uso de medicamentos.

**Observações:**

- No texto extraído do PDF as colunas saem embaralhadas. **Ler a tabela direto no PDF.**
- A tabela cita **CMCT** (tempo de condução motora central) e **FR** (frequência respiratória), que não aparecem no texto dos métodos.

## 9. Correções do meu primeiro resumo

1. **O sEMG da 2.5.2 não mede a resposta aos estímulos cerebrais.** Ele mede o recrutamento dos músculos durante as manobras voluntárias. A resposta ao estímulo do cérebro é o MEP da TMS (2.5.4).
2. **SNIP e SNEP** foram explicados na seção anterior (2.5.1), não nesta.
3. **Os 10 eletrodos não ficam todos no diafragma:** 2 escalenos, 2 esternocleidomastoideos, 2 paraesternais e 4 hemidiafragmas, todos bilaterais.
4. **"Repouso e recuperação" estava certo**, e faltava a normalização pelos picos de MIP e MEP.
5. **fNIRS mede oxigenação do sangue**, não atividade elétrica. A atividade é deduzida. O "espaço para a HD-tDCS" que anotei **não aparece no texto nem na legenda**; se estiver só no desenho da figura, é observação minha.
6. **A TMS não "identifica o hotspot 5×".** Juntei dois passos: (a) achar o hotspot = MEP ≥ 50 µV em ≥ 5 de 10 pulsos; (b) medir = 5 pulsos a 80% da potência, com intervalo de 45–60 s, ficando os 3 melhores traçados.
7. **"Região intercostal"** → o termo certo é **espaço intercostal** (o espaço entre duas costelas).
8. **Efeitos adversos:** a taxa é baixa, mas o artigo admite que isso pode ser parcialmente viés de relato.

## 10. Minhas dúvidas (preencher)

- [ ] O filtro de 5 Hz do amplificador é passa-baixa ou passa-alta? (perguntar à orientadora)
- [ ] 27 ou 22 canais de fNIRS?
- [ ] 

## 11. Próximas seções planejadas

- [ ] 3 Ética e divulgação (página 17)
- [ ] 4 Discussão (páginas 17–19)
- [ ] 5 Limitações (páginas 19–20)
