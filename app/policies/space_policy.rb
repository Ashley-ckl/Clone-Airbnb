class SpacePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def new?
    true
  end

  def create?
    true
  end

  def show?
    true
  end

  def search?
    true
  end

end
