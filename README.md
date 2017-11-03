# README

Things to consider:

* The purpose of the app is: Consume calendar events through an API(https://orion-takehome.herokuapp.com/) and create calendar events. This is a single API with 3 different endpoints. Endpoints are secured with an Authorization header. I use tokens to retrieve data from them.(Each token is in their corresponding Service Class: DateService, ThumbnailService, TitleService)

* After the events have been created, users can see events scheduled for a certain year/month and they can later on edit and save the launch date of the event.

* I am using Ruby 2.4.2 and Rails 5.1.4(You need to install these specific versions to run the app on your localhost)

* To run the project on your localhost after installing Ruby and Rails specific versions, do:
bundle install and then rails s

* To populate the initial calendar objects, you need to run localhost:3000/calendars/create_events

* Using SQLite for data store. This should be converted to MySQL or PostgreSQL for large volume data sets.

* To run tests: bundle exec rspec

* I have a spec/model test and a spec/request test

* To see events scheduled for a certain year/month(ex: 2017/8), go to localhost:3000/calendars/2017/8 and then click on the show link for a show where you can edit and save the launch date.

* Services (CalendarEventService, DateService, ThumbnailService, TitleService)

* Using Rails erb templates - can be replaced with Angular or React. A good example would be to use Create React App(https://github.com/facebookincubator/create-react-app) which lets us to create React apps with no build configuration.