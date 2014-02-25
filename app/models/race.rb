class Race < ActiveRecord::Base
  validates :name, :start_at, presence: true
end
