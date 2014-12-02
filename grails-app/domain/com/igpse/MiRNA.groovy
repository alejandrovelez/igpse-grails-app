package com.igpse

class MiRNA {

	static mapping = {
		table 'mirna'
		cache true
		id column: 'id'
		version false
		id generator: 'sequence', params: [sequence: 'mirna_seq']
		sort 'id'
	}

    static constraints = {  
    }

    String name

    String toString() {
        return name
    }

}
