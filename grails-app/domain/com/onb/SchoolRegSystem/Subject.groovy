package com.onb.SchoolRegSystem

class Subject {
	String name
	BigDecimal fee

	static hasMany = [sections: Section, courses: Course]
	static belongsTo = Course

    static constraints = {
	name nullable:false, blank:false
	fee nullable:false, blank:false
    }
}
