class User < ApplicationRecord
  has_secure_password

  ROLES = %w[student admin].freeze

  before_validation :normalize_email
  before_validation :assign_default_role

  validates :name, presence: true, length: { minimum: 2, maximum: 100 }
  validates :email, presence: true,
                    uniqueness: { case_sensitive: false },
                    format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :role, presence: true, inclusion: { in: ROLES }
  validates :password, length: { minimum: 6 }, if: -> { new_record? || !password.nil? }

  def student?
    role == "student"
  end

  def admin?
    role == "admin"
  end

  private

  def normalize_email
    self.email = email.to_s.strip.downcase
  end

  def assign_default_role
    self.role = "student" if role.blank?
  end
end
