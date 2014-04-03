class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.time :time_begin
      t.string :location
      t.date :event_start
      t.text :text
      t.string :tag_list

      t.timestamps
    end
  end
end