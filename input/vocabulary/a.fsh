Alias: $loinc = http://loinc.org

ValueSet: LOINC_Codes_for_Cholesterol_in_Serum/Plasma
Id: example-expansion
Description: "This is an example value set that includes all the LOINC codes for serum/plasma cholesterol from v2.36."
* ^name = "LOINC Codes for Cholesterol in Serum/Plasma"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^version = "20150622"
* ^status = #draft
* ^experimental = true
* ^date = "2015-06-22"
* ^publisher = "FHIR Project team"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/fhir"
* ^copyright = "This content from LOINC® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use."
* ^expansion.extension.url = "http://hl7.org/fhir/StructureDefinition/valueset-expansionSource"
* ^expansion.extension.valueUri = "http://hl7.org/fhir/ValueSet/example-extensional"
* ^expansion.identifier = "urn:uuid:42316ff8-2714-4680-9980-f37a6d1a71bc"
* ^expansion.timestamp = "2015-06-22T13:56:07Z"
* ^expansion.total = 8
* ^expansion.offset = 0
* ^expansion.parameter.name = "version"
* ^expansion.parameter.valueString = "2.50"
* ^expansion.contains[0].system = "http://loinc.org"
* ^expansion.contains[=].version = "2.50"
* ^expansion.contains[=].code = #14647-2
* ^expansion.contains[=].display = "Cholesterol [Moles/volume] in Serum or Plasma"
* ^expansion.contains[+].abstract = true
* ^expansion.contains[=].display = "Cholesterol codes"
* ^expansion.contains[=].contains[0].version = "2.50"
* ^expansion.contains[=].contains[=] = $loinc#2093-3 "Cholesterol [Mass/volume] in Serum or Plasma"
* ^expansion.contains[=].contains[+].version = "2.50"
* ^expansion.contains[=].contains[=] = $loinc#48620-9 "Cholesterol [Mass/volume] in Serum or Plasma ultracentrifugate"
* ^expansion.contains[=].contains[+].version = "2.50"
* ^expansion.contains[=].contains[=] = $loinc#9342-7 "Cholesterol [Percentile]"
* ^expansion.contains[+].abstract = true
* ^expansion.contains[=].display = "Cholesterol Ratios"
* ^expansion.contains[=].contains[0].version = "2.50"
* ^expansion.contains[=].contains[=] = $loinc#2096-6 "Cholesterol/Triglyceride [Mass Ratio] in Serum or Plasma"
* ^expansion.contains[=].contains[+].version = "2.50"
* ^expansion.contains[=].contains[=] = $loinc#35200-5 "Cholesterol/Triglyceride [Mass Ratio] in Serum or Plasma"
* ^expansion.contains[=].contains[+].version = "2.50"
* ^expansion.contains[=].contains[=] = $loinc#48089-7 "Cholesterol/Apolipoprotein B [Molar ratio] in Serum or Plasma"
* ^expansion.contains[=].contains[+].version = "2.50"
* ^expansion.contains[=].contains[=] = $loinc#55838-7 "Cholesterol/Phospholipid [Molar ratio] in Serum or Plasma"
* include codes from system $loinc where parent = "LP43571-6"