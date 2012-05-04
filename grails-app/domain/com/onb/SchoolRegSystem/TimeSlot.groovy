package com.onb.SchoolRegSystem

class TimeSlot {
	String days
	int start
	int end

	static hasMany = [sections: Section]

    static constraints = {
		days nullable:false, blank:false, inList:['Monday/Thursday','Tuesday/Friday', 'Wednesday/Saturday']
		start nullable:false, blank:false, range:0..23
		end nullable:false, blank:false, range:0..23
    }

	public String toString(){
		"${days} : ${start}:00 - ${end}:00"
	}
}
