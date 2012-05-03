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

		new Role(authority: "ROLE_STUDENT").save()
	}
    def destroy = {
    }
}
