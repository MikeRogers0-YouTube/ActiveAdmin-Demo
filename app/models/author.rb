class Author < ApplicationRecord
  has_many :posts

  def to_s
    name
  end
end
