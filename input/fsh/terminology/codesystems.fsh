CodeSystem: SactComponentRoleCs
Id: sact-component-role-cs
Title: "SACT Regimen Component Role Codes"
Description: "Role played by a medicinal component within a SACT regimen."
* ^experimental = false
* ^caseSensitive = true
* insert SetFmmandStatusRule ( 1, draft )
* #anticancer-agent "Anticancer agent" "Agent administered for its anticancer effect (cytotoxic, targeted, immunotherapy, endocrine or other)."
* #modulating-agent "Modulating agent" "Agent administered to modulate the activity of an anticancer agent (e.g. calcium folinate with fluorouracil)."
* #rescue-agent "Rescue agent" "Agent administered to counteract the toxicity of an anticancer agent (e.g. calcium folinate rescue after high-dose methotrexate, mesna with ifosfamide)."
* #premedication "Premedication" "Agent administered before an anticancer agent to prevent hypersensitivity or infusion reactions."
* #antiemetic "Antiemetic" "Agent administered to prevent or treat chemotherapy-induced nausea and vomiting."
* #hydration "Hydration" "Fluids administered to prevent toxicity (e.g. pre- and post-hydration with cisplatin)."
* #growth-factor "Growth factor" "Haematopoietic growth factor (e.g. G-CSF) administered as primary or secondary prophylaxis."
* #other-supportive "Other supportive medication" "Other supportive medication prescribed as part of the regimen."

CodeSystem: SactActionCategoryCs
Id: sact-action-category-cs
Title: "SACT Regimen Action Category Codes"
Description: "Category of the top-level actions of a SACT regimen PlanDefinition."
* ^experimental = false
* ^caseSensitive = true
* insert SetFmmandStatusRule ( 1, draft )
* #cycle "Cycle" "Definition of a cycle (or a group of identical cycles) of the regimen."
* #monitoring "Monitoring" "Monitoring requirement to be fulfilled before or during treatment."
* #dose-modification "Dose modification" "Rule describing how the regimen is modified in case of toxicity."

CodeSystem: SactTherapyTypeCs
Id: sact-therapy-type-cs
Title: "SACT Therapy Type Codes"
Description: "Category of systemic anti-cancer therapy."
* ^experimental = false
* ^caseSensitive = true
* insert SetFmmandStatusRule ( 1, draft )
* #chemotherapy "Chemotherapy" "Cytotoxic chemotherapy."
* #immunotherapy "Immunotherapy" "Immunotherapy, including immune checkpoint inhibitors."
* #targeted-therapy "Targeted therapy" "Therapy targeting specific molecular alterations (e.g. tyrosine kinase inhibitors, monoclonal antibodies)."
* #endocrine-therapy "Endocrine therapy" "Hormonal (endocrine) therapy."
* #antibody-drug-conjugate "Antibody-drug conjugate" "Therapy based on antibody-drug conjugates."
* #other "Other" "Other systemic anti-cancer therapy."

CodeSystem: SactEmetogenicRiskCs
Id: sact-emetogenic-risk-cs
Title: "SACT Emetogenic Risk Codes"
Description: "Emetogenic risk levels of anticancer agents and regimens, following the MASCC/ESMO antiemetic guideline categories."
* ^experimental = false
* ^caseSensitive = true
* insert SetFmmandStatusRule ( 1, draft )
* #high "High" "High emetogenic risk (>90% of patients experience emesis without prophylaxis)."
* #moderate "Moderate" "Moderate emetogenic risk (30-90%)."
* #low "Low" "Low emetogenic risk (10-30%)."
* #minimal "Minimal" "Minimal emetogenic risk (<10%)."

CodeSystem: SactDoseModificationActionCs
Id: sact-dose-modification-action-cs
Title: "SACT Dose Modification Action Codes"
Description: "Type of modification applied to a SACT regimen in case of toxicity or organ dysfunction."
* ^experimental = false
* ^caseSensitive = true
* insert SetFmmandStatusRule ( 1, draft )
* #dose-reduction "Dose reduction" "The dose of one or more agents is reduced."
* #dose-delay "Dose delay" "The start of the next cycle or administration is postponed."
* #dose-omission "Dose omission" "One or more administrations are omitted."
* #discontinuation "Discontinuation" "One or more agents, or the whole regimen, are permanently discontinued."
* #substitution "Substitution" "An agent is replaced by another one."
