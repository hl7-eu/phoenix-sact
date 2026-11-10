// Illustrative dosing definitions. They are NOT clinical guidance.

RuleSet: AdminDefinition(id, name, title)
* insert CatalogMetadata
* url = "http://hl7.eu/fhir/phoenix/sact/ActivityDefinition/{id}"
* version = "0.1.0"
* name = "{name}"
* title = "{title}"
* kind = #MedicationRequest
* intent = #proposal

//-------------------------------------------------------------------------- anticancer agents
Instance: admin-oxaliplatin-85
InstanceOf: ActivityDefinitionSactAdministrationEu
Title: "Oxaliplatin 85 mg/m2 IV over 2 hours"
Description: "Example dosing definition: oxaliplatin 85 mg/m2 intravenous infusion over 2 hours."
Usage: #example
* insert AdminDefinition(admin-oxaliplatin-85, AdminOxaliplatin85, Oxaliplatin 85 mg/m2 IV over 2 hours)
* productCodeableConcept = $atc#L01XA03 "oxaliplatin"
* dosage.text = "Oxaliplatin 85 mg/m2 IV infusion over 2 hours in glucose 5% 250-500 mL"
* dosage.route = $edqm#20045000 "Intravenous use"
* dosage.method.text = "Intermittent intravenous infusion"
* dosage.timing.repeat.duration = 120
* dosage.timing.repeat.durationUnit = #min
* dosage.doseAndRate.doseQuantity = 85 'mg/m2' "mg/m2"

Instance: admin-calcium-folinate-400
InstanceOf: ActivityDefinitionSactAdministrationEu
Title: "Calcium folinate 400 mg/m2 IV over 2 hours"
Description: "Example dosing definition: calcium folinate (leucovorin) 400 mg/m2 intravenous infusion over 2 hours."
Usage: #example
* insert AdminDefinition(admin-calcium-folinate-400, AdminCalciumFolinate400, Calcium folinate 400 mg/m2 IV over 2 hours)
* productCodeableConcept = $atc#V03AF03 "calcium folinate"
* dosage.text = "Calcium folinate 400 mg/m2 IV infusion over 2 hours, concurrently with oxaliplatin"
* dosage.route = $edqm#20045000 "Intravenous use"
* dosage.method.text = "Intermittent intravenous infusion"
* dosage.timing.repeat.duration = 120
* dosage.timing.repeat.durationUnit = #min
* dosage.doseAndRate.doseQuantity = 400 'mg/m2' "mg/m2"

Instance: admin-fluorouracil-bolus-400
InstanceOf: ActivityDefinitionSactAdministrationEu
Title: "Fluorouracil 400 mg/m2 IV bolus"
Description: "Example dosing definition: fluorouracil 400 mg/m2 intravenous bolus."
Usage: #example
* insert AdminDefinition(admin-fluorouracil-bolus-400, AdminFluorouracilBolus400, Fluorouracil 400 mg/m2 IV bolus)
* productCodeableConcept = $atc#L01BC02 "fluorouracil"
* dosage.text = "Fluorouracil 400 mg/m2 IV bolus"
* dosage.route = $edqm#20045000 "Intravenous use"
* dosage.method.text = "Intravenous bolus"
* dosage.doseAndRate.doseQuantity = 400 'mg/m2' "mg/m2"

Instance: admin-fluorouracil-ci-2400
InstanceOf: ActivityDefinitionSactAdministrationEu
Title: "Fluorouracil 2400 mg/m2 continuous IV infusion over 46 hours"
Description: "Example dosing definition: fluorouracil 2400 mg/m2 continuous intravenous infusion over 46 hours."
Usage: #example
* insert AdminDefinition(admin-fluorouracil-ci-2400, AdminFluorouracilCi2400, Fluorouracil 2400 mg/m2 continuous IV infusion over 46 hours)
* productCodeableConcept = $atc#L01BC02 "fluorouracil"
* dosage.text = "Fluorouracil 2400 mg/m2 continuous IV infusion over 46 hours via ambulatory pump"
* dosage.route = $edqm#20045000 "Intravenous use"
* dosage.method.text = "Continuous intravenous infusion"
* dosage.timing.repeat.duration = 46
* dosage.timing.repeat.durationUnit = #h
* dosage.doseAndRate.doseQuantity = 2400 'mg/m2' "mg/m2"

