class Article
    attr_reader :author, :magazine, :title
    @@all = []
  
    def initialize(author, magazine, title)
      @author = author
      @magazine = magazine
      @title = title
      @@all << self
    end
  
    def self.all
      @@all
    end
  end
  
  # Sample author and magazine objects
  class Author
    attr_reader :name
    def initialize(name)
      @name = name
    end
  end
  
  class Magazine
    attr_reader :name
    def initialize(name)
      @name = name
    end
  end
  
  # Creating a sample article object
  author = Author.new("Wakili Timam")
  magazine = Magazine.new("Motorcycle Diary")
  article = Article.new(author, magazine, "New motorbikes")
  
  # Outputting the author and magazine names
  puts article.author.name # should output "Wakili Timam"
  puts article.magazine.name # should output "motorcycle diary"
  