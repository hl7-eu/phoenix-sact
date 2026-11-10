<div class="callout-wrapper">
  <div class="callout-box contextual-box">
    <strong>Contextual information</strong>
    This page provides background and orientation for the guide.
  </div>
</div>

### Purpose

SACT regimens are described today in a large number of national, regional and institutional protocols, usually as documents or as proprietary configurations of electronic prescribing systems. The same regimen may be known by different names and acronyms, and its definition (doses, days, supportive care) may differ across organisations without this being evident.

The purpose of this guide is to provide a **shared, computable and vendor-neutral representation** of SACT regimen definitions that:

- can be **published and exchanged** as a catalog by different authorities;
- can be **loaded into electronic prescribing systems** to configure regimen-based ordering;
- supports **medication safety** (e.g. dose checking, cumulative dose, required monitoring);
- enables **comparison and harmonisation** of regimens across organisations and countries;
- supports **secondary use**, allowing treatment data recorded in different settings to be related to a common regimen definition.

### In scope

- Catalog-level metadata: publisher, version, status, jurisdiction, list of regimens.
- Regimen identification: name, acronym, synonyms, identifiers, version, status.
- Indications: cancer condition, histology, stage, biomarkers, intent, setting, line of therapy.
- Cycle definition: cycle length, number of cycles, repetition until progression.
- Components: anticancer agents and supportive medications, with dose and dose basis (body surface area, weight, AUC, flat), route, method, administration days, infusion duration and sequencing.
- Emetogenic risk of the regimen.
- Monitoring requirements before or during treatment.
- Dose modification rules in case of toxicity.
- Supporting evidence.

### Out of scope (this version)

- Patient-specific treatment plans, orders and administrations.
- Detailed computable decision logic (e.g. CQL) for dose calculation and dose modifications.
- Medicinal product level information (strengths, packages, brands): regimens are defined at substance level.
- Radiotherapy and surgery components of multimodal protocols, except as context (setting).
