<div class="callout-wrapper">
  <div class="callout-box contextual-box">
    <strong>Contextual information</strong>
    This page provides background for the guide.
  </div>
</div>

### Systemic Anti-Cancer Therapy

Systemic Anti-Cancer Therapy (SACT) covers all medicinal treatments for cancer acting on the whole body: cytotoxic chemotherapy, targeted therapies, immunotherapies, endocrine therapies and antibody-drug conjugates. SACT is usually delivered according to **regimens**: standardised combinations of agents, doses and schedules, organised in **cycles** (e.g. "every 21 days for 6 cycles").

Because of the narrow therapeutic index of many anticancer agents, SACT prescribing is a high-risk process. Many European cancer centres therefore rely on **regimen-based electronic prescribing**, where prescribers select a pre-defined, approved regimen from a catalog instead of prescribing each medication individually.

### The need for a common catalog representation

Regimen catalogs are maintained at national level in several countries and at institutional level almost everywhere. They differ in structure, terminology and level of detail. The lack of a common representation:

- makes it expensive to share and reuse regimen definitions;
- limits the ability to compare treatment practices and outcomes across countries;
- hampers the aggregation of treatment data for research and for cancer registries, where treatment is often recorded only as free-text regimen names.

This guide addresses these issues by proposing a common logical model and its FHIR representation, building on the experience of the HL7 Europe Common Cancer Model and of existing regimen catalogs.

### Relationship with the HL7 Europe Common Cancer Model

The [HL7 Europe Common Cancer Model](https://build.fhir.org/ig/hl7-eu/cancer-common) describes, among others, the **SystemicTreatment** delivered to a patient (intent, type, start and end dates, setting). This guide is complementary: it describes the **regimen definitions** that systemic treatments may refer to. A future version of the common cancer model may reference a catalog regimen definition from a systemic treatment record.
