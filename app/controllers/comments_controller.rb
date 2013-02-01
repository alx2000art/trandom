class CommentsController < ApplicationController

def create
   post = Post.find(params[:post_id]) 
   @comment = @post.comment.create(params[:comment]) 
   redirect_to post_path(post)
end

end
