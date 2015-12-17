class AddLocalTimeStampToMeetings < ActiveRecord::Migration
  def change
    add_column :meetings, :localTimestamp, :string
  end
end
