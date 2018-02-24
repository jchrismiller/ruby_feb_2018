class RenameStateinEventtostate < ActiveRecord::Migration
  def change
  	rename_column :event, :State, :state
  end
end
