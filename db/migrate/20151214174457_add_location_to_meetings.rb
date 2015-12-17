class AddLocationToMeetings < ActiveRecord::Migration
  def change
    add_column :meetings, :location, :string
    add_column :meetings, :wave_height, :string
    add_column :meetings, :conditions, :string
    add_column :meetings, :description, :string
  end
end
