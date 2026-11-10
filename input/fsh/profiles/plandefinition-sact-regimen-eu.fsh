//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile: PlanDefinitionSactRegimenEu
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Parent: PlanDefinition
Id: plandefinition-sact-regimen-eu
Title: "PlanDefinition: SACT Regimen"
Description: "This profile defines how to represent a SACT regimen definition of a regimen catalog as a FHIR PlanDefinition. Top-level actions describe the cycles of the regimen, the monitoring requirements and the dose modification rules; actions nested in a cycle describe the administration of each component, whose dosing is defined by an ActivityDefinition conforming to the 'ActivityDefinition: SACT Administration' profile."
* insert SetFmmandStatusRule ( 1, draft )

* . ^short = "SACT regimen definition"
* extension contains
    SactRegimenIndication named indication 1..* MS and
    SactEmetogenicRisk named emetogenicRisk 0..1 MS
* extension[indication] ^short = "Indication(s) of the regimen"
* extension[emetogenicRisk] ^short = "Emetogenic risk of the regimen"

* url 1..1 MS
* identifier MS
* identifier ^short = "Business identifier(s) of the regimen in the catalog"
* version MS
* name 1..1 MS
* title 1..1 MS
* title ^short = "Full name of the regimen"
* subtitle MS
* subtitle ^short = "Regimen acronym (e.g. mFOLFOX6)"
* type 1..1 MS
* type = $plan-definition-type#clinical-protocol
* status MS
* date MS
* publisher MS
* description MS
* useContext MS
* useContext ^comment = "It is recommended to replicate here, with code 'focus', the cancer conditions of the indication extension(s), so that regimens can be searched by condition using the standard 'context' search parameter."
* jurisdiction MS
* usage MS
* usage ^comment = "May be used to describe dose modification rules and other usage notes in narrative form, in addition to the structured dose modification actions."
* topic 1..* MS
* topic ^short = "Therapy type(s) combined in the regimen"
* topic from SactTherapyTypeVs (extensible)
* lastReviewDate MS
* author MS
* relatedArtifact MS
* relatedArtifact ^short = "Evidence: guidelines, publications, SmPCs"

// ------------------------------------------------------------------ actions
* action 1..* MS
* action ^slicing.discriminator.type = #pattern
* action ^slicing.discriminator.path = "code"
* action ^slicing.rules = #open
* action ^short = "Cycles, monitoring requirements and dose modification rules"
* action.code 1..1 MS
* action.code ^short = "Category of the action (cycle | monitoring | dose-modification)"
* action contains
    cycle 1..* MS and
    monitoring 0..* MS and
    doseModification 0..* MS

// ---- cycle
* action[cycle] ^short = "Cycle definition"
* action[cycle] ^definition = "Definition of a cycle, or of a group of identical cycles, of the regimen."
* action[cycle].code = $sact-action#cycle
* action[cycle].title MS
* action[cycle].description MS
* action[cycle].description ^comment = "Use to describe conditions such as 'repeat until disease progression or unacceptable toxicity'."
* action[cycle].timing[x] 1..1 MS
* action[cycle].timing[x] only Timing
* action[cycle].timingTiming.repeat 1..1 MS
* action[cycle].timingTiming.repeat.period 1..1 MS
* action[cycle].timingTiming.repeat.period ^short = "Cycle length"
* action[cycle].timingTiming.repeat.periodUnit 1..1 MS
* action[cycle].timingTiming.repeat.count MS
* action[cycle].timingTiming.repeat.count ^short = "Planned number of cycles"
* action[cycle].timingTiming.repeat.countMax MS
* action[cycle].timingTiming.repeat.countMax ^short = "Maximum number of cycles"
* action[cycle].relatedAction MS
* action[cycle].relatedAction ^comment = "Used to sequence cycle definitions, e.g. a maintenance phase starting after the end of the induction cycles."

// ---- component administration (nested in cycle)
* action[cycle].action 1..* MS
* action[cycle].action ^short = "Administration of a regimen component"
* action[cycle].action ^definition = "Administration of a medicinal component of the regimen within the cycle. One action is defined for each administration day range."
* action[cycle].action.id 1..1 MS
* action[cycle].action.title MS
* action[cycle].action.code 1..1 MS
* action[cycle].action.code ^short = "Role of the component in the regimen"
* action[cycle].action.code from SactComponentRoleVs (extensible)
* action[cycle].action.timing[x] 1..1 MS
* action[cycle].action.timing[x] only Range
* action[cycle].action.timing[x] ^short = "Administration day(s) within the cycle (day 1 = first day)"
* action[cycle].action.timingRange.low 1..1 MS
* action[cycle].action.timingRange.low.system = $ucum
* action[cycle].action.timingRange.low.code = #d
* action[cycle].action.timingRange.high MS
* action[cycle].action.timingRange.high.system = $ucum
* action[cycle].action.timingRange.high.code = #d
* action[cycle].action.relatedAction MS
* action[cycle].action.relatedAction ^short = "Timing relation with other components (e.g. after-end of paclitaxel)"
* action[cycle].action.requiredBehavior MS
* action[cycle].action.requiredBehavior ^comment = "Use 'could' for optional or conditional components (e.g. growth factors given if clinically indicated)."
* action[cycle].action.definition[x] 1..1 MS
* action[cycle].action.definition[x] only Canonical(ActivityDefinitionSactAdministrationEu)
* action[cycle].action.definition[x] ^short = "Dosing definition of the component"

// ---- monitoring
* action[monitoring] ^short = "Monitoring requirement"
* action[monitoring] ^definition = "Monitoring requirement (e.g. laboratory test) to be fulfilled before or during treatment."
* action[monitoring].code = $sact-action#monitoring
* action[monitoring].title MS
* action[monitoring].description MS
* action[monitoring].description ^short = "Timing and threshold (e.g. 'Before each cycle: neutrophils >= 1.5 x10^9/L')"
* action[monitoring].input 1..* MS
* action[monitoring].input ^short = "Test to be performed"
* action[monitoring].input.type = #Observation
* action[monitoring].input.codeFilter 1..* MS
* action[monitoring].input.codeFilter.path 1..1 MS
* action[monitoring].input.codeFilter.path = "code"
* action[monitoring].input.codeFilter.code 1..* MS

// ---- dose modification
* action[doseModification] ^short = "Dose modification rule"
* action[doseModification] ^definition = "Rule describing how the regimen is modified in case of toxicity or organ dysfunction."
* action[doseModification].code = $sact-action#dose-modification
* action[doseModification].title MS
* action[doseModification].description 1..1 MS
* action[doseModification].description ^short = "Description of the rule (grade, affected agents, modification)"
* action[doseModification].reason 1..* MS
* action[doseModification].reason ^short = "Toxicity or condition triggering the modification"
