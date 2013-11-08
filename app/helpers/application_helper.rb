module ApplicationHelper
	def signed_in?
		if session[:user_id].nil?
			return
		else
			@current_user = User.find_by_id(session[:user_id])
		end
	end	
	
	def euro(amount)# A method with a formal parameter. No need for a data type in ruby
		number_to_currency(amount, :unit => "&euro;")# This is an entity reference
		#In the .html it is called as euro(@movie.price)
	end
end
