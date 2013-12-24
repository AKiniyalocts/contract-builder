class Contract < ActiveRecord::Base
    validates :compName, presence: true
end
