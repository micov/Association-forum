#The autorization class
class Ability
  include CanCan::Ability

  def initialize(user_name)

    # if the user exists, load it otherwise create a temporary user
    user = User.find_by_liuid(user_name) || User.new 

    #an admin can access all classes and methods 
    if user.admin? 
      can :manage, :all

      # the user can access methods such as create and update on models
      #that the user is associated with        
    elsif user.has_associations? 
      can :create, Advert
      can :read, :all
      can :create, User

      #the user can update info on associated associations 
      user.associations.each do |uass|
        can :update,  Association do |ass|
          uass == ass
        end
      end

      #the user can update and destroy adverts for associated associtions
      user.associations.each do |ass| 
        can [:update, :destroy], Advert do |ad| 
          ass == Association.find(ad[:association_id])
        end
      end   
    else
      can :read, :all
    end

    # The first argument to `can` is the action you are giving the user permission to do.
    # If you pass :manage it will apply to every action. Other common actions here are
    # :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. If you pass
    # :all it will apply to every resource. Otherwise pass a Ruby class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details: https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
