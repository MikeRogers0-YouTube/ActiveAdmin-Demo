class Post < ApplicationRecord
  belongs_to :author
  has_and_belongs_to_many :categories

  # has_event is from:
  # https://github.com/pienkowb/active_record-events
  has_event :publish

  def to_s
    title
  end
end
