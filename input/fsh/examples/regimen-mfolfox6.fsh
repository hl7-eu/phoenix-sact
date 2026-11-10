// Illustrative regimen definition. It is NOT clinical guidance.

Instance: regimen-mfolfox6
InstanceOf: PlanDefinitionSactRegimenEu
Title: "Regimen mFOLFOX6 (adjuvant colon cancer)"
Description: "Example SACT regimen definition: modified FOLFOX6 (oxaliplatin, calcium folinate, fluorouracil), 14-day cycles, 12 cycles, as adjuvant treatment of stage III colon cancer."
Usage: #example
* insert CatalogMetadata
* url = "http://hl7.eu/fhir/phoenix/sact/PlanDefinition/regimen-mfolfox6"
* identifier.system = "http://hl7.eu/fhir/phoenix/sact/sid/regimen"
* identifier.value = "CRC-ADJ-MFOLFOX6"
* version = "0.1.0"
* name = "RegimenMFOLFOX6Adjuvant"
* title = "Modified FOLFOX6 (oxaliplatin, calcium folinate, fluorouracil) - adjuvant colon cancer"
* subtitle = "mFOLFOX6"
* description = "Oxaliplatin and calcium folinate given concurrently on day 1, followed by a fluorouracil bolus and a 46-hour continuous fluorouracil infusion. Repeated every 14 days for 12 cycles (6 months)."
* topic = $sact-therapy#chemotherapy "Chemotherapy"
* useContext.code = $usage-context-type#focus
* useContext.valueCodeableConcept = $icd10#C18 "Malignant neoplasm of colon"
* lastReviewDate = "2026-11-10"
* usage = "Dose modifications: see the structured dose modification actions. Patients with known DPD deficiency must not receive fluorouracil at standard doses: DPD testing before the first cycle is recommended."
* relatedArtifact[0].type = #citation
* relatedArtifact[0].citation = "ESMO Clinical Practice Guidelines - Localised colon cancer (illustrative reference)."

* extension[indication].extension[cancerCondition].valueCodeableConcept = $icd10#C18 "Malignant neoplasm of colon"
* extension[indication].extension[stage].valueCodeableConcept.text = "Stage III (UICC TNM 8th edition)"
* extension[indication].extension[intent].valueCodeableConcept = $sct#373808002 "Curative - procedure intent"
* extension[indication].extension[setting].valueCodeableConcept = $sct#373846009 "Adjuvant - intent"
* extension[indication].extension[eligibilityNotes].valueString = "After complete (R0) resection of the primary tumour; treatment to start within 8 weeks of surgery."
* extension[emetogenicRisk].valueCodeableConcept = $sact-emeto#moderate "Moderate"

// ------------------------------------------------ cycle
* action[cycle].title = "Cycles 1-12"
* action[cycle].timingTiming.repeat.period = 14
* action[cycle].timingTiming.repeat.periodUnit = #d
* action[cycle].timingTiming.repeat.count = 12

* action[cycle].action[0].id = "ondansetron"
* action[cycle].action[0].title = "Ondansetron 8 mg IV"
* action[cycle].action[0].code = $sact-role#antiemetic "Antiemetic"
* action[cycle].action[0].timingRange.low = 1 'd' "day"
* action[cycle].action[0].timingRange.high = 1 'd' "day"
* action[cycle].action[0].relatedAction.actionId = "oxaliplatin"
* action[cycle].action[0].relatedAction.relationship = #before-start
* action[cycle].action[0].relatedAction.offsetDuration = 30 'min' "minutes"
* action[cycle].action[0].definitionCanonical = Canonical(admin-ondansetron-8)

* action[cycle].action[1].id = "dexamethasone"
* action[cycle].action[1].title = "Dexamethasone 8 mg IV"
* action[cycle].action[1].code = $sact-role#antiemetic "Antiemetic"
* action[cycle].action[1].timingRange.low = 1 'd' "day"
* action[cycle].action[1].timingRange.high = 1 'd' "day"
* action[cycle].action[1].relatedAction.actionId = "oxaliplatin"
* action[cycle].action[1].relatedAction.relationship = #before-start
* action[cycle].action[1].relatedAction.offsetDuration = 30 'min' "minutes"
* action[cycle].action[1].definitionCanonical = Canonical(admin-dexamethasone-8)

