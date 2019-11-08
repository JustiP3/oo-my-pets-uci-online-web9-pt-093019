class Owner
  @@all = []
  def name
    @name.dup.freeze
  end
  def species
    @species.dup.freeze
  end


  def initialize(name)
@name = name
@species = "human"
@@all << self
  end

def say_species
"I am a #{species}."
end

def cats
Cats.all.select {|cat| cat.owner == self}
end

### Class Methods ###

def self.all
@@all
end

def self.count
  @@all.size
end

def self.reset_all
  @@all.delete_if {true}
end

end #end of class
