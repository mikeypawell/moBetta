class AddBoardToMeetings < ActiveRecord::Migration
  def change
    add_column :meetings, :board, :string
  end
end
