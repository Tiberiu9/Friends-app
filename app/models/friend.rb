class Friend < ApplicationRecord
  belongs_to :user
  validates :first_name, presence: true, length: { minimum: 3, maximum: 100 }
  validates :last_name, presence: true, length: { minimum: 3, maximum: 100 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 100 },
                    format: { with: URI::MailTo::EMAIL_REGEXP }

  validates :phone,   presence: true,
                      numericality: true,
                      length: { minimum: 4, maximum: 14 }
end
