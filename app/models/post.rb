class Post < ApplicationRecord
    belongs_to :authors
    has_one :authors
end
