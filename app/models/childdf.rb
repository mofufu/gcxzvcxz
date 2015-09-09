class Childdf < ActiveRecord::Base
  belongs_to :parent
  has_many :childdssses
end
