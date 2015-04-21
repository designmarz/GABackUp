class CommentsController < ApplicationController
 before_filter :load_commentable

  def index
    @comments = @commentable.comments
  end
  
  def new
    @comment = @commentable.comments.new
  end

  def create 
    @comment = @commentable.comments.new comment_params
    if @comment.save
      redirect_to @commentable, notice: "Comment Posted"
    else
      render :new
    end
  end

  def destroy
    @deletecomment.destroy
    redirect_to movies_path
  end
  
  def remove_movie_comment
    # binding.pry
    @deletecomment.comments.delete(Comment.find(params[:id]))
    redirect_to @movie 
  end
  

  # def remove_actor
  #   @movie.actors.delete(Actor.find(params[:actor_id]))
  #   redirect_to @movie 
  # end


  
  def remove_actor_comment
    @actor.comments.delete(Comment.find(params[:id]))
    redirect_to @actor 
  end


  private 
  
    def load_commentable
      resource, id = request.path.split('/')[1, 2]
      # @deletecomment = resource.singularize + ("_id")
      # binding.pry
      @commentable = resource.singularize.classify.constantize.find(id)
    end

    # def load_commentable
    #   klass = [Actor, Movie].detect { |c| params["#{c.name.underscore}_id"]}
    #   @commentable = klass.find(params["#{klass.name.underscore}_id"])
    # end
            # was find_
    # def load_commentable
    #   params.each do |name, value|
    #     if name =~ /(.+)_id$/
    #       return $1.classify.constantize.find(value)
    #     end
    #   end
    #   nil
    # end



    def comment_params
      params.require(:comment).permit(:content)
    end
    
end
