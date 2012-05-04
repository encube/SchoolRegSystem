package com.onb.SchoolRegSystem

class Section {
	final int maxStudent = 30

	Subject subject
	TimeSlot timeSlot
	Teacher teacher
	Room room

	static belongsTo = [Subject, TimeSlot, Teacher, Enrollment]
	static hasMany = [enrollments: Enrollment]
	
	static constraints = {
		subject nullable:false, blank:false
		timeSlot nullable:false, blank:false
		teacher nullable:false, blank:false
		room nullable:false, blank:false
    }

	public String toString(){
		"${subject} (${timeSlot}) - ${teacher}"
	}
}
