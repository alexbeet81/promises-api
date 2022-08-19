class Api::V1::PromiseListsController < Api::V1::BaseController
  def index
    @promise_lists = policy_scope(PromiseList)
  end
end
