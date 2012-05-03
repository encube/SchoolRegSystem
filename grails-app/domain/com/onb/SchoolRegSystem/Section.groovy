package com.onb.SchoolRegSystem

class Section {
	final int maxStudent = 30

	Subject subject
	TimeSlot timeSlot
	Teacher teacher

	static hasMany = [enrollments: Enrollment]
	static belongsTo = [Subject, TimeSlot, Teacher, Enrollment]

    static constraints = {
    }

	def toString = {
		"${subject} (${timeSlot}) - ${teacher}"
	}
}
