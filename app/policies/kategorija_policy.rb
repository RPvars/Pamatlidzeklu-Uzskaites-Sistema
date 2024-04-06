class KategorijaPolicy < ApplicationPolicy
  # Define who can access the index action
  def index?
    user.admin?
  end

  # Define who can create a new Kategorija
  def create?
    user.admin?
  end

  # Define who can update Kategorija
  def update?
    user.admin?
  end

  # Define who can delete Kategorija
  def destroy?
    user.admin?
  end

  def show?
   user.admin?
  end

  # If you want to set a default rule for actions not explicitly defined,
  # you can override the `ApplicationPolicy` methods, for example:
  class Scope < Scope
    def resolve
      scope.all if user.admin?
    end
  end
end
