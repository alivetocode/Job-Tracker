class Link < ActiveRecord::Base

acts_as_votable
belongs_to :user
has_many :comments

validates :title, 
						presence: true, 
						length: { in: 1..30 }

 validates :url,
            presence: { message: "- Website address is required" }, 
            length: { maximum: 245 },
            format: { with: URI.regexp(%w(http https)), message: "- Please check the format of your website address. It should begin with http: or https:" }


end

