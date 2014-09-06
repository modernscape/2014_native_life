class LeadsController < ApplicationController

	
	def phase_0
		@input_word = InputWord.new
	end

	def phase_1
		@input_word = InputWord.new
	end

	def phase_2
		@input_word = InputWord.new
		p @input_word
	end

	def phase_3
		@input_word = InputWord.new(input_word_params)
		p @input_word
	end

	def phase_4
		@input_word = InputWord.new(input_word_params)
		p @input_word
	end

	def phase_5
		@input_word = InputWord.new(input_word_params)
		p @input_word
	end

	def phase_6
		@input_word = InputWord.new(input_word_params)
		p @input_word
	end

	def phase_7
		@input_word = InputWord.new
	end

	def input_word_params
    params.require(:input_word).permit(:desire_1, :desire_2 ,:desire_3 ,:achievement_percent)
  end
end
