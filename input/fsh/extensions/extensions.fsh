Extension: SactRegimenIndication
Id: sact-regimen-indication
Title: "SACT Regimen Indication"
Description: "Clinical context in which a SACT regimen is intended to be used: cancer condition, histology, stage, biomarker status, treatment intent, setting and line of therapy. Keeping these elements together preserves the link between an indication and its intent/setting when a regimen has several indications."
* insert SetFmmandStatusRule ( 1, draft )
* insert ExtensionContext(PlanDefinition)
* extension contains
    cancerCondition 1..1 MS and
    histology 0..* and
    stage 0..* and
    biomarker 0..* and
    intent 1..1 MS and
    setting 0..1 MS and
    lineOfTherapy 0..1 MS and
    eligibilityNotes 0..1
* extension[cancerCondition] ^short = "Cancer condition"
* extension[cancerCondition] ^definition = "Cancer type (primary site and/or morphology) for which the regimen is indicated."
* extension[cancerCondition].value[x] only CodeableConcept
* extension[cancerCondition].valueCodeableConcept from SactCancerConditionVs (example)
* extension[histology] ^short = "Histology"
* extension[histology] ^definition = "Histological type(s) for which the regimen is indicated."
* extension[histology].value[x] only CodeableConcept
* extension[stage] ^short = "Stage"
* extension[stage] ^definition = "Stage(s) or stage groups for which the regimen is indicated."
* extension[stage].value[x] only CodeableConcept
* extension[biomarker] ^short = "Biomarker"
* extension[biomarker] ^definition = "Biomarker status required for the regimen."
* extension[biomarker].value[x] only CodeableConcept
* extension[intent] ^short = "Intent"
* extension[intent] ^definition = "Intent of the treatment for this indication."
* extension[intent].value[x] only CodeableConcept
* extension[intent].valueCodeableConcept from SactTreatmentIntentVs (extensible)
* extension[setting] ^short = "Setting"
* extension[setting] ^definition = "Strategic setting of the regimen with respect to other treatment modalities."
* extension[setting].value[x] only CodeableConcept
* extension[setting].valueCodeableConcept from SactTreatmentSettingVs (extensible)
* extension[lineOfTherapy] ^short = "Line of therapy"
* extension[lineOfTherapy] ^definition = "Line of therapy in the advanced/metastatic setting (1 = first line)."
* extension[lineOfTherapy].value[x] only positiveInt
* extension[eligibilityNotes] ^short = "Eligibility notes"
* extension[eligibilityNotes] ^definition = "Additional eligibility criteria or contra-indications."
* extension[eligibilityNotes].value[x] only string

Extension: SactEmetogenicRisk
Id: sact-emetogenic-risk
Title: "SACT Regimen Emetogenic Risk"
Description: "Emetogenic risk of a SACT regimen, driving antiemetic prophylaxis."
* insert SetFmmandStatusRule ( 1, draft )
* insert ExtensionContext(PlanDefinition)
* value[x] only CodeableConcept
* valueCodeableConcept from SactEmetogenicRiskVs (required)
