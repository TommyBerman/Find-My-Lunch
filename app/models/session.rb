class Session < ApplicationRecord
    accepts_nested_attributes_for :tags
end