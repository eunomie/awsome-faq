class Question < ActiveRecord::Base
  validates :title, presence: true
  validates :slug, presence: true

  def to_param
    "#{id}-#{slug}"
  end
end
