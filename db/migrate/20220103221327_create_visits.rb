# frozen_string_literal: true

class CreateVisits < ActiveRecord::Migration[6.1]
  def change
    create_table :visits do |t|
      t.string :visitor_who
      t.string :visit_to
      t.string :problem

      t.timestamps
    end
  end
end
