class DateService
  DATE_SERVICE_URL = "https://orion-takehome.herokuapp.com/dates"	
  DATE_SERVICE_AUTH_TOKEN = "ctIvucSjH2H9fvzreTtmcd6rFVDEEmOWfQeyJaa6fW9Abkqb4HabrksI7ycaJJx"
  
  def self.get_records
  	HTTParty.get(DATE_SERVICE_URL, headers: {"Authorization" => "#{DATE_SERVICE_AUTH_TOKEN}"})
  end 	
end