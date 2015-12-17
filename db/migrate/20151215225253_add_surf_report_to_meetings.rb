class AddSurfReportToMeetings < ActiveRecord::Migration
  def change
    add_column :meetings, :minBreakingHeight, :string
    add_column :meetings, :maxBreakingHeight, :string
    add_column :meetings, :primaryHeight, :string
    add_column :meetings, :primaryPeriod,  :string
    add_column :meetings, :primaryDirection, :string
    add_column :meetings, :primaryCompass,  :string
    add_column :meetings, :secondaryHeight,  :string
    add_column :meetings, :secondaryPeriod, :string
    add_column :meetings, :secondaryDirection, :string
    add_column :meetings, :secondaryCompass, :string
    add_column :meetings, :windSpeed, :string
    add_column :meetings, :windDirection, :string
    add_column :meetings, :windCompass, :string
    add_column :meetings, :temperature, :string
  end
end
