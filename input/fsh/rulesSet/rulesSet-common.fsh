RuleSet: SetFmmandStatusRule ( fmm, status )
* ^extension[$fmm].valueInteger = {fmm}
* ^extension[$standards-status].valueCode = #{status}

RuleSet: ExtensionContext(path)
* ^context[+].type = #element
* ^context[=].expression = "{path}"

RuleSet: SNOMEDCopyrightForVS
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* ^experimental = false

RuleSet: ATCCopyrightForVS
* ^copyright = "This value set includes content from the WHO Anatomical Therapeutic Chemical (ATC) classification, which is copyright © WHO Collaborating Centre for Drug Statistics Methodology, Oslo, Norway."
* ^experimental = false

RuleSet: EDQMCopyrightForVS
* ^copyright = "This value set includes content from EDQM Standard Terms, which is copyright © the European Directorate for the Quality of Medicines & HealthCare (EDQM), Council of Europe."
* ^experimental = false

// Common metadata applied to all example catalog definitions
RuleSet: CatalogMetadata
* status = #draft
* experimental = true
* date = "2026-11-10"
* publisher = "PHOENIX"
* jurisdiction = $m49#150 "Europe"
