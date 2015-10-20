class Project < ActiveRecord::Base
  has_many :tasks
  has_many :assets

  validates :name, presence: true
end
