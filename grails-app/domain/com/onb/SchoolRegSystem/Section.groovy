package com.onb.SchoolRegSystem

class Section {
	final int maxStudent = 30

	Subject subject
	TimeSlot timeSlot
	Teacher teacher

	static belongsTo = [Subject, TimeSlot, Teacher, Enrollment]
	static hasMany = [enrollments: Enrollment]

	static constraints = {
	}

	public String toString(){
		"${subject} (${timeSlot}) - ${teacher}"
	}
}
