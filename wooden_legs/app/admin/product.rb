ActiveAdmin.register Product do

  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  permit_params :name, :description, :price, :stock_quantity, :category_id, :designer_id, :img_src
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
    column :updated_at
    default_actions
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Product Details" do
      f.input :name
      f.input :description
      f.input :price
      f.input :stock_quantity
      f.input :category_id,   as: :select,  collection: Category.all
      f.input :designer_id, as: :select, collection: Designer.all
      #f.input :img_src
    end
    #f.buttons
  end
  

end
