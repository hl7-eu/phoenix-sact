This section describes the **SACT Regimen Catalog logical models**, a formal, technology-neutral representation of the concepts introduced in the [Conceptual Model](conceptualmodel.html). The mapping of each element to FHIR is available in the *Mappings* tab of each logical model and is summarised in the [Model Map - FHIR](fhirmodelmap.html) page.

<style>
  .uml-diagram svg { width: 100% !important; height: auto !important; }
</style>

### SACT Regimen Catalog

Represents a regimen catalog: a curated, versioned and governed collection of regimen definitions.

<div style="text-align:center;">
  <figure>
    {% include SACTRegimenCatalog_LM.svg %}
    <figcaption><strong>Figure 1: SACTRegimenCatalog logical model</strong></figcaption>
  </figure>
</div>

FHIR Logical Model: [StructureDefinition-SACTRegimenCatalog.html](StructureDefinition-SACTRegimenCatalog.html)

### SACT Regimen

Represents a SACT regimen definition: indications, cycles and their components (anticancer agents and supportive medications), emetogenic risk, monitoring requirements, dose modification rules and supporting evidence.

<div style="text-align:center;">
  <figure class="uml-diagram">
    {% include SACTRegimen_LM.svg %}
    <figcaption><strong>Figure 2: SACTRegimen logical model</strong></figcaption>
  </figure>
</div>

FHIR Logical Model: [StructureDefinition-SACTRegimen.html](StructureDefinition-SACTRegimen.html)

An example instance of the logical model for the mFOLFOX6 regimen is provided in [lm-mfolfox6](Binary-lm-mfolfox6.html).
