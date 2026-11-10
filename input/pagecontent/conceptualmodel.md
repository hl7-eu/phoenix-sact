### Conceptual Model

The conceptual model describes the main concepts of a SACT regimen catalog and their relationships. Definitions of each concept are provided in the [Glossary](glossary.html).

<div style="text-align:center;">
  <figure class="uml-diagram" style="width:80%;">
    {% include SactConceptualModel.svg %}
    <figcaption><strong>Figure 1: SACT Regimen Catalog conceptual model</strong></figcaption>
  </figure>
</div>

- A **SACT Regimen Catalog** includes one or more **SACT Regimens**.
- A **SACT Regimen** is indicated for one or more **Indications**. Each indication combines a cancer condition (and optionally histology, stage, biomarkers) with an intent, a setting and a line of therapy.
- A regimen is delivered in one or more **Cycles**. Usually a single cycle definition is repeated a number of times; different cycle definitions are used when cycles differ (e.g. loading dose, maintenance).
- Each cycle administers one or more **Components**: anticancer agents and supportive medications, each of a given **Agent**, with dose, route, administration days and sequencing.
- A regimen may require **Monitoring Requirements** (e.g. blood counts before each cycle) and may define **Dose Modification Rules** that apply to some agents in case of toxicity.
- A regimen is supported by **Evidence** (guidelines, publications, summaries of product characteristics).
