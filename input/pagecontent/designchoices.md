### Design Choices

#### Definitional resources

A regimen catalog describes *what should be done* for a class of patients, not what has been done for a given patient. For this reason the guide uses the FHIR **definitional** resources (`PlanDefinition`, `ActivityDefinition`, `Library`). Patient-specific orders (`RequestGroup`/`CarePlan`, `MedicationRequest`) can be generated from them with the `$apply` operation.

#### One PlanDefinition per regimen and indication group

The number of cycles and other characteristics of a regimen often depend on the indication (e.g. mFOLFOX6 is given for 12 cycles in the adjuvant setting and until progression in the metastatic setting). When this happens, separate PlanDefinitions SHOULD be defined. The indication extension is repeatable for regimens that are used identically for several indications.

#### Action categories

Top-level `PlanDefinition.action`s are sliced by `code`, using the [SACT Regimen Action Category](CodeSystem-sact-action-category-cs.html) code system: `cycle`, `monitoring` and `dose-modification`.

#### Cycles and administration days

The cycle length and the number of cycles are expressed with `action[cycle].timingTiming.repeat` (`period`/`periodUnit`, `count`, `countMax`). Within a cycle, the administration day(s) of each component are expressed with `timingRange`, in days (UCUM `d`) relative to the cycle start (day 1 = first day). A component administered on non-contiguous days (e.g. days 1 and 8) is represented by one nested action per day (or per contiguous range of days), each referencing the same ActivityDefinition.

#### Sequencing

The order of administration within a day is expressed with `relatedAction` (e.g. carboplatin `after-end` paclitaxel; premedication `before-start` paclitaxel with an offset of 30 minutes).

#### Dose and dose basis

The dose is expressed in `ActivityDefinition.dosage.doseAndRate.doseQuantity` with a UCUM unit expressing the dose basis: `mg/m2` (body surface area), `mg/kg` (body weight), `mg/mL.min` (target AUC, e.g. carboplatin via the Calvert formula) or `mg` (flat dose). Capped doses use `dosage.maxDosePerAdministration`. The computation of the individual dose is left to the consuming system.

#### Agents

Agents are identified at **substance level**, preferably with the WHO ATC classification (5th level) or SNOMED CT substances. Medicinal product details are out of scope.

#### Indication as a complex extension

Intent, setting and line of therapy depend on the indication. They are therefore grouped with the cancer condition in a single complex extension ([SactRegimenIndication](StructureDefinition-sact-regimen-indication.html)) instead of being independent PlanDefinition-level elements. To support search, the cancer condition SHOULD be replicated in `useContext` with code `focus`.

#### Monitoring and dose modifications

Monitoring requirements are represented as actions with an `input` DataRequirement identifying the test (LOINC). Dose modification rules are represented as actions whose `reason` identifies the triggering toxicity, with the rule described in `description`. A fully computable representation (e.g. CQL `condition` expressions and `dynamicValue`s) is left to future versions.
