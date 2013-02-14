class User < ActiveRecord::Base
  attr_accessible :email, :password_hash, :password_salt, :password, :password_confirmation

  attr_accessor :password
  before_save :encrypt_password

  
  validates_confirmation_of :password
  validates :password, :presence => true, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email

  def encrypt_password
    if password.present?
      self.password_salt =   Engine.generate_salt(100)
      self.password_hash =  Engine.hash_secret(password, password_salt)
    end
  end

end





