class Link < ActiveRecord::Base
    has_many :comments
    validates :username, :presence => true
    validates :description, :presence => true
    validates :url, :presence => true

  end
