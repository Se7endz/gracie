module UsersHelper

	def name_nil(value)
		if value == nil || value == ""
			return "Non renseigné"
		else
			return value
		end	
	end
end
