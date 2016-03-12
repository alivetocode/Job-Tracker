class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :links 
  belongs_to :user

  validates :name, presence: true, length: { in: 1..30 }
  validates :email, presence: true, uniqueness: true
end
