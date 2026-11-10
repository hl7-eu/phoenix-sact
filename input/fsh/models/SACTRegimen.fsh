Logical: SACTRegimen
Id: SACTRegimen
Title: "SACT Regimen"
Description: "Logical model describing a Systemic Anti-Cancer Therapy (SACT) regimen definition as published in a regimen catalog: what the regimen is used for, which agents it combines, how they are dosed and scheduled across cycles, which supportive care is expected, which monitoring is required before treatment and how doses are modified in case of toxicity. It describes a definition (a 'template'), not the treatment of a specific patient."
Characteristics: #can-be-target
* insert SetFmmandStatusRule ( 1, draft )

* obeys sact-1

* identifier 0..* Identifier "Identifier" "Business identifier(s) of the regimen in the catalog (e.g. a national or catalog-specific regimen code)."
* name 1..1 string "Name" "Full human-readable name of the regimen (e.g. 'Modified FOLFOX6 (oxaliplatin, calcium folinate, fluorouracil)')."
* acronym 0..1 string "Acronym" "Commonly used short name or acronym of the regimen (e.g. 'mFOLFOX6')."
* acronym ^comment = "Regimen acronyms are frequently ambiguous across countries and institutions; they SHALL NOT be used as the sole identifier of a regimen."
* synonym 0..* string "Synonym" "Other names under which the regimen is known."
* version 0..1 string "Version" "Business version of this regimen definition."
* status 1..1 code "Status" "Publication status of the regimen definition in the catalog."
* status ^comment = "Choice: draft | active | retired"
* description 0..1 markdown "Description" "Free-text description of the regimen."
* therapyType 1..* CodeableConcept "Therapy type" "Category(ies) of systemic therapy combined in the regimen (e.g. chemotherapy, immunotherapy, targeted therapy, endocrine therapy)."
* therapyType from SactTherapyTypeVs (extensible)
* indication 1..* BackboneElement "Indication" "Clinical context(s) in which the regimen is intended to be used."
  * cancerCondition 1..1 CodeableConcept "Cancer condition" "Cancer type (primary site and/or morphology) for which the regimen is indicated."
  * cancerCondition from SactCancerConditionVs (example)
  * histology 0..* CodeableConcept "Histology" "Histological type(s) for which the regimen is indicated, when relevant."
  * stage 0..* CodeableConcept "Stage" "Stage(s) or stage groups for which the regimen is indicated (e.g. TNM stage III)."
  * biomarker 0..* CodeableConcept "Biomarker" "Biomarker status required for the regimen (e.g. HER2 positive, RAS wild-type)."
  * intent 1..1 CodeableConcept "Intent" "Intent of the treatment for this indication."
  * intent from SactTreatmentIntentVs (extensible)
  * intent ^comment = "Choice: Curative | Palliative"
  * setting 0..1 CodeableConcept "Setting" "Strategic setting of the regimen with respect to other treatment modalities."
  * setting from SactTreatmentSettingVs (extensible)
  * setting ^comment = "Choice: Neoadjuvant | Adjuvant | Concomitant | Alone"
  * lineOfTherapy 0..1 positiveInt "Line of therapy" "Line of therapy in the metastatic/advanced setting (1 = first line)."
  * eligibilityNotes 0..1 string "Eligibility notes" "Additional eligibility criteria or contra-indications expressed as free text."
