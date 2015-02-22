class PostPolicy < ApplicationPolicy
   def destroy?
    user.present? && can_moderate?
  end
end