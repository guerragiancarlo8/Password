require_relative '../models/password.rb'
require 'rspec'


RSpec.describe PasswordChecker do 
	before :each do
		@passwordchecker = PasswordChecker.new
	end

	describe '#is_bigger_than_7?' do
		it 'checks for the input string to be longer than 7 characters' do
			expect(@passwordchecker.is_bigger_than_7? "espectro123").to eq(true)
		end

		it 'checks for the input string to be less than 7 and returns false' do
			expect(@passwordchecker.is_bigger_than_7? "spectre").to eq(false)
		end
	end

	describe '#letter_number_symbol?' do
		it 'checks for the input to include at least 1 letter, 1 number, and 1 symbol' do
			expect(@passwordchecker.letter_number_symbol? "espectro123%").to eq(true)
		end

		it 'checks for the input to not include at least 1 letter, 1 number, and 1 symbol. false' do
			expect(@passwordchecker.letter_number_symbol? "espectro123").to eq(false)
		end
	end

end