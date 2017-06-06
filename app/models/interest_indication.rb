class InterestIndication < ApplicationRecord

  has_many :interest_outcomes, :dependent => :destroy


end
