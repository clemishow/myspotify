class Album < ApplicationRecord
  has_many :tracks

  scope :published, -> {where.not(released_at: nil)}

  def as_json(options={})
    return {
      id: self.id,
      title: self.title,
      views_count: self.views_count
    }
  end

  def new_visit
    self.increment!(:views_count)
  end
end
