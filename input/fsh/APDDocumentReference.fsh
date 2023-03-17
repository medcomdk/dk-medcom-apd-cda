Profile: APDDKDocumentReference
Parent: CoreDocumentReference
Id: apd-dk-documentreference
Description: "A profile stating the rules, when exchanging a CDA Appointment (APD-DK) document."
* type.coding.system from $TypeCode (required) 
* category.coding.system from $ClassCode (required)
* content.attachment.contentType from $ContentType (required)
* content.attachment.language from $Language (required)
* content.format from $FormatCode (required)
* context.event.coding.system from $EventCode (required)
* context.facilityType.coding.system from $FacilityType (required)
* context.practiceSetting.coding.system from $PracticeSetting (required)
* extension[homeCommunityid].valueCoding.system from $HomeCommunityID 



/* Invariant: apd-dk-rule-1
Description: "Where formatCode is 'urn:ad:dk:medcom:appointmentsummary:full', the eventCode must be 'ALAL01' (hjertesygdomme)"
Severity: #error
Expression: "where(type.coding.where(system = 'http://medcomfhir.dk/ig/xdsmetadata/CodeSystem/dk-ihe-typecode-de-regenstrief').code = '56446-8').context.event.coding.code = 'ALAL01'"
*/

// Metadata instance
Instance: 94e65db8-2f0c-4a2c-a7c9-06a160d59a12
InstanceOf: APDDKDocumentReference
Title: "Instance of APD-DK DocumentReference."
Description: "Instance of APD-DK DocumentReference, containing relevant metadata"
* status = $Status#current 
* type.coding = $TypeCode#56446-8
* category.coding = $ClassCode#001
* content.attachment.contentType = $ContentType#text/xml
* content.attachment.language = $Language#da
* content.format = $FormatCode#urn:ad:dk:medcom:apd-v2.0.1:full
* context.event.coding = $EventCode#ALAL03	
* context.facilityType.coding = $FacilityType#554871000005105	
* context.practiceSetting.coding = $PracticeSetting#394588006
* extension[homeCommunityid].valueCoding = $HomeCommunityID#1.2.208.176.43210.8.20