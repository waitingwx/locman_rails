class AdminAbility
  include CanCan::Ability
  def initialize(user)
    can :read, :dashboard
    can :access, :rails_admin       # only allow admin users to access Rails Admin

    if user.has_role? :admin
      can :manage, [Admin, Role,AdminAbility,City,Quxian,Shangquan]
    elsif user.has_role? :meijiu_dev
      can :manage, [Alcohol, Alcoholuser,Alcrecord,Alcscore,Alcoaddress,Category,Gradevin,Gradgood,Gradorder,Imgcategory,Orderitem,Webgood,Weborder,Serverlog]
    elsif user.has_role? :linju_dev
      can :manage, [Apply, Pass,Passimg,Serman,Event,Comment,Exchange,Show,Swipper,Tag,Tagging,Post,Postimg,Thumbsup,User,Weixin,Weixinimg,Wxsession]
    elsif user.has_role? :child_dev
      can :manage, [Child,Lap,Teacher,Checkup,Childimg,Childlap,Equipment,Growthcurve,Lapreport,Teacher,Lapresult,Sercycle]
    end

    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
