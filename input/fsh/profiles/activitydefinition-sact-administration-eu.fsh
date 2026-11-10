//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile: ActivityDefinitionSactAdministrationEu
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Parent: ActivityDefinition
Id: activitydefinition-sact-administration-eu
Title: "ActivityDefinition: SACT Administration"
Description: "This profile defines how to represent the dosing definition of a component of a SACT regimen (anticancer agent or supportive medication): the active substance, the dose and its calculation basis, the route, the administration method and the infusion duration. When applied for a specific patient, it produces a MedicationRequest."
* insert SetFmmandStatusRule ( 1, draft )

* . ^short = "Dosing definition of a SACT regimen component"
* url 1..1 MS
* identifier MS
* version MS
* name 1..1 MS
* title 1..1 MS
* status MS
* description MS
* kind 1..1 MS
* kind = #MedicationRequest
* intent MS
* product[x] 1..1 MS
* product[x] only CodeableConcept
* product[x] ^short = "Active substance administered"
* productCodeableConcept from SactAgentVs (preferred)
* dosage 1..1 MS
* dosage.text MS
* dosage.text ^short = "Human-readable dosing (e.g. 'Oxaliplatin 85 mg/m2 IV infusion over 2 hours in glucose 5% 500 mL')"
* dosage.additionalInstruction MS
* dosage.timing MS
* dosage.timing.repeat.duration MS
* dosage.timing.repeat.duration ^short = "Infusion duration"
* dosage.timing.repeat.durationUnit MS
* dosage.route 1..1 MS
* dosage.route from SactRouteVs (preferred)
* dosage.method MS
* dosage.method ^short = "Administration method (e.g. bolus, continuous infusion)"
* dosage.doseAndRate 1..1 MS
* dosage.doseAndRate.dose[x] 1..1 MS
* dosage.doseAndRate.dose[x] only SimpleQuantity
* dosage.doseAndRate.dose[x] ^short = "Dose per administration; the unit expresses the calculation basis (mg/m2, mg/kg, mg/mL.min, mg)"
* dosage.doseAndRate.dose[x] from SactDoseUnitVs (extensible)
* dosage.doseAndRate.rate[x] MS
* dosage.maxDosePerAdministration MS
* dosage.maxDosePerAdministration ^short = "Capped dose per administration"
