// Illustrative regimen definition. It is NOT clinical guidance.

Instance: regimen-carboplatin-paclitaxel
InstanceOf: PlanDefinitionSactRegimenEu
Title: "Regimen Carboplatin-Paclitaxel (ovarian cancer)"
Description: "Example SACT regimen definition: paclitaxel 175 mg/m2 followed by carboplatin AUC 5, 21-day cycles, 6 cycles, as first-line treatment of epithelial ovarian cancer after cytoreductive surgery."
Usage: #example
* insert CatalogMetadata
* url = "http://hl7.eu/fhir/phoenix/sact/PlanDefinition/regimen-carboplatin-paclitaxel"
* identifier.system = "http://hl7.eu/fhir/phoenix/sact/sid/regimen"
* identifier.value = "OVA-1L-CARBOPACLI"
* version = "0.1.0"
* name = "RegimenCarboplatinPaclitaxelOvarian"
* title = "Carboplatin and Paclitaxel (3-weekly) - first-line ovarian cancer"
* subtitle = "CarboPacli"
* description = "Paclitaxel 175 mg/m2 over 3 hours followed by carboplatin AUC 5 over 1 hour on day 1, repeated every 21 days for 6 cycles. Premedication with dexamethasone and chlorphenamine is required before paclitaxel."
* topic = $sact-therapy#chemotherapy "Chemotherapy"
* useContext.code = $usage-context-type#focus
* useContext.valueCodeableConcept = $icd10#C56 "Malignant neoplasm of ovary"
* lastReviewDate = "2026-11-10"
* relatedArtifact[0].type = #citation
* relatedArtifact[0].citation = "ESMO-ESGO consensus recommendations on ovarian cancer (illustrative reference)."

* extension[indication].extension[cancerCondition].valueCodeableConcept = $icd10#C56 "Malignant neoplasm of ovary"
* extension[indication].extension[histology].valueCodeableConcept.text = "Epithelial ovarian carcinoma"
* extension[indication].extension[stage].valueCodeableConcept.text = "FIGO stage II-IV"
* extension[indication].extension[intent].valueCodeableConcept = $sct#373808002 "Curative - procedure intent"
* extension[indication].extension[setting].valueCodeableConcept = $sct#373846009 "Adjuvant - intent"
* extension[indication].extension[lineOfTherapy].valuePositiveInt = 1
* extension[emetogenicRisk].valueCodeableConcept = $sact-emeto#moderate "Moderate"

// ------------------------------------------------ cycle
* action[cycle].title = "Cycles 1-6"
* action[cycle].timingTiming.repeat.period = 21
* action[cycle].timingTiming.repeat.periodUnit = #d
* action[cycle].timingTiming.repeat.count = 6

* action[cycle].action[0].id = "dexamethasone"
* action[cycle].action[0].title = "Dexamethasone 20 mg IV"
* action[cycle].action[0].code = $sact-role#premedication "Premedication"
* action[cycle].action[0].timingRange.low = 1 'd' "day"
* action[cycle].action[0].timingRange.high = 1 'd' "day"
* action[cycle].action[0].relatedAction.actionId = "paclitaxel"
* action[cycle].action[0].relatedAction.relationship = #before-start
* action[cycle].action[0].relatedAction.offsetDuration = 30 'min' "minutes"
* action[cycle].action[0].definitionCanonical = Canonical(admin-dexamethasone-20)

* action[cycle].action[1].id = "chlorphenamine"
* action[cycle].action[1].title = "Chlorphenamine 10 mg IV"
* action[cycle].action[1].code = $sact-role#premedication "Premedication"
* action[cycle].action[1].timingRange.low = 1 'd' "day"
* action[cycle].action[1].timingRange.high = 1 'd' "day"
* action[cycle].action[1].relatedAction.actionId = "paclitaxel"
* action[cycle].action[1].relatedAction.relationship = #before-start
* action[cycle].action[1].relatedAction.offsetDuration = 30 'min' "minutes"
* action[cycle].action[1].definitionCanonical = Canonical(admin-chlorphenamine-10)

* action[cycle].action[2].id = "ondansetron"
* action[cycle].action[2].title = "Ondansetron 8 mg IV"
* action[cycle].action[2].code = $sact-role#antiemetic "Antiemetic"
* action[cycle].action[2].timingRange.low = 1 'd' "day"
* action[cycle].action[2].timingRange.high = 1 'd' "day"
* action[cycle].action[2].relatedAction.actionId = "paclitaxel"
* action[cycle].action[2].relatedAction.relationship = #before-start
* action[cycle].action[2].relatedAction.offsetDuration = 30 'min' "minutes"
* action[cycle].action[2].definitionCanonical = Canonical(admin-ondansetron-8)

* action[cycle].action[3].id = "paclitaxel"
* action[cycle].action[3].title = "Paclitaxel 175 mg/m2 IV over 3 hours"
* action[cycle].action[3].code = $sact-role#anticancer-agent "Anticancer agent"
* action[cycle].action[3].timingRange.low = 1 'd' "day"
* action[cycle].action[3].timingRange.high = 1 'd' "day"
* action[cycle].action[3].definitionCanonical = Canonical(admin-paclitaxel-175)

* action[cycle].action[4].id = "carboplatin"
* action[cycle].action[4].title = "Carboplatin AUC 5 IV over 1 hour"
* action[cycle].action[4].code = $sact-role#anticancer-agent "Anticancer agent"
* action[cycle].action[4].timingRange.low = 1 'd' "day"
* action[cycle].action[4].timingRange.high = 1 'd' "day"
* action[cycle].action[4].relatedAction.actionId = "paclitaxel"
* action[cycle].action[4].relatedAction.relationship = #after-end
* action[cycle].action[4].definitionCanonical = Canonical(admin-carboplatin-auc5)

// ------------------------------------------------ monitoring
* action[monitoring][0].title = "Neutrophil count"
* action[monitoring][0].description = "Before each cycle: neutrophils >= 1.5 x10^9/L to proceed."
* action[monitoring][0].input.codeFilter.code = $loinc#751-8 "Neutrophils [#/volume] in Blood by Automated count"
* action[monitoring][1].title = "Platelet count"
* action[monitoring][1].description = "Before each cycle: platelets >= 100 x10^9/L to proceed."
* action[monitoring][1].input.codeFilter.code = $loinc#777-3 "Platelets [#/volume] in Blood by Automated count"
* action[monitoring][2].title = "Renal function"
* action[monitoring][2].description = "Before each cycle: serum creatinine, used to estimate GFR for the carboplatin dose calculation (Calvert formula)."
* action[monitoring][2].input.codeFilter.code = $loinc#2160-0 "Creatinine [Mass/volume] in Serum or Plasma"

// ------------------------------------------------ dose modifications
* action[doseModification][0].title = "Peripheral neuropathy"
* action[doseModification][0].description = "Grade 2 neuropathy: reduce paclitaxel by 20%. Grade 3 or higher: discontinue paclitaxel."
* action[doseModification][0].reason = $sct#302226006 "Peripheral nerve disease"
* action[doseModification][1].title = "Febrile neutropenia"
* action[doseModification][1].description = "After an episode of febrile neutropenia: reduce carboplatin to AUC 4 and paclitaxel by 20%, or add G-CSF secondary prophylaxis."
* action[doseModification][1].reason = $sct#409089005 "Febrile neutropenia"
