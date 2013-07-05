class User < ActiveRecord::Base
  require 'bcrypt'
  attr_accessible :id, :email, :password_hash, :password_salt, :password, :password_confirmation

  attr_accessor :password
  before_save :encrypt_password

  
  validates_confirmation_of :password
  validates :password, :presence => true, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email

  def encrypt_password
    if password.present?
      #generate_salt
      self.password_salt =  BCrypt::Engine.generate_salt
      self.password_hash =   BCrypt::Engine.hash_secret(password, password_salt)
    end
  end

end





