class RenameColumnsInVisits < ActiveRecord::Migration[6.1]
  def change
    rename_column :visits, :visit_to_id, :to_user_id
    rename_column :visits, :visitor_who_id, :from_user_id
  end
end
