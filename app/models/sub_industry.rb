class SubIndustry < ApplicationRecord
  belongs_to :industry, polymorphic: true 
end
