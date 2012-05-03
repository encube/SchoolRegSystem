package com.onb.SchoolRegSystem

class Course {
	String name
	String description

	static hasMany = [students: Student, subjects: Subject]

    static constraints = {
	name nullable:false, blank:false
	description nullable:false, blank:false
    }
}
