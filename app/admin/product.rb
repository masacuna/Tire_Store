ActiveAdmin.register Product do

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :list, :of, :attributes, :on, :model, :name, :price, :description, :stock_quantity, :category_id, :image, :remove_image 
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

  controller do
    def index
      params[:order] = "id_asc"
      super
    end
  end
  
  form do |f|
      f.inputs "New Product Details" do
        f.input :name 
        f.input :price
        f.input :description
        f.input :stock_quantity
        f.input :category
        f.input :image, label: 'Current Filename (read only)' , as: :string, input_html: { readonly: true }
        f.input :image 
        f.input :remove_image, as: :boolean, required: :false, label: "Remove Image"
        
      end


    
      # knows to add save or cancel button
      f.actions
    end
  end 
