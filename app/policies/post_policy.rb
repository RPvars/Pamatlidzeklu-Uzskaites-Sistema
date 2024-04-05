class PostPolicy < ApplicationPolicy
  attr_reader :user, :post

  def initialize(user, post)
    @user = user
    @post = post
  end

  def update?
    user.admin? || user.standard?
  end

  def create?
    user.admin? || user.standard?
  end

  def edit?
    update?
  end

  def destroy?
    user.admin?
  end

  def show?
    true
  end
end
