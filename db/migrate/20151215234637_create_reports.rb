class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :minBreakingHeight
      t.string :maxBreakingHeight
      t.string :primaryHeight
      t.string :primaryPeriod
      t.string :primaryDirection
      t.string :primaryCompass
      t.string :secondaryHeight
      t.string :secondaryPeriod
      t.string :secondaryDirection
      t.string :secondaryCompass
      t.string :windSpeed
      t.string :windDirection
      t.string :windCompass
      t.string :temperature
      t.string :localTimestamp
      t.timestamps null: false
    end
  end
end
