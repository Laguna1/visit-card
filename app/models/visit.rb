# frozen_string_literal: true

class Visit < ApplicationRecord
  belongs_to :from_user, class_name: 'User'
  belongs_to :to_user, class_name: 'User'

  validates :problem, presence: true, length: { minimum: 7, maximum: 100 }
end
