class Video < ApplicationRecord
    has_many :bullishs
    has_many :crunch_reports
    has_many :disrupts
end
