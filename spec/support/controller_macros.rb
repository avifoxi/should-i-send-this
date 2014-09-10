module ControllerMacros
  def login_admin
      @request.env["devise.mapping"] = Devise.mappings[:admin]
      user = FactoryGirl.build(:user)
      user.save!(:validate => false)
      user.add_role(:admin)
      sign_in user
      @current_user = user
  end

  def login_user
      @request.env["devise.mapping"] = Devise.mappings[:user]
      user = FactoryGirl.build(:user)
      user.save!(:validate => false)
      sign_in user
      @current_user = user
  end
end

# Taken from: http://dchua.com/2013/08/19/dry-up-your-devise-logins-in-rspec/