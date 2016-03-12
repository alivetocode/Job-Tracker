class Link < ActiveRecord::Base

acts_as_votable
belongs_to :user
has_many :comments

validates :title, presence: true, length: { in: 1..30 }
validates :url, presence: true, :format => URI::regexp(%w(http https))

end

