require 'pry'
# require_relative "./post.rb"

class Author
attr_accessor :name

attr_reader :posts
@@authors = []


def self.authors
  @@authors
end

  def initialize (name)
    @name = name
    @@authors << self
    @posts = []
  end

  def add_post (post)
    # if !@posts then @posts = [] end

    post.author = self #pass the author's object
    # binding.pry
    @posts << post
  end

  def add_post_by_title (title)
    new_post = Post.new(title)
    new_post.author = self
    @posts << new_post
  end

  def self.post_count
    Post.all.length
  end


end
