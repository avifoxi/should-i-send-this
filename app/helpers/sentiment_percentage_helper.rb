module SentimentPercentageHelper
	def convert_to_percentage(score)
		perc = (score.abs * 100).round
		translation_string = "#{ perc }\%"
		 
		translation_string += score > 0 ? ' Positive' : ' Negative'

		translation_string
	end
end