* action[cycle].action[2].id = "oxaliplatin"
* action[cycle].action[2].title = "Oxaliplatin 85 mg/m2 IV over 2 hours"
* action[cycle].action[2].code = $sact-role#anticancer-agent "Anticancer agent"
* action[cycle].action[2].timingRange.low = 1 'd' "day"
* action[cycle].action[2].timingRange.high = 1 'd' "day"
* action[cycle].action[2].definitionCanonical = Canonical(admin-oxaliplatin-85)

* action[cycle].action[3].id = "calcium-folinate"
* action[cycle].action[3].title = "Calcium folinate 400 mg/m2 IV over 2 hours"
* action[cycle].action[3].code = $sact-role#modulating-agent "Modulating agent"
* action[cycle].action[3].timingRange.low = 1 'd' "day"
* action[cycle].action[3].timingRange.high = 1 'd' "day"
* action[cycle].action[3].relatedAction.actionId = "oxaliplatin"
* action[cycle].action[3].relatedAction.relationship = #concurrent-with-start
* action[cycle].action[3].definitionCanonical = Canonical(admin-calcium-folinate-400)

* action[cycle].action[4].id = "fluorouracil-bolus"
* action[cycle].action[4].title = "Fluorouracil 400 mg/m2 IV bolus"
* action[cycle].action[4].code = $sact-role#anticancer-agent "Anticancer agent"
* action[cycle].action[4].timingRange.low = 1 'd' "day"
* action[cycle].action[4].timingRange.high = 1 'd' "day"
* action[cycle].action[4].relatedAction.actionId = "calcium-folinate"
* action[cycle].action[4].relatedAction.relationship = #after-end
* action[cycle].action[4].definitionCanonical = Canonical(admin-fluorouracil-bolus-400)

* action[cycle].action[5].id = "fluorouracil-infusion"
* action[cycle].action[5].title = "Fluorouracil 2400 mg/m2 continuous IV infusion over 46 hours"
* action[cycle].action[5].code = $sact-role#anticancer-agent "Anticancer agent"
* action[cycle].action[5].timingRange.low = 1 'd' "day"
* action[cycle].action[5].timingRange.high = 2 'd' "day"
* action[cycle].action[5].relatedAction.actionId = "fluorouracil-bolus"
* action[cycle].action[5].relatedAction.relationship = #after-end
* action[cycle].action[5].definitionCanonical = Canonical(admin-fluorouracil-ci-2400)

// ------------------------------------------------ monitoring
* action[monitoring][0].title = "Neutrophil count"
* action[monitoring][0].description = "Within 72 hours before each cycle: neutrophils >= 1.5 x10^9/L to proceed."
* action[monitoring][0].input.codeFilter.code = $loinc#751-8 "Neutrophils [#/volume] in Blood by Automated count"
* action[monitoring][1].title = "Platelet count"
* action[monitoring][1].description = "Within 72 hours before each cycle: platelets >= 75 x10^9/L to proceed."
* action[monitoring][1].input.codeFilter.code = $loinc#777-3 "Platelets [#/volume] in Blood by Automated count"
* action[monitoring][2].title = "Total bilirubin"
* action[monitoring][2].description = "Before each cycle."
* action[monitoring][2].input.codeFilter.code = $loinc#1975-2 "Bilirubin.total [Mass/volume] in Serum or Plasma"

// ------------------------------------------------ dose modifications
* action[doseModification][0].title = "Peripheral neuropathy"
* action[doseModification][0].description = "Persistent grade 2 neuropathy: reduce oxaliplatin to 65 mg/m2. Grade 3 or higher: discontinue oxaliplatin and continue fluorouracil and calcium folinate."
* action[doseModification][0].reason = $sct#302226006 "Peripheral nerve disease"
* action[doseModification][1].title = "Neutropenia"
* action[doseModification][1].description = "Neutrophils < 1.5 x10^9/L on day 1: delay the cycle until recovery. After febrile neutropenia or grade 4 neutropenia: reduce oxaliplatin to 65 mg/m2 and fluorouracil by 20%."
* action[doseModification][1].reason[0] = $sct#165517008 "Neutropenia"
* action[doseModification][1].reason[1] = $sct#409089005 "Febrile neutropenia"
* action[doseModification][2].title = "Diarrhoea"
* action[doseModification][2].description = "Grade 3 or higher diarrhoea: delay until resolution to grade 1 or lower, then reduce fluorouracil by 20%."
* action[doseModification][2].reason = $sct#62315008 "Diarrhea"
