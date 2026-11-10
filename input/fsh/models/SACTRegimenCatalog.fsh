Logical: SACTRegimenCatalog
Id: SACTRegimenCatalog
Title: "SACT Regimen Catalog"
Description: "Logical model describing a SACT regimen catalog: a curated, versioned and governed collection of SACT regimen definitions published by an authority (e.g. a national cancer agency, a hospital network, a professional society or a European project)."
Characteristics: #can-be-target
* insert SetFmmandStatusRule ( 1, draft )

* identifier 0..* Identifier "Identifier" "Business identifier(s) of the catalog."
* title 1..1 string "Title" "Human-readable title of the catalog."
* version 1..1 string "Version" "Business version of the catalog."
* status 1..1 code "Status" "Publication status of the catalog."
* status ^comment = "Choice: draft | active | retired"
* date 1..1 dateTime "Date" "Date the catalog version was published."
* publisher 1..1 string "Publisher" "Organisation responsible for publishing and maintaining the catalog."
* jurisdiction 0..* CodeableConcept "Jurisdiction" "Jurisdiction(s) the catalog is intended for."
* description 0..1 markdown "Description" "Description of the catalog, its scope and governance."
* regimen 1..* Reference(SACTRegimen) "Regimen" "Regimen definitions included in the catalog."
