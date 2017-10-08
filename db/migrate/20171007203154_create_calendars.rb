class CreateCalendars < ActiveRecord::Migration[5.1]
  def change
    create_table :calendars do |t|
      t.string :movie_id
      t.string :title
      t.datetime :launch_date
      t.string :thumbnail_url

      t.timestamps
    end
  end
end
