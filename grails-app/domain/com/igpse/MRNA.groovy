package com.igpse

class MRNA {

	static mapping = {
		table 'mrna'
		cache true
		id column: 'id'
		version false
		id generator: 'assigned'
	}

    static constraints = {
    }

    String name

    String toString() {
    	return name
    }
}
