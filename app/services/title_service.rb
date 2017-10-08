class TitleService
  TITLE_SERVICE_URL = "https://orion-takehome.herokuapp.com/titles"
  TITLE_SERVICE_AUTH_TOKEN = "kZcQytLBnFyUSuaix8wFluQ8hOtBhdw653ccVJE7eiahUUyceLX6xVBefi7bUB6"

  def self.get_records
  	HTTParty.get(TITLE_SERVICE_URL, headers: {"Authorization" => "#{TITLE_SERVICE_AUTH_TOKEN}"})
  end 	
end