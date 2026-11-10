Instance: sact-catalog-example
InstanceOf: LibrarySactCatalogEu
Title: "Example SACT Regimen Catalog"
Description: "Example SACT regimen catalog including the mFOLFOX6 and Carboplatin-Paclitaxel regimens."
Usage: #example
* insert CatalogMetadata
* url = "http://hl7.eu/fhir/phoenix/sact/Library/sact-catalog-example"
* identifier.system = "http://hl7.eu/fhir/phoenix/sact/sid/catalog"
* identifier.value = "EU-SACT-DEMO"
* version = "2026.1"
* name = "ExampleSactRegimenCatalog"
* title = "Example European SACT Regimen Catalog"
* description = "Illustrative catalog used to show how a SACT regimen catalog is represented in FHIR. The content is not clinical guidance."
* relatedArtifact[regimen][0].display = "mFOLFOX6 - adjuvant colon cancer"
* relatedArtifact[regimen][0].resource = Canonical(regimen-mfolfox6)
* relatedArtifact[regimen][1].display = "Carboplatin-Paclitaxel - first-line ovarian cancer"
* relatedArtifact[regimen][1].resource = Canonical(regimen-carboplatin-paclitaxel)

Instance: sact-catalog-bundle-example
InstanceOf: Bundle
Title: "Example SACT Regimen Catalog Bundle"
Description: "Example Bundle of type 'collection' distributing the full content of the example SACT regimen catalog: the catalog Library, the regimen PlanDefinitions and the component ActivityDefinitions."
Usage: #example
* identifier.system = "http://hl7.eu/fhir/phoenix/sact/sid/catalog-bundle"
* identifier.value = "EU-SACT-DEMO-2026.1"
* type = #collection
* timestamp = "2026-11-10T10:00:00+01:00"
* insert BundleEntry(Library, sact-catalog-example)
* insert BundleEntry(PlanDefinition, regimen-mfolfox6)
* insert BundleEntry(PlanDefinition, regimen-carboplatin-paclitaxel)
* insert BundleEntry(ActivityDefinition, admin-oxaliplatin-85)
* insert BundleEntry(ActivityDefinition, admin-calcium-folinate-400)
* insert BundleEntry(ActivityDefinition, admin-fluorouracil-bolus-400)
* insert BundleEntry(ActivityDefinition, admin-fluorouracil-ci-2400)
* insert BundleEntry(ActivityDefinition, admin-paclitaxel-175)
* insert BundleEntry(ActivityDefinition, admin-carboplatin-auc5)
* insert BundleEntry(ActivityDefinition, admin-ondansetron-8)
* insert BundleEntry(ActivityDefinition, admin-dexamethasone-8)
* insert BundleEntry(ActivityDefinition, admin-dexamethasone-20)
* insert BundleEntry(ActivityDefinition, admin-chlorphenamine-10)

RuleSet: BundleEntry(type, id)
* entry[+].fullUrl = "http://hl7.eu/fhir/phoenix/sact/{type}/{id}"
* entry[=].resource = {id}
