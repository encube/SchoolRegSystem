import com.onb.SchoolRegSystem.*

class BootStrap {

	def springSecurityService
	def init = { servletContext ->
		def roles = [:]
		def users = [:]
		roles.admin = Role.findByAuthority("ROLE_ADMIN") ?: \
			new Role(authority: "ROLE_ADMIN").save()
		users.admin = User.findByUsername('admin') ?: \
			new User(username: 'admin',
			password: 'admin', \
			enabled: true, \
			accountExpired: false, \
			accountLocked: false, \
			passwordExpired: false).save()
		UserRole.create(users.admin, roles.admin)

		users.admin2 = User.findByUsername('admin2') ?: \
			new User(username: 'admin2',
			password: springSecurityService.encodePassword ('admin'), \
			enabled: true, \
			accountExpired: false, \
			accountLocked: false, \
			passwordExpired: false).save()
		UserRole.create(users.admin2, roles.admin)

		roles.student = Role.findByAuthority("ROLE_STUDENT") ?: \
			new Role(authority: "ROLE_STUDENT").save()

		roles.teacher = Role.findByAuthority("ROLE_TEACHER") ?: \
			new Role(authority: "ROLE_TEACHER").save()
	}
    def destroy = {
    }
}