Instance: admin-paclitaxel-175
InstanceOf: ActivityDefinitionSactAdministrationEu
Title: "Paclitaxel 175 mg/m2 IV over 3 hours"
Description: "Example dosing definition: paclitaxel 175 mg/m2 intravenous infusion over 3 hours."
Usage: #example
* insert AdminDefinition(admin-paclitaxel-175, AdminPaclitaxel175, Paclitaxel 175 mg/m2 IV over 3 hours)
* productCodeableConcept = $atc#L01CD01 "paclitaxel"
* dosage.text = "Paclitaxel 175 mg/m2 IV infusion over 3 hours in sodium chloride 0.9% 500 mL, using a 0.22 micron in-line filter"
* dosage.route = $edqm#20045000 "Intravenous use"
* dosage.method.text = "Intermittent intravenous infusion"
* dosage.timing.repeat.duration = 3
* dosage.timing.repeat.durationUnit = #h
* dosage.doseAndRate.doseQuantity = 175 'mg/m2' "mg/m2"

Instance: admin-carboplatin-auc5
InstanceOf: ActivityDefinitionSactAdministrationEu
Title: "Carboplatin AUC 5 IV over 1 hour"
Description: "Example dosing definition: carboplatin dosed to a target area under the curve (AUC) of 5 mg/mL.min (Calvert formula), intravenous infusion over 1 hour."
Usage: #example
* insert AdminDefinition(admin-carboplatin-auc5, AdminCarboplatinAuc5, Carboplatin AUC 5 IV over 1 hour)
* productCodeableConcept = $atc#L01XA02 "carboplatin"
* dosage.text = "Carboplatin AUC 5 (dose in mg = 5 x (GFR + 25), Calvert formula) IV infusion over 1 hour in glucose 5% 500 mL"
* dosage.route = $edqm#20045000 "Intravenous use"
* dosage.method.text = "Intermittent intravenous infusion"
* dosage.timing.repeat.duration = 60
* dosage.timing.repeat.durationUnit = #min
* dosage.doseAndRate.doseQuantity = 5 'mg/mL.min' "mg/mL.min (AUC)"

//-------------------------------------------------------------------------- supportive medications
Instance: admin-ondansetron-8
InstanceOf: ActivityDefinitionSactAdministrationEu
Title: "Ondansetron 8 mg IV"
Description: "Example dosing definition: ondansetron 8 mg intravenous, as antiemetic prophylaxis."
Usage: #example
* insert AdminDefinition(admin-ondansetron-8, AdminOndansetron8, Ondansetron 8 mg IV)
* productCodeableConcept = $atc#A04AA01 "ondansetron"
* dosage.text = "Ondansetron 8 mg IV over 15 minutes, 30 minutes before chemotherapy"
* dosage.route = $edqm#20045000 "Intravenous use"
* dosage.timing.repeat.duration = 15
* dosage.timing.repeat.durationUnit = #min
* dosage.doseAndRate.doseQuantity = 8 'mg' "mg"

Instance: admin-dexamethasone-8
InstanceOf: ActivityDefinitionSactAdministrationEu
Title: "Dexamethasone 8 mg IV"
Description: "Example dosing definition: dexamethasone 8 mg intravenous, as antiemetic prophylaxis."
Usage: #example
* insert AdminDefinition(admin-dexamethasone-8, AdminDexamethasone8, Dexamethasone 8 mg IV)
* productCodeableConcept = $atc#H02AB02 "dexamethasone"
* dosage.text = "Dexamethasone 8 mg IV, 30 minutes before chemotherapy"
* dosage.route = $edqm#20045000 "Intravenous use"
* dosage.doseAndRate.doseQuantity = 8 'mg' "mg"

Instance: admin-dexamethasone-20
InstanceOf: ActivityDefinitionSactAdministrationEu
Title: "Dexamethasone 20 mg IV"
Description: "Example dosing definition: dexamethasone 20 mg intravenous, as premedication before paclitaxel."
Usage: #example
* insert AdminDefinition(admin-dexamethasone-20, AdminDexamethasone20, Dexamethasone 20 mg IV)
* productCodeableConcept = $atc#H02AB02 "dexamethasone"
* dosage.text = "Dexamethasone 20 mg IV, 30 minutes before paclitaxel"
* dosage.route = $edqm#20045000 "Intravenous use"
* dosage.doseAndRate.doseQuantity = 20 'mg' "mg"

Instance: admin-chlorphenamine-10
InstanceOf: ActivityDefinitionSactAdministrationEu
Title: "Chlorphenamine 10 mg IV"
Description: "Example dosing definition: chlorphenamine 10 mg intravenous, as premedication before paclitaxel."
Usage: #example
* insert AdminDefinition(admin-chlorphenamine-10, AdminChlorphenamine10, Chlorphenamine 10 mg IV)
* productCodeableConcept = $atc#R06AB04 "chlorphenamine"
* dosage.text = "Chlorphenamine 10 mg IV, 30 minutes before paclitaxel"
* dosage.route = $edqm#20045000 "Intravenous use"
* dosage.doseAndRate.doseQuantity = 10 'mg' "mg"
