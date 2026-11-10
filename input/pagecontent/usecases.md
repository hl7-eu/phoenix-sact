### Use cases

#### UC1 - Publishing a regimen catalog

A national cancer agency (or a hospital network, a professional society, a European project) maintains an approved catalog of SACT regimens. It publishes a new version of the catalog as a FHIR `Bundle` containing the catalog `Library`, the regimen `PlanDefinition`s and the component `ActivityDefinition`s, or exposes them through a FHIR server.

#### UC2 - Configuring an electronic prescribing system

A hospital imports regimen definitions from the catalog into its oncology electronic prescribing system. The prescriber selects a regimen for a patient; the system calculates the individual doses (e.g. from body surface area or target AUC), schedules the cycles and generates the orders, including supportive medications.

#### UC3 - Safety checking

Before releasing a cycle, the prescribing and pharmacy systems check the required monitoring (e.g. neutrophil and platelet counts) and apply the dose modification rules defined by the regimen.

#### UC4 - Harmonisation and comparison of regimens

Regimen definitions from different countries or institutions are compared to identify differences in doses, schedules or supportive care, supporting harmonisation and benchmarking.

#### UC5 - Secondary use

Treatment records of cancer patients (e.g. the *SystemicTreatment* of the HL7 Europe Common Cancer Model) reference the catalog regimen definition. Researchers and cancer registries can then aggregate treatment data by regimen, rather than relying on free-text regimen names.

### Actors

| Actor | Description |
|---|---|
| Catalog Publisher | Organisation authoring, approving and publishing regimen definitions. |
| Catalog Consumer | System importing regimen definitions (e.g. electronic prescribing system, pharmacy system, analytics platform). |
| Catalog Repository | FHIR server hosting the catalog and its regimen definitions. |
{: .grid}
