ActiveAdmin.register User do

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :list, :of, :attributes, :on, :model, :first_name, :last_name, :password, :password_confirmation, :email, :email_confirmation
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  form do |f|
    f.inputs "New User Details" do
      f.input :first_name
      f.input :last_name
      if f.object.new_record?
        f.input :password, label: "Password:"
        f.input :password_confirmation, label: "Password Confirmation:"
      end
      f.input :email
      f.input :email_confirmation
    end
    f.actions
  end  
end
