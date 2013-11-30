class User < ActiveRecord::Base
  attr_accessible :email, :encrypted_password, :age, :gender_type

  validates :age, :email, :gender_type, presence: true

  validates :age , numericality: { greater_than_or_equal_to: 1 }

  validates :email, format: { with: /^([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})$/i }
end
