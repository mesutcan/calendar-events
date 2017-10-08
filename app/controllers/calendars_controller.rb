class CalendarsController < ApplicationController
  def create_events
    @processed_items = CalendarEventService.create_calendar_event
    render json: @processed_items, status: :ok 	
	end

  def edit
    @calendar = Calendar.find(params[:id])
  end

  def update
    @calendar = Calendar.find(params[:id])
    @calendar.launch_date = Date.new(calendar_params['launch_date(1i)'].to_i, calendar_params['launch_date(2i)'].to_i, calendar_params['launch_date(3i)'].to_i)

    if @calendar.save
      redirect_to calendars_path
    else
      render 'edit'
    end
  end   

	def index
    @calendars = Calendar.all
	end

	def preview
    @calendars = Calendar.all.select{ |event| params['year'] == event.launch_date.strftime('%Y') && params['month'] ==  event.launch_date.strftime('%-m') }
  end

    
  private
    def calendar_params
      params.require(:calendar).permit(:title, :thumbnail_url, :launch_date)
    end

end
