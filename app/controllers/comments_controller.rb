class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)

    @comment.save
    
    ################################################################################
    ########## 저장이 되면 작성해놓은 자바스크립트 파일을 불러오자    ##############
    ########## 저장이  안 되면 자바스크립트 파일을 불러올 필요가 없다 ##############
    ########## 리다이렉트를 할 필요는 있을까?                         ##############
    ################################################################################

    redirect_to :back

  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
    
end
