class Token < ApplicationRecord

  # FOR UNIQUE UID & EMAIL
  validates :uid, uniqueness: true
  validates :email, uniqueness: true

  # BEFORE CREATE A TOKEN
  before_create :set_uid

  # CREATE A SEECURE TOKEN
  private
    def set_uid
      self.uid = SecureRandom.urlsafe_base64(nil, true)
    end
end
