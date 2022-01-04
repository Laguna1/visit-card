# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :created_visits, class_name: 'Visit', foreign_key: 'visitor_who_id'
  has_many :visitor_tos, through: :created_visits

  has_many :requested_visits, class_name: 'Visit', foreign_key: 'visit_to_id'
  has_many :visitor_whos, through: :requested_visits
  validates :email, uniqueness: true

end
