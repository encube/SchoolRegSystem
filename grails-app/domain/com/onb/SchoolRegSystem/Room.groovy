package com.onb.SchoolRegSystem

class Room {
	String idNumber
	String building

    static constraints = {
		idNumber nullable:false, blank:false
		building nullable:false, blank:false
    }

	def toString = {
		"${building} - ${idNumber}"
	}

}
