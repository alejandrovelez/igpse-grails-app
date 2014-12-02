package com.igpse

class PatientMiRNA implements Serializable{
	Patient patient
	MiRNA mirna
	Float value

	static mapping = {
		table 'patient_mirna'
		version false
		id composite: ['patient', 'mirna']
	}

	static PatientMiRNA create(Patient patient, MiRNA mirna, Float value) {
		PatientMiRNA pmirna = new PatientMiRNA(patient: patient, mirna: mirna, value: value)
		
		pmirna.save(insert: true, failOnError: true)
		return pmirna
	}

	static boolean remove(Patient patient, MiRNA mirna, Float value) {
		PatientMiRNA pmirna = PatientMiRNA.findByPatientAndMiRNA(patient, mirna)
		return pmirna ? pmirna.delete() : false
	}

	String toString() {
		return "${patient.toString()} ${mirna.toString()}: ${value}"
	}

}