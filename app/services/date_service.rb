class DateService
  def self.get_records
  	HTTParty.get("https://orion-takehome.herokuapp.com/dates", headers: {"Authorization" => "ctIvucSjH2H9fvzreTtmcd6rFVDEEmOWfQeyJaa6fW9Abkqb4HabrksI7ycaJJx"})
  end 	
end