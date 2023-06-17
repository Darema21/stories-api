class Api::V1::StoriesController < Api::V1::BaseController
  def index
    @stories = Story.all
    render json: @stories #Just for testing
  end

  # def index
  #   @stories = Story.all
  # end

  def show
    @story = Story.find(params[:id])
  end

  def create
    @story = Story.new(params.require(:story).permit(:title, :body))
    if @story.save
      render :show
    else
      render json: { errors: @story.errors.full_messages }
    end

  end

end
