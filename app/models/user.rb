class User < ApplicationRecord
  has_many :tasks
  has_many :categories
  has_many :category_tasks, through: :tasks

  has_secure_password
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

end
