class Friend < ApplicationRecord
  belongs_to :user
  validates :first_name, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 200 }
  validates :last_name, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 200 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 200 },
                    format: { with: URI::MailTo::EMAIL_REGEXP }

  validates :phone,   presence: true,
                      numericality: true,
                      length: { minimum: 4, maximum: 14 }
end
