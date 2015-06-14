class HomeController < ApplicationController

	def index

	end


	def create
		ContactMailer.contact_form(:email=>params[:email],:name=>params[:name],:description=>params[:description]).deliver
		redirect_to(:root)
	end
	
end
