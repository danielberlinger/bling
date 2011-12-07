class Blog < ActiveRecord::Base
  
  scope :reverse_chronological, order("blogs.updated_at DESC")
end
