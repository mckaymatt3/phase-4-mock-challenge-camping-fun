class Signup < ApplicationRecord

    belongs_to :camper
    belongs_to :activity

    validates :time, presence: true
    validates :camper_id, presence: true
    validates :activity_id, presence: true

end
