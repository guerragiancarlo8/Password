require 'rspec'

class PasswordChecker
	def initialize


	end

	def check_password(email,password)

		#is_bigger_than_7 password
	end

	def is_bigger_than_7? string
		if string.size > 7
			true
		else
			false
		end

	end

	def letter_number_symbol? string

		check_letters = /[A-Za-z]+/.match(string)

		check_numbers = /[0-9]+/.match(string)

		check_symbols = /[@#%&*]+/.match(string)


		if check_letters && check_numbers && check_symbols
			true
		else
			false
		end
	end
end


