class ContactMailer < ApplicationMailer

	default( from:"contactrighttools@gmail.com")
	
	def contact_form(args)
		@email = args[:email]
		@name = args[:name]
		@description = args[:description]
		mail(to:"mark@right-tools.uk", subject:"Right-tools.uk - Contact #{args[:name]}")
	end

end
