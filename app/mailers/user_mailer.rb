class UserMailer < ApplicationMailer

	def new_user(staff)
		@message = "Welcome to Staffr. Your login is now active.."
    mail(to: staff.email,
         subject: "Staffr - Welcome #{staff.first_name}")
	end
end
