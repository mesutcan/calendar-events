class CalendarEventService

  def self.create_calendar_event
    begin
      dates = JSON.parse(external_date_service.response.body)['data']
      titles = JSON.parse(external_title_service.response.body)['data']
      thumbnails = JSON.parse(external_thumbnail_service.response.body)['data']
      movie_ids = dates.map{ |a| a['movie_id']} & titles.map{|a| a['movie_id'] } & thumbnails.map{ |a| a['movie_id'] }
      movie_ids.each do |movie_id|
        launch_date = dates.find{ |m| m['movie_id'] == movie_id }['launch_date']
        title = titles.find{ |m| m['movie_id'] == movie_id }['title']
        thumbnail_url = thumbnails.find{ |m| m['movie_id'] == movie_id }['thumbnail_url']
        Calendar.create!(launch_date: launch_date, title: title, thumbnail_url: thumbnail_url, movie_id: movie_id)
      end  
    rescue
      false
    end
  end

  def self.external_date_service
    DateService.get_records
  end

  def self.external_title_service
    TitleService.get_records
  end

  def self.external_thumbnail_service
    ThumbnailService.get_records
  end
end
