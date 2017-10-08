require 'rails_helper'

RSpec.describe 'Calendars', type: :request do
  # initialize test data 
  let!(:calendars) { create_list(:calendar, 10) }
  let(:calendar_id) { calendars.first.id }

  # Test suite for GET /calendars
  describe 'GET /calendars' do
    # make HTTP get request before each example
    before { get '/calendars' }

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /create_events
  describe 'GET /create_events' do
    # make HTTP get request before each example
    before { get '/calendars/create_events' }

    it 'returns records' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /preview
  describe 'GET /preview' do
    # make HTTP get request before each example
    before { get "/calendars/#{Date.today.strftime('%Y')}/#{Date.today.strftime('%-m')}" }

    it 'returns records' do
      expect(response.body).not_to be_empty
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for PUT /calendars/:id
  describe 'PUT /calendars/:id' do
    let(:valid_attributes) { {"calendar"=>{"title"=>"abc", "launch_date(1i)"=>"2017", "launch_date(2i)"=>"11", "launch_date(3i)"=>"12"}} }

    context 'when the record exists' do
      before { put "/calendars/#{calendar_id}", params: valid_attributes }
      it 'returns status code 302(successful redirection after update)' do
        expect(response).to have_http_status(302)
      end
    end
  end
end