# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class

class Photo
    attr_accessor :user, :comments
    def initialize
        @comments: []
    end

    def comments=(comment)
        @comments.push comment
    end

    def make_comment(comment)
        self.comments = Comment.new(comment)
    end
end

class User
    attr_reader :name
    def initialize(name)
        @name = name
    end
end

class Comment
    @@all = []
    def initialize(comment)
        @@all.push comment
    end
end


sandwich_photo = Photo.new
sophie = User.new("Sophie")
sandwich_photo.user = sophie
sandwich_photo.user.name
# => "Sophie"
sophie.photos
# => [#<Photo:0x00007fae2880b370>]


sandwich_photo.comments
# => []

sandwich_photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
sandwich_photo.comments
# => [#<Comment:0x00007fae28043700>]

Comment.all
#=> [#<Comment:0x00007fae28043700>]
