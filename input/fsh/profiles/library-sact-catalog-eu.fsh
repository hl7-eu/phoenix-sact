//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile: LibrarySactCatalogEu
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Parent: Library
Id: library-sact-catalog-eu
Title: "Library: SACT Regimen Catalog"
Description: "This profile defines how to represent a SACT regimen catalog - a versioned and governed collection of regimen definitions - as a FHIR Library of type 'asset-collection' that lists the PlanDefinitions of the regimens it is composed of. The catalog content can be exchanged as a Bundle of type 'collection' including the Library, the PlanDefinitions and the ActivityDefinitions."
* insert SetFmmandStatusRule ( 1, draft )

* . ^short = "SACT regimen catalog"
* url 1..1 MS
* identifier MS
* version 1..1 MS
* name 1..1 MS
* title 1..1 MS
* status MS
* date 1..1 MS
* publisher 1..1 MS
* description MS
* jurisdiction MS
* type MS
* type = http://terminology.hl7.org/CodeSystem/library-type#asset-collection
* relatedArtifact 1..* MS
* relatedArtifact ^slicing.discriminator.type = #value
* relatedArtifact ^slicing.discriminator.path = "type"
* relatedArtifact ^slicing.rules = #open
* relatedArtifact contains regimen 1..* MS
* relatedArtifact[regimen] ^short = "Regimen included in the catalog"
* relatedArtifact[regimen].type = #composed-of
* relatedArtifact[regimen].display MS
* relatedArtifact[regimen].resource 1..1 MS
* relatedArtifact[regimen].resource only Canonical(PlanDefinitionSactRegimenEu)
