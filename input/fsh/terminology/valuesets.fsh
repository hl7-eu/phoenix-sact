ValueSet: SactComponentRoleVs
Id: sact-component-role-vs
Title: "SACT Regimen Component Role"
Description: "Roles of a medicinal component within a SACT regimen."
* ^experimental = false
* insert SetFmmandStatusRule ( 1, draft )
* include codes from system SactComponentRoleCs

ValueSet: SactActionCategoryVs
Id: sact-action-category-vs
Title: "SACT Regimen Action Category"
Description: "Categories of the top-level actions of a SACT regimen PlanDefinition."
* ^experimental = false
* insert SetFmmandStatusRule ( 1, draft )
* include codes from system SactActionCategoryCs

ValueSet: SactTherapyTypeVs
Id: sact-therapy-type-vs
Title: "SACT Therapy Type"
Description: "Categories of systemic anti-cancer therapy."
* ^experimental = false
* insert SetFmmandStatusRule ( 1, draft )
* include codes from system SactTherapyTypeCs

ValueSet: SactEmetogenicRiskVs
Id: sact-emetogenic-risk-vs
Title: "SACT Emetogenic Risk"
Description: "Emetogenic risk levels (MASCC/ESMO)."
* ^experimental = false
* insert SetFmmandStatusRule ( 1, draft )
* include codes from system SactEmetogenicRiskCs

ValueSet: SactDoseModificationActionVs
Id: sact-dose-modification-action-vs
Title: "SACT Dose Modification Action"
Description: "Types of modification applied to a SACT regimen."
* ^experimental = false
* insert SetFmmandStatusRule ( 1, draft )
* include codes from system SactDoseModificationActionCs

ValueSet: SactTreatmentIntentVs
Id: sact-treatment-intent-vs
Title: "SACT Treatment Intent"
Description: "Intent of a SACT regimen for a given indication."
* insert SNOMEDCopyrightForVS
* insert SetFmmandStatusRule ( 1, draft )
* $sct#373808002 "Curative - procedure intent"
* $sct#363676003 "Palliative intent"

ValueSet: SactTreatmentSettingVs
Id: sact-treatment-setting-vs
Title: "SACT Treatment Setting"
Description: "Strategic setting of a SACT regimen with respect to other treatment modalities (e.g. surgery, radiotherapy)."
* insert SNOMEDCopyrightForVS
* insert SetFmmandStatusRule ( 1, draft )
* $sct#373847000 "Neoadjuvant intent"
* $sct#373846009 "Adjuvant - intent"
* $sct#703423002 "Combined chemotherapy and radiation therapy"

ValueSet: SactAgentVs
Id: sact-agent-vs
Title: "SACT Agent"
Description: "Active substances that can be used as components of a SACT regimen, expressed either with the WHO ATC classification (substance level) or with SNOMED CT substances."
* ^experimental = false
* ^copyright = "This value set includes content from the WHO ATC classification (copyright © WHO Collaborating Centre for Drug Statistics Methodology) and from SNOMED CT (copyright © IHTSDO)."
* insert SetFmmandStatusRule ( 1, draft )
* include codes from system $atc
* include codes from system $sct where concept is-a #105590001 "Substance"

ValueSet: SactRouteVs
Id: sact-route-vs
Title: "SACT Route of Administration"
Description: "Routes of administration commonly used for SACT regimen components (EDQM Standard Terms)."
* insert EDQMCopyrightForVS
* insert SetFmmandStatusRule ( 1, draft )
* $edqm#20045000 "Intravenous use"
* $edqm#20053000 "Oral use"
* $edqm#20066000 "Subcutaneous use"
* $edqm#20035000 "Intramuscular use"
* $edqm#20042000 "Intrathecal use"

ValueSet: SactDoseUnitVs
Id: sact-dose-unit-vs
Title: "SACT Dose Unit"
Description: "UCUM units used to express SACT doses. The unit expresses the dose calculation basis: body surface area (per m2), body weight (per kg), target AUC (mg/mL.min) or flat dose."
* ^experimental = false
* insert SetFmmandStatusRule ( 1, draft )
* $ucum#mg/m2 "milligram per square meter"
* $ucum#ug/m2 "microgram per square meter"
* $ucum#[iU]/m2 "international unit per square meter"
* $ucum#mg/kg "milligram per kilogram"
* $ucum#ug/kg "microgram per kilogram"
* $ucum#mg/mL.min "milligram per milliliter minute (AUC)"
* $ucum#mg "milligram"
* $ucum#ug "microgram"
* $ucum#g "gram"
* $ucum#[iU] "international unit"
* $ucum#mL "milliliter"

ValueSet: SactCancerConditionVs
Id: sact-cancer-condition-vs
Title: "SACT Cancer Condition"
Description: "Cancer conditions for which a SACT regimen can be indicated: ICD-10 codes (expected to be taken from chapter II - Neoplasms) or SNOMED CT malignant neoplastic disease concepts."
* insert SNOMEDCopyrightForVS
* insert SetFmmandStatusRule ( 1, draft )
* include codes from system $icd10
* include codes from system $sct where concept is-a #363346000 "Malignant neoplastic disease"
