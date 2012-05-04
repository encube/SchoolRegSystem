package com.onb.SchoolRegSystem

class ConflictCheckerService {
	
	def classConflictExists = { Section thisClass, Section thatClass ->
		return ( 	subjectCollission(thisClass.subject, thatClass.subject) 	|| 
					scheduleCollision(thisClass.timeSlot, thatClass.timeSlot) 	)		
	}

	def subjectCollision = { Subject thisSubject, Subject thatSubject ->
		return ( thisSubject.name.equals(thatSubject.name) )
	}

	def scheduleCollision = { TimeSlot thisSchedule, TimeSlot thatSchedule ->
		return	( 	thisSchedule.start <= thatSchedule.start || thatSchedule.start <= thisSchedule.end 	||
					thatSchedule.start <= thisSchedule.start || thisSchedule.start <= thatSchedule.end	)
	}

}
