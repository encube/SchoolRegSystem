package com.onb.SchoolRegSystem

class Subject {
		String name
		BigDecimal fee

	static belongsTo = Course
	static hasMany = [sections: Section, courses: Course]

    static constraints = {
	name nullable:false, blank:false
	fee nullable:false, blank:false
	courses minSize:1
    }

	public String toString(){
		"${name}"
	}
}
