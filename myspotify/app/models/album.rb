class Album < ApplicationRecord
  has_many :tracks

  scope :published, -> {where.not(released_at: nil)}

  def new_visit
    self.increment!(:views_count)
  end
end
