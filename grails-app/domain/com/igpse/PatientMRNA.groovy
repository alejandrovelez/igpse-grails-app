package com.igpse

class PatientMRNA implements Serializable{
	Patient patient
	MRNA mrna
	Float value

	static mapping = {
		table 'patient_mrna'
		version false
		id composite: ['patient', 'mrna']
	}

	static PatientMRNA create(Patient patient, MRNA mrna, Float value) {
		PatientMRNA pmrna = new PatientMRNA(patient: patient, mrna: mrna, value: value)
		pmrna.save(insert: true)
		return pmrna
	}

	static boolean remove(Patient patient, MRNA mrna, Float value) {
		PatientMRNA pmrna = PatientMRNA.findByPatientAndMRNA(patient, mrna)
		return pmrna ? pmrna.delete() : false
	}

	String toString() {
		return "${patient.toString()} ${mrna.toString()}: ${value}"
	}

}