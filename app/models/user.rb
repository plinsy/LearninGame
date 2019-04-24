class User < ApplicationRecord
  # Include default devise modules. Others available are:
  attr_accessor :login
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :timeoutable, :trackable

  devise :omniauthable, omniauth_providers: [:facebook]
  validates :username, presence: true, uniqueness: true      

 	after_create :welcome_send

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end

  def self.from_facebook(auth)
    
    where(facebook_id: auth.uid).first_or_create do |user|
      
      user.email = auth.into.email
      user.username = auth.info.name
      user.password = Devise.friendly_token[0, 20]
      user.skip_confirmation

    end

  end

  has_one_attached :avatar
  # acts_as_avatarable
end