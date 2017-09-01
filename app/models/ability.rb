class Ability
  include CanCan::Ability

  attr_reader :user

  def initialize(user)
    @user = user
    if user
      # user.admin ? admin_abilities : user_abilities
      user_abilities
    else
      guest_abilities
    end
  end

  def guest_abilities
    can :read, User
  end

  def admin_abilities
    can :manage, :all
  end

  def user_abilities
    # can :manage, :all
    guest_abilities
    can :read, [Pet, User, Pet::Kind, Pet::Image]
    can :manage, Pet, user_id: user.id
    can :manage, Pet::Image, user_id: user.id
    can :manage, User, id: user.id
    can :manage, Message, id: user.id
  end
end
