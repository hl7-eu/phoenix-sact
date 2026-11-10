### Model Map - FHIR

The SACT Regimen Catalog logical models are represented in FHIR R4 with three profiles:

| Logical concept | FHIR resource | Profile |
|---|---|---|
| SACT Regimen Catalog | `Library` (type = `asset-collection`) | [Library: SACT Regimen Catalog](StructureDefinition-library-sact-catalog-eu.html) |
| SACT Regimen, Indication, Cycle, Monitoring, Dose modification | `PlanDefinition` (type = `clinical-protocol`) | [PlanDefinition: SACT Regimen](StructureDefinition-plandefinition-sact-regimen-eu.html) |
| Component (dosing) | `ActivityDefinition` (kind = `MedicationRequest`) | [ActivityDefinition: SACT Administration](StructureDefinition-activitydefinition-sact-administration-eu.html) |
{: .grid}

<div style="text-align:center;">
  <figure>
    {% include SactFhirModel.svg %}
    <figcaption><strong>Figure 1: FHIR representation of the SACT Regimen Catalog</strong></figcaption>
  </figure>
</div>

### Regimen structure

| Logical element | FHIR element |
|---|---|
| name / acronym | `PlanDefinition.title` / `PlanDefinition.subtitle` |
| therapyType | `PlanDefinition.topic` |
| indication | `PlanDefinition.extension[indication]` ([SactRegimenIndication](StructureDefinition-sact-regimen-indication.html)) and `useContext` (focus) |
| emetogenicRisk | `PlanDefinition.extension[emetogenicRisk]` ([SactEmetogenicRisk](StructureDefinition-sact-emetogenic-risk.html)) |
| cycle | `PlanDefinition.action` with `code` = `cycle`; `timingTiming.repeat.period` = cycle length, `count` = number of cycles |
| cycle.component | `PlanDefinition.action[cycle].action` with `code` = component role, `timingRange` = administration days, `relatedAction` = sequencing, `definitionCanonical` = ActivityDefinition |
| component dose, route, duration | `ActivityDefinition.dosage` |
| monitoring | `PlanDefinition.action` with `code` = `monitoring`; `input.codeFilter.code` = test |
| doseModification | `PlanDefinition.action` with `code` = `dose-modification`; `reason` = trigger |
| evidence | `PlanDefinition.relatedArtifact` |
{: .grid}

The complete element-by-element mapping is available in the *Mappings* tab of the [SACTRegimen](StructureDefinition-SACTRegimen-mappings.html) and [SACTRegimenCatalog](StructureDefinition-SACTRegimenCatalog-mappings.html) logical models.
