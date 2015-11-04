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

		check_letters_downcase = /[a-z]+/.match(string)

		check_letters_upcase = /[A-Z]+/.match(string)

		check_numbers = /[0-9]+/.match(string)

		check_symbols = /[@#%&*]+/.match(string)


		if check_letters_downcase && check_letters_upcase && check_numbers && check_symbols
			true
		else
			false
		end
	end

	def no_domain_no_email? email
		new_str = email.gsub(/.com|.net|.edu|.es|.co/,'')

		new_str

	end
end


