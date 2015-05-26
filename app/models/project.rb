class Project < ActiveRecord::Base
  validates :title, :presence => true
  validates_uniqueness_of :title, :message => ' has already been used.  Please choose a different value.'
  has_many :items, :dependent => :destroy
end
