package com.onb.SchoolRegSystem

class EnrollmentService {
	
	def getTotalFee = { Enrollment enrollment ->
		def total = new BigDecimal("0.00")
		sections.each(){
			total.add(it.subject.fee);
		}
		return total
	}

}
