class AddVisitToRefToVisits < ActiveRecord::Migration[6.1]
  def change
    remove_column :visits, :visit_to, :string
    add_reference :visits, :visit_to, foreign_key: { to_table: :users }
  end
end
