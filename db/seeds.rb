10.times do |i|
  Post.create!(title: "Post #{i}", body: "Some random text ...")
end

Post.all.each do |post|
  3.times do |i|
    post.comments.create!(body: "Comment #{i}")
  end if post.comments.empty?
end
