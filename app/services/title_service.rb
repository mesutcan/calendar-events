class TitleService
  def self.get_records
  	HTTParty.get("https://orion-takehome.herokuapp.com/titles", headers: {"Authorization" => "kZcQytLBnFyUSuaix8wFluQ8hOtBhdw653ccVJE7eiahUUyceLX6xVBefi7bUB6"})
  end 	
end