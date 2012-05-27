module UsersHelper
  
  def has_associations? 
    if @current_user && User.find_user_by_email(@current_user)
    @ass = @current_user.asscociations.all
    end
  end
end
