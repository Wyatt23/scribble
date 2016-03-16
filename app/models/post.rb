class Post < ActiveRecord::Base
  validates_presence_of :content
  has_many :comments
end
