class Want < ActiveRecord::Base
  belongs_to :user
  has_many :actions
  has_many :articles
  has_many :merits
  has_many :words
end
