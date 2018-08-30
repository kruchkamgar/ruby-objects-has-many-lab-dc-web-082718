class Post
  attr_accessor :author
  attr_reader :title

@@all = []

  def self.all
    @@all
  end

  def initialize (post_title)
    @title = post_title

    @@all << self
  end

  def author_name

    if @author then return @author.name else return nil end
  end


end
