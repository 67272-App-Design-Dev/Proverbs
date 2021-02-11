class Proverb < ApplicationRecord

  	# Method to get a random quote for home page
    def self.get_random_quote
      # This works, but relies on sqlite's Random() function, so not great code
      # order('Random()').first
  
      # Better to use the Rails alternative:
      # 'active' scope called, and 'to_a' executes query and returns an array of proverb objects
      # 'sample' is a Ruby method that randomly grabs a value (in this case, a proverb object) from an array
      self.active.to_a.sample
    end
    
    # Make sure that both klingon phrase and translation included
    validates_presence_of :klingon, :translation
    
    # Scopes that we can use...
    scope :alphabetical, -> { order('translation') }
    scope :active, -> { where(active: true) }

end
