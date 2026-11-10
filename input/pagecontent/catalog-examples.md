<div class="callout-wrapper">
  <div class="callout-box contextual-box">
    <strong>Illustrative content</strong>
    The examples in this guide only illustrate the use of the FHIR artefacts. They are NOT clinical guidance and SHALL NOT be used to treat patients.
  </div>
</div>

### Regimen Catalog Examples

| Example | Description |
|---|---|
| [Example SACT Regimen Catalog Bundle](Bundle-sact-catalog-bundle-example.html) | `Bundle` of type `collection` distributing the whole example catalog. |
| [Example SACT Regimen Catalog](Library-sact-catalog-example.html) | Catalog `Library` listing the regimens. |
| [mFOLFOX6 - adjuvant colon cancer](PlanDefinition-regimen-mfolfox6.html) | Oxaliplatin + calcium folinate + fluorouracil (bolus and 46-hour infusion), every 14 days, 12 cycles. |
| [Carboplatin-Paclitaxel - first-line ovarian cancer](PlanDefinition-regimen-carboplatin-paclitaxel.html) | Paclitaxel 175 mg/m2 followed by carboplatin AUC 5, every 21 days, 6 cycles, with premedication. |
| [mFOLFOX6 - logical model instance](Binary-lm-mfolfox6.html) | The mFOLFOX6 regimen expressed with the SACTRegimen logical model. |
{: .grid}

### mFOLFOX6 - cycle day 1

| Seq | Component | Role | Dose | Route / duration | Relation |
|---|---|---|---|---|---|
| 1 | [Ondansetron](ActivityDefinition-admin-ondansetron-8.html) | Antiemetic | 8 mg | IV, 15 min | 30 min before oxaliplatin |
| 1 | [Dexamethasone](ActivityDefinition-admin-dexamethasone-8.html) | Antiemetic | 8 mg | IV | 30 min before oxaliplatin |
| 2 | [Oxaliplatin](ActivityDefinition-admin-oxaliplatin-85.html) | Anticancer agent | 85 mg/m2 | IV, 2 h | |
| 2 | [Calcium folinate](ActivityDefinition-admin-calcium-folinate-400.html) | Modulating agent | 400 mg/m2 | IV, 2 h | concurrent with oxaliplatin |
| 3 | [Fluorouracil](ActivityDefinition-admin-fluorouracil-bolus-400.html) | Anticancer agent | 400 mg/m2 | IV bolus | after calcium folinate |
| 4 | [Fluorouracil](ActivityDefinition-admin-fluorouracil-ci-2400.html) | Anticancer agent | 2400 mg/m2 | IV continuous, 46 h (days 1-2) | after fluorouracil bolus |
{: .grid}
