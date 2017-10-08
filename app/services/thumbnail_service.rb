class ThumbnailService
  def self.get_records
  	HTTParty.get("https://orion-takehome.herokuapp.com/thumbnails", headers: {"Authorization" => "M9FtH189HRIDkwsIruPY9o0LHJymqSrtEi4sUoU30PVOTh9g0LF4RAkJ6AaFrPD"})
  end 	
end