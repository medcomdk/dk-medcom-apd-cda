# Metadata for CDA Appointment Document (APD-DK)

This implementation guide includes a DocumentReference profile for MedComs CDA document for appointments, called APD-DK. The XDS-metadata is transfered to this FHIR profile.

## Maping from XDS metadata to FHIR Document Reference resource

The following mapping origins from [HL7's mapping between XDS metadata to FHIR DocumentReference resource](https://www.hl7.org/fhir/documentreference-mappings.html#xds) and is an specification of the table found in [Metadata for a CDA Document](https://build.fhir.org/ig/medcomdk/dk-medcom-xds-metadata-core/#maping-from-xds-metadata-to-fhir-document-reference-resource). The list of ValueSets is added. These restrictions are also defined in the profile, which can be found under the tab 'Artifacts'.

| **DocumentReference element** | **XDS-Metadata** | **ValueSet** |
|---|---|---|
|type | DocumentEntry.type | [TypeCode](https://build.fhir.org/ig/medcomdk/dk-medcom-xds-metadata/ValueSet-MedCom-dk-ihe-apd-typecode-VS.html) |
|category | DocumentEntry.class | [ClassCode](https://build.fhir.org/ig/medcomdk/dk-medcom-xds-metadata/ValueSet-MedCom-ihe-apd-classcode-VS.html) |
|content | | |
|- attachment.contentType | DocumentEntry.mimeType | [ContentType](https://build.fhir.org/ig/medcomdk/dk-medcom-xds-metadata/ValueSet-MedCom-ihe-apd-mimetype-VS.html) |
|- attachment.language | DocumentEntry.languageCode |  [Language](https://build.fhir.org/ig/medcomdk/dk-medcom-xds-metadata/ValueSet-MedCom-ihe-apd-languagecode-VS.html)|
|- format | DocumentEntry.formatCode | [FormatCode](https://build.fhir.org/ig/medcomdk/dk-medcom-xds-metadata/ValueSet-MedCom-ihe-apd-formatcode-VS.html) |
|context |  |  |
|- event | DocumentEntry.eventCodeList | [EventCode](https://build.fhir.org/ig/medcomdk/dk-medcom-xds-metadata/ValueSet-MedCom-dk-ihe-apd-eventcodelist-VS.html) |
|- facilityType | DocumentEntry.healthcareFacilityTypeCode | [FacilityType](https://build.fhir.org/ig/medcomdk/dk-medcom-xds-metadata/ValueSet-MedCom-ihe-apd-HealthcareFacilityTypeCode-VS.html) |
|- practiceSetting | DocumentEntry.practiceSettingCode | [PracticeSetting](https://build.fhir.org/ig/medcomdk/dk-medcom-xds-metadata/ValueSet-MedCom-ihe-apd-PracticeSettingCode-VS.html) |
