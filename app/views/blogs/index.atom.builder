atom_feed do |feed|
  feed.title "Sample feed"
  feed.updated((@blogs.first.created_at))
 
  @blogs.each do |post|
    feed.entry(post) do |entry|
      entry.title("<a href=\"#{post.link}\">#{post.title}</a>", :type => 'html')
      entry.content(post.content, :type => 'html')

      entry.author do |author|
        author.name("Sample author name")
      end
    end
  end
end
