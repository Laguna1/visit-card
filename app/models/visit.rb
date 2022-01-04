# frozen_string_literal: true

class Visit < ApplicationRecord
  belongs_to :visitor_who, class_name: 'User'
  belongs_to :visit_to, class_name: 'User'

  validates :problem, presence: true, length: { minimum: 7, maximum: 100 }
end
