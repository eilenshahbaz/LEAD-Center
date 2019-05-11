class User < ApplicationRecord

	def self.sign_in_from_omniauth(auth)
		find_by(provider: 'CAS' , uid: auth['uid'].to_s ) || create_user_from_omniauth(auth)
	end

	def self.create_user_from_omniauth(auth)
		create(
			provider: 'CAS' ,
			uid: auth['uid'].to_s 
			)
	end

end
