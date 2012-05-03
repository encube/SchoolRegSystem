package com.onb.SchoolRegSystem

class Student {
	String idNumber
	String name
	int level
	Date registrationDate

	Course course

	static belongsTo = Course
	static hasMany = [enrollments: Enrollment]

    static constraints = {
	idNumber nullable:false, blank:false, size:1..8, unique:true
	name nullable:false, blank:false
	level nullable:false, blank:false, range:1..4
	registrationDate nullable:false, blank:false
	course nullable:false, blank:false
    }

	public String toString(){
		"${idNumber} ${name} ${level}"
	}
}
