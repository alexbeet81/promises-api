class PromiseListPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      # scope.where(user: user)
      scope.all
    end
  end

  def show?
    true
  end
end
