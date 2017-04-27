class Comment < ActiveRecord::Base
    belongs_to :link

    validates :username, :presence => true
    validates :comment, :presence => true
  end
