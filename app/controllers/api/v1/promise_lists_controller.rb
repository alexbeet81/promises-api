class Api::V1::PromiseListsController < Api::V1::BaseController
  before_action :authenticate_user!

  def index
    p "index"
    @promise_lists = policy_scope(PromiseList)
  end

  def show
    @promise_list = PromiseList.find(params[:id])

    authorize @promise_list
  end
end
