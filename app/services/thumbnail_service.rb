class ThumbnailService
  THUMBNAIL_SERVICE_URL = "https://orion-takehome.herokuapp.com/thumbnails"
  THUMBNAIL_SERVICE_AUTH_TOKEN = "M9FtH189HRIDkwsIruPY9o0LHJymqSrtEi4sUoU30PVOTh9g0LF4RAkJ6AaFrPD"
  
  def self.get_records
  	HTTParty.get(THUMBNAIL_SERVICE_URL, headers: {"Authorization" => "#{THUMBNAIL_SERVICE_AUTH_TOKEN}"})
  end 	
end