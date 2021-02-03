class Busy < ApplicationRecord
    validates :name, presence: true, length: {minimum:1, maximum:100}
    validates :opis, presence: true, length: {minimum:1, maximum:1000}
end
