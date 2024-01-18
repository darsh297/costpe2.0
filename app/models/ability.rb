class Ability
  include CanCan::Ability

#   def initialize(current_user)

#     if(current_user.role_id==1)
#       can :manage, :all

#     elsif(current_user.role_id==6)
#         can :manage , :Workreport
#         can :manage , :Attendance
# end


def initialize(user)
  user ||= User.new

  if user.role_id == 1
    can :manage, :all
  elsif user.role_id == 2
      can :manage, :all

  elsif user.role_id == 3
        can :manage, :all

  elsif user.role_id == 4
          can :manage, :all

  elsif user.role_id == 5
            can :manage, :all
  elsif user.role_id == 6
    can :index, Workreport
    can :index, Attendance

  end
end
end
