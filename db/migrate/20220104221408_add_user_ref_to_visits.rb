class AddUserRefToVisits < ActiveRecord::Migration[6.1]
  def change
    remove_column :visits, :visitor_who, :string
    add_reference :visits, :visitor_who, foreign_key: { to_table: :users }
  end
end
