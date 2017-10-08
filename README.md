# README

Things to consider:

* bundle install and then rails s

* To populate the initial calendar objects, you need to run localhost:3000/calendars/create_events

* To run tests: bundle exec rspec

* I have a spec/model test and a spec/request test

* To see events scheduled for a certain year/month(ex: 2017/8), go to localhost:3000/calendars/2017/8 and then click on the show link for a show where you can edit and save the launch date.

* Services (CalendarEventService, DateService, ThumbnailService, TitleService)

* Using Rails erb templates because of time constraint. Can be replaced with Angular or React. A good example would be to use Create React App(https://github.com/facebookincubator/create-react-app) which lets us to create React apps with no build configuration.