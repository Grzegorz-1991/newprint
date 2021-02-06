class Busy < ApplicationRecord
    has_many_attached :images, dependent: :destroy
    validates :name, presence: true, length: {minimum:1, maximum:100}
    validates :opis, presence: true, length: {minimum:1, maximum:1000}
end
