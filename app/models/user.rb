# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :created_visits, class_name: 'Visit', foreign_key: 'from_user_id'
  has_many :to_users, through: :created_visits

  has_many :requested_visits, class_name: 'Visit', foreign_key: 'to_user_id'
  has_many :from_users, through: :requested_visits
  validates :email, uniqueness: true

end
