class Advertisement < ActiveRecord::Base
  attr_accessible :img_url, :start_date, :end_date

  validates :img_url, :start_date, :end_date, presence: true

  validates :img_url, format: { with: %r{\.(gif|jpe?g|png)$}i,
    message: 'Must have a valid image extension' }

  validates :start_date,
    date: { after: Proc.new { Date.today - 1 },
      message: "Must be on or after today's date" }

  validates :end_date,
    date: { after: :start_date, message: "Must be after start's date" }
end
