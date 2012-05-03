package com.onb.SchoolRegSystem

class Enrollment {
	Date enrollmentDate
	int schoolYear
	String semester

	Student student

	static belongsTo = Student
	static hasMany = [sections: Section]

    static constraints = {
		enrollmentDate nullable:false, blank:false
		schoolYear nullable:false, blank:false
		semester nullable:false, blank:false
		student nullable:false, blank:false
    }

	public String toString(){
		"${enrollmentDate}  ${schoolYear}  ${semester}"
	}
}