* emetogenicRisk 0..1 CodeableConcept "Emetogenic risk" "Emetogenic risk of the regimen, driving antiemetic prophylaxis."
* emetogenicRisk from SactEmetogenicRiskVs (required)
* cycle 1..* BackboneElement "Cycle" "Definition of a cycle (or a group of identical cycles) of the regimen."
* cycle ^comment = "Most regimens are described by a single cycle definition repeated a number of times. Separate cycle definitions are needed when cycles differ (e.g. a loading dose in cycle 1 or a maintenance phase)."
  * name 0..1 string "Name" "Name of the cycle definition (e.g. 'Cycles 1-12', 'Loading cycle', 'Maintenance')."
  * cycleLength 1..1 Duration "Cycle length" "Length of one cycle (e.g. 14 days, 21 days)."
  * numberOfCycles 0..1 positiveInt "Number of cycles" "Planned number of cycles of this definition."
  * maxNumberOfCycles 0..1 positiveInt "Maximum number of cycles" "Maximum number of cycles of this definition, when a range is allowed."
  * untilProgression 0..1 boolean "Until progression" "Indicates that cycles are repeated until disease progression or unacceptable toxicity."
  * component 1..* BackboneElement "Component" "Medicinal agent administered within the cycle, including anticancer agents and supportive medications."
    * sequence 0..1 positiveInt "Sequence" "Order of administration of the component within the administration day."
    * role 1..1 CodeableConcept "Role" "Role of the component in the regimen (anticancer agent, modulating agent, premedication, antiemetic, hydration, growth factor, ...)."
    * role from SactComponentRoleVs (extensible)
    * agent 1..1 CodeableConcept "Agent" "Active substance administered."
    * agent from SactAgentVs (preferred)
    * dose 1..1 Quantity "Dose" "Dose per administration. The unit expresses the dose calculation basis (e.g. mg/m2 for body surface area, mg/kg for body weight, mg/mL.min for AUC-based dosing, mg for flat dosing)."
    * dose from SactDoseUnitVs (extensible)
    * maxDose 0..1 Quantity "Maximum dose" "Maximum (capped) dose per administration, when applicable (e.g. vincristine capped at 2 mg)."
    * route 1..1 CodeableConcept "Route" "Route of administration."
    * route from SactRouteVs (preferred)
    * administrationMethod 0..1 CodeableConcept "Administration method" "Method of administration (e.g. bolus, intermittent infusion, continuous infusion)."
    * administrationDays 1..* positiveInt "Administration days" "Day(s) of the cycle on which the component is administered (day 1 = first day of the cycle)."
    * infusionDuration 0..1 Duration "Infusion duration" "Duration of the administration (e.g. 120 minutes, 46 hours)."
    * timingRelation 0..1 string "Timing relation" "Timing relative to other components (e.g. 'after paclitaxel', '30 minutes before oxaliplatin', 'concurrently with oxaliplatin')."
    * diluent 0..1 string "Diluent" "Diluent and volume, when relevant (e.g. 'glucose 5% 500 mL')."
    * optional 0..1 boolean "Optional" "Indicates that the component is optional or conditional (e.g. given only if clinically indicated)."
    * instructions 0..1 string "Instructions" "Additional administration instructions."
* monitoring 0..* BackboneElement "Monitoring" "Monitoring requirement (e.g. laboratory test) to be fulfilled before or during treatment."
  * test 1..1 CodeableConcept "Test" "Test or assessment to be performed (e.g. absolute neutrophil count)."
  * timing 0..1 string "Timing" "When the test is to be performed (e.g. 'within 72 hours before each cycle')."
  * threshold 0..1 string "Threshold" "Threshold or condition required to proceed with treatment (e.g. 'neutrophils >= 1.5 x10^9/L')."
* doseModification 0..* BackboneElement "Dose modification" "Rule describing how the regimen is modified in case of toxicity or organ dysfunction."
  * trigger 1..1 CodeableConcept "Trigger" "Toxicity or condition triggering the modification (e.g. neutropenia, peripheral neuropathy)."
  * grade 0..1 string "Grade" "Severity grade of the trigger (e.g. CTCAE grade 3)."
  * affectedAgent 0..* CodeableConcept "Affected agent" "Agent(s) whose dose is modified. If absent, the rule applies to the whole regimen."
  * action 1..1 CodeableConcept "Action" "Type of modification."
  * action from SactDoseModificationActionVs (extensible)
  * action ^comment = "Choice: Dose reduction | Dose delay | Dose omission | Discontinuation | Substitution"
  * reductionPercentage 0..1 decimal "Reduction percentage" "Percentage of dose reduction, when the action is a dose reduction."
  * description 0..1 string "Description" "Free-text description of the rule."
* evidence 0..* RelatedArtifact "Evidence" "Bibliographic references, guidelines or summaries of product characteristics supporting the regimen."
* jurisdiction 0..* CodeableConcept "Jurisdiction" "Jurisdiction(s) where the regimen definition is intended to be used."
* lastReviewDate 0..1 date "Last review date" "Date of the last clinical review of the regimen definition."
* author 0..* string "Author" "Organisation or individual responsible for authoring the regimen definition."
* notes 0..1 markdown "Notes" "Additional notes and cautions."

Invariant: sact-1
Description: "A cycle shall not define both a planned number of cycles and 'until progression' set to true unless a maximum number of cycles is also given."
Severity: #warning
Expression: "cycle.all((untilProgression.exists() and untilProgression = true and numberOfCycles.exists()) implies maxNumberOfCycles.exists())"
