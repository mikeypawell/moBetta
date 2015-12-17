class RemoveSurfReportFromMeetings < ActiveRecord::Migration
  def change
    remove_column :meetings, :minBreakingHeight, :string
    remove_column :meetings, :maxBreakingHeight, :string
    remove_column :meetings, :primaryHeight, :string
    remove_column :meetings, :primaryPeriod, :string
    remove_column :meetings, :primaryDirection, :string
    remove_column :meetings, :primaryCompass, :string
    remove_column :meetings, :secondaryHeight, :string
    remove_column :meetings, :secondaryPeriod, :string
    remove_column :meetings, :secondaryDirection, :string
    remove_column :meetings, :secondaryCompass, :string
    remove_column :meetings, :windSpeed, :string
    remove_column :meetings, :windDirection, :string
    remove_column :meetings, :windCompass, :string
    remove_column :meetings, :temperature, :string
    remove_column :meetings, :localTimestamp, :string
  end
end
