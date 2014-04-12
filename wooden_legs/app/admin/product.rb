ActiveAdmin.register Product do


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  permit_params :name, :description, :price, :stock_quantity, :category_id, :designer_id, :image, :delete_image
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

  index do
    column :id
    column :name
    column :description
    column :price, sortable: :price do |product|
      number_to_currency product.price
    end
    column :stock_quantity
    column :category
    column "Image" do |product|
      image_tag(product.image.url, :height => '100')
    end
    
    column :updated_at
    default_actions
  end


  form multipart: true do |f|
    f.inputs "Product Details" do
      f.input :name
      f.input :description
      f.input :price
      f.input :stock_quantity
      f.input :category_id,   as: :select,  collection: Category.all
      f.input :designer_id, as: :select, collection: Designer.all
      f.input :image, required: false, as: :file, 
        hint: f.template.image_tag(f.object.image.url(:thumb)) #taken from https://gist.github.com/jameslafa/6019438
      f.input :delete_image, as: :boolean, required: :false, label: 'Remove image' #taken from http://stackoverflow.com/questions/21838434/remove-paperclip-images-active-admin
    end
    f.actions
  end

  
  

end
