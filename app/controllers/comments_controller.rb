class CommentsController < ApplicationController
    skip_before_action :verify_authenticity_token

    before_action :set_post

    def default_url_options(options={})
        { :protocol => "https" }
    end


    def create 
        #logger.info("**** This is a log message ****")
        comment = @post.comments.create! params.required(:comment).permit(:content)
        CommentsMailer.submitted(comment).deliver_later
        redirect_to @post
    end

    private 
      def set_post
        @post = Post.find(params[:post_id])
      end

end
