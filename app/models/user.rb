class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :first_name, :last_name format: { with: /\A[A-Z]+\z/ }
  validates :email, presence: true, uniqueness: true, format:  /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, length: { maximum: 254 }
  validates_date :birthdate, :on_or_before => lambda { Date.current }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :vehicles
end
