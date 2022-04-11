# class Book
#     attr_accessor :title, :author
#     def initialize(title, author)
#       @title  = title
#       @author = author
#     end
#   end
# deep_dive = Book.new("Ruby Deep Dive", "Jesus Castello")
# fun = Book.new("Fun With Programming", "White Cat")

# class Food
#     def self.cook
# class Food 
#     def initialize(name)
#         @name=name
#     end
# end

# orange = Food.new("orange")
# peach = Food.new("peach")
# recreation_centre.rb
# recreation_centre_expanded.rb

module Swimmable
    def swim
      "Can swim here!"
    end
  end
  
  class GreenSpace
    attr_accessor :name, :num_trees
    
    def initialize(name, num_trees) 
      @name = name
      @num_trees = num_trees
    end
  end
  
  class CityPark < GreenSpace; end
  
  class RecreationCentre < CityPark
    attr_reader :philanthropist
    
    include Swimmable
  
    @@num_rec_centres = 0
  
    def initialize(name, num_trees, philanthropist)
      super(name, num_trees)
      @philanthropist = philanthropist
      @@num_rec_centres += 1
    end
  
    def whats_this
      self
    end
  
    def self.num_rec_centres
      @@num_rec_centres
    end
  end
  
  class Forest < GreenSpace; end
  
  class Lake < Forest
    include Swimmable
  end
  
  dufferin_park = CityPark.new("Dufferin Park", 2000)
  wallace_emerson = RecreationCentre.new("Wallace Emerson", 2, "Joe Beef")
  scadding_court = RecreationCentre.new("DunBat", 25, "Jim Balsillie")
  
  
  RecreationCentre.num_rec_centres # => 2
  scadding_court.name # => "DunBat"
  scadding_court.name = "Scadding Court"
  scadding_court.name # => "Scadding Court"
  scadding_court.whats_this # => #<RecreationCentre:0x00007fc73b9a0060 @name="Scadding Court", @num_trees=25, @philanthropist="Jim Balsillie">