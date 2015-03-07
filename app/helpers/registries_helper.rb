module RegistriesHelper
	def user_registry_helper(user, registry)
		if @registry.id
			user_registry_path(id: registry.id, user_id: user.id)
		else
			user_registries_path(user_id: user.id)
		end
	end
end
