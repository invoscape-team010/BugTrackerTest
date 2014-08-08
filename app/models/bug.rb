class Bug < ActiveRecord::Base
  belongs_to :user

  attr_accessible :description, :priority, :status, :title, :user_id

  validates :title, presence: true
end
