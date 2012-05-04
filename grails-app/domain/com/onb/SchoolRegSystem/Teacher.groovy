package com.onb.SchoolRegSystem

class Teacher extends User{
	String idNumber
	String name

	static hasMany = [sections: Section]

    static constraints = {
	idNumber nullable:false, blank:false, size:1..8, unique:true
	name nullable:false, blank:false
    }

	public String toString(){
		"${idNumber}: ${name}"
	}
}
