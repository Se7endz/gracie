module PagesHelper

	def rights_code(number)
		if number == 0
			return "God"
		elsif number == 1
			return "Admin"
		elsif number == 2
			return "User"
		elsif number == 3
			return "Visiteur"
		end
	end

	def paying_code(paid)
		if paid == nil || paid > 0
			return paid
		else
			return "A payé"
		end
	end

	def update_user
		#@user_to_pay = User.find(81)
		@user_to_pay.update(subscription: 100)
	end

	
end
