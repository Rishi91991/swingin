# coding: utf-8
class Advertiser < ActiveRecord::Base
  attr_accessible :address, :city, :company, :email, :mobile_number,
    :phone_number, :postal_code, :state, :website_url

  validates :address, :city, :company, :email, :mobile_number, :phone_number,
    :postal_code, :state, :website_url, presence: true

  validates :city, :state, format: { with: /[a-zA-Z\s]+/ }

  validates :email, format: { with: /^([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})$/i }

  validates :postal_code, format:  { with: /^\d{6}/ }

  validates :phone_number, :mobile_number, phony_plausible: true

  validates :website_url, format: {
    with: /(^$)|(^(http|https):\/\/[a-z0-9]+
      ([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$)/ix }

  phony_normalize :phone_number, default_country_code: 'IN'

end
