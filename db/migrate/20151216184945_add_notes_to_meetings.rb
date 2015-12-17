class AddNotesToMeetings < ActiveRecord::Migration
  def change
    add_column :meetings, :notes, :string
  end
end
