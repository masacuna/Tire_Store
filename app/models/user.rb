class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :orders

  validates :first_name            , presence: true
  validates :last_name             , presence: true
  validates :email                 , confirmation: true
  validates :email_confirmation    , presence: true
  validates :password              , confirmation: true if nil?
  validates :password_confirmation , presence: true if nil?

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         def to_s
          first_name + " " + last_name + " - " + id.to_s
         end
end
