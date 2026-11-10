### Known Issues and Current Limitations

This is a first draft of the guide. The following limitations are known:

- **Dose modification rules** are only partially structured (triggering toxicity in `reason`, rule in `description`). Grade, affected agents and modification type from the logical model are not yet represented as discrete FHIR elements.
- **Monitoring thresholds** are expressed as free text.
- **Regimen synonyms** are not mapped to FHIR in this version.
- **Dose calculation logic** (body surface area formula, Calvert formula, dose rounding and banding) is not represented computably.
- **Non-contiguous administration days** require one nested action per day or range of days.
- **Oral SACT** with continuous daily dosing (e.g. "days 1-14, twice daily") requires further guidance on the use of `dosage.timing`.
- **Terminology**: the treatment intent and setting value sets are minimal; alignment with the HL7 Europe Common Cancer Model terminology is pending. Biomarker and stage are not bound.
- **Regimen identification**: there is no common European regimen identifier system; the identifier system used in the examples is illustrative.

Feedback is welcome.
