class AddSurfDurationToMeetings < ActiveRecord::Migration
  def change
    add_column :meetings, :surf_duration, :integer
  end
end
