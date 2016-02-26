class Question < ActiveRecord::Base
  validates :title, presence: true
  validates :slug, presence: true

  has_one :answer

  def to_param
    "#{id}-#{slug}"
  end
end
