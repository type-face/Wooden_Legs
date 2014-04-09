ActiveAdmin.register Customer do

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  permit_params :first_name, :last_name, :address, :city, :postal_code, :email, :phone, :province_id
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

  index do
    column :id
    column :first_name
    column :last_name
    column :address
    column :city
    column :postal_code
    column :email
    column :phone
    # column "Orders" do |customer|
    #   link_to customer.order
    # end
  end
  
end
