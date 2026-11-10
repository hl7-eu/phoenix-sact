<div class="callout-wrapper">
  <div class="callout-box warning-box">
    <strong>&#9888; Warning - for exemplification purposes only</strong>
    The current content of this guide is provided <strong>only for exemplification purposes</strong>. It does not refer to, describe or represent any actual work, project deliverable, regimen catalog or agreed specification. Models, profiles, terminology and examples are illustrative, are not clinical guidance and SHALL NOT be used to treat patients.
  </div>
</div>

### Scope

The **European SACT Regimen Catalog** Implementation Guide defines a common, computable representation of **Systemic Anti-Cancer Therapy (SACT) regimen definitions**: the "recipes" describing which anticancer agents and supportive medications are combined, at which dose, by which route, on which days of a cycle, how many cycles are planned, which monitoring is required before treatment and how doses are modified in case of toxicity.

A **regimen catalog** is a curated, versioned and governed collection of such definitions, published by an authority (e.g. a national cancer agency, a hospital network, a professional society or a European project) and used by electronic prescribing systems, pharmacies and analytics platforms.

The guide:

- describes the domain with a **conceptual model** and a **glossary**;
- formalises it with technology-neutral **logical models** ([SACT Regimen Catalog](StructureDefinition-SACTRegimenCatalog.html) and [SACT Regimen](StructureDefinition-SACTRegimen.html));
- specifies how the logical models are represented in **HL7 FHIR R4**, using `Library`, `PlanDefinition` and `ActivityDefinition`;
- provides illustrative **examples** of regimen definitions and of a catalog.

This guide covers **regimen definitions** (what is planned in general for a class of patients). The **treatment of a specific patient** (orders, administrations, actual doses) is out of scope; it is expected to be derived from the definitions, e.g. via the FHIR `$apply` operation, and is addressed by other specifications such as the [HL7 Europe Common Cancer Model](https://build.fhir.org/ig/hl7-eu/cancer-common).

### How to Read This Guide

- The **Introduction** section describes scope, background and references.
- The **Functional** section presents use cases, the conceptual model and the glossary of terms.
- The **Logical** section provides the formal logical models of the catalog and of a regimen definition.
- The **Implementation** section describes how the logical models are represented in FHIR, the design choices adopted and worked examples.
- The **Artifacts** section lists all the FHIR artefacts defined by this guide.

### Overview

<div style="text-align:center;">
  <figure class="uml-diagram" style="width:80%;">
    {% include SactConceptualModel.svg %}
    <figcaption><strong>Figure 1: SACT Regimen Catalog - conceptual overview</strong></figcaption>
  </figure>
</div>

### Package and canonical

- Package id: `hl7.eu.phoenix.sact`
- Canonical: `http://hl7.eu/fhir/phoenix/sact`
