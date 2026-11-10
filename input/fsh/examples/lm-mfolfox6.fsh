Instance: lm-mfolfox6
InstanceOf: SACTRegimen
Title: "mFOLFOX6 - logical model instance"
Description: "Example instance of the SACT Regimen logical model for the mFOLFOX6 regimen (adjuvant colon cancer). The same regimen is represented in FHIR by the PlanDefinition 'regimen-mfolfox6'. It is NOT clinical guidance."
Usage: #example

* identifier.system = "http://hl7.eu/fhir/phoenix/sact/sid/regimen"
* identifier.value = "CRC-ADJ-MFOLFOX6"
* name = "Modified FOLFOX6 (oxaliplatin, calcium folinate, fluorouracil) - adjuvant colon cancer"
* acronym = "mFOLFOX6"
* synonym = "Modified FOLFOX-6"
* version = "0.1.0"
* status = #draft
* therapyType = $sact-therapy#chemotherapy "Chemotherapy"
* indication.cancerCondition = $icd10#C18 "Malignant neoplasm of colon"
* indication.stage.text = "Stage III (UICC TNM 8th edition)"
* indication.intent = $sct#373808002 "Curative - procedure intent"
* indication.setting = $sct#373846009 "Adjuvant - intent"
* emetogenicRisk = $sact-emeto#moderate "Moderate"

* cycle.name = "Cycles 1-12"
* cycle.cycleLength = 14 'd' "days"
* cycle.numberOfCycles = 12

* cycle.component[0].sequence = 1
* cycle.component[0].role = $sact-role#anticancer-agent "Anticancer agent"
* cycle.component[0].agent = $atc#L01XA03 "oxaliplatin"
* cycle.component[0].dose = 85 'mg/m2' "mg/m2"
* cycle.component[0].route = $edqm#20045000 "Intravenous use"
* cycle.component[0].administrationDays = 1
* cycle.component[0].infusionDuration = 120 'min' "minutes"
* cycle.component[0].diluent = "glucose 5% 250-500 mL"

* cycle.component[1].sequence = 1
* cycle.component[1].role = $sact-role#modulating-agent "Modulating agent"
* cycle.component[1].agent = $atc#V03AF03 "calcium folinate"
* cycle.component[1].dose = 400 'mg/m2' "mg/m2"
* cycle.component[1].route = $edqm#20045000 "Intravenous use"
* cycle.component[1].administrationDays = 1
* cycle.component[1].infusionDuration = 120 'min' "minutes"
* cycle.component[1].timingRelation = "concurrently with oxaliplatin"

* cycle.component[2].sequence = 2
* cycle.component[2].role = $sact-role#anticancer-agent "Anticancer agent"
* cycle.component[2].agent = $atc#L01BC02 "fluorouracil"
* cycle.component[2].dose = 400 'mg/m2' "mg/m2"
* cycle.component[2].route = $edqm#20045000 "Intravenous use"
* cycle.component[2].administrationMethod.text = "Intravenous bolus"
* cycle.component[2].administrationDays = 1

* cycle.component[3].sequence = 3
* cycle.component[3].role = $sact-role#anticancer-agent "Anticancer agent"
* cycle.component[3].agent = $atc#L01BC02 "fluorouracil"
* cycle.component[3].dose = 2400 'mg/m2' "mg/m2"
* cycle.component[3].route = $edqm#20045000 "Intravenous use"
* cycle.component[3].administrationMethod.text = "Continuous intravenous infusion"
* cycle.component[3].administrationDays[0] = 1
* cycle.component[3].administrationDays[1] = 2
* cycle.component[3].infusionDuration = 46 'h' "hours"

* monitoring[0].test = $loinc#751-8 "Neutrophils [#/volume] in Blood by Automated count"
* monitoring[0].timing = "Within 72 hours before each cycle"
* monitoring[0].threshold = "Neutrophils >= 1.5 x10^9/L"
* monitoring[1].test = $loinc#777-3 "Platelets [#/volume] in Blood by Automated count"
* monitoring[1].timing = "Within 72 hours before each cycle"
* monitoring[1].threshold = "Platelets >= 75 x10^9/L"

* doseModification[0].trigger = $sct#302226006 "Peripheral nerve disease"
* doseModification[0].grade = "CTCAE grade 2 (persistent)"
* doseModification[0].affectedAgent = $atc#L01XA03 "oxaliplatin"
* doseModification[0].action = http://hl7.eu/fhir/phoenix/sact/CodeSystem/sact-dose-modification-action-cs#dose-reduction "Dose reduction"
* doseModification[0].description = "Reduce oxaliplatin to 65 mg/m2."
* doseModification[1].trigger = $sct#302226006 "Peripheral nerve disease"
* doseModification[1].grade = "CTCAE grade 3 or higher"
* doseModification[1].affectedAgent = $atc#L01XA03 "oxaliplatin"
* doseModification[1].action = http://hl7.eu/fhir/phoenix/sact/CodeSystem/sact-dose-modification-action-cs#discontinuation "Discontinuation"

* evidence.type = #citation
* evidence.citation = "ESMO Clinical Practice Guidelines - Localised colon cancer (illustrative reference)."
* lastReviewDate = "2026-11-10"
