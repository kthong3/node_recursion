class Node
  attr_accessor :names, :ordered
  def initialize
    @names = []
    @ordered = []
  end

  def add(name)
    if @names.empty?
      @names << name
    else
      @names << name
      read(@names)
    end
  end

  def names
    read(@names)
  end

  private
  def read(names)
    alphabet = ('a'..'z').to_a
    ordered = []
    i = 0
    while i < alphabet.length
      j = 0
      while j < names.length
        if names[j][0] == alphabet[i]
          ordered << names[j]
        end
        j += 1
      end
      i += 1
    end
    ordered
  end
end