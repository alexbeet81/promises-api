class Api::V1::PromiseListsController < Api::V1::BaseController
  before_action :authenticate_user!
  before_action :set_promise_list, only: [:show, :update, :destroy]

  def index
    @promise_lists = policy_scope(PromiseList)
  end

  def show; end

  def update
    if @promise_list.update(promise_list_params)
      render :show
    else
      render_error
    end
  end

  def create
    # promise list new with promise_list_params
    @promise_list = PromiseList.new(promise_list_params)
    @promise_list.user = current_user
    authorize @promise_list

    if @promise_list.save
      render :show
    else
      render_error
    end
  end

  def destroy
    @promise_list.destroy

    head :no_content
  end

  private

  def promise_list_params
    params.require(:promise_list).permit(:title, :description)
  end

  def set_promise_list
    @promise_list = PromiseList.find(params[:id])

    authorize @promise_list
  end

  def render_error
    render json: { errors: @promise_list.errors.full_messages }, status: :unprocessable_entity
  end
end
