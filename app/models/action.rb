class Action < ActiveRecord::Base
  belongs_to :want
  has_many :steps 
end
