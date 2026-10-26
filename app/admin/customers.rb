ActiveAdmin.register Customer do
  # Permit attributes including the attached image
  permit_params :full_name, :phone_number, :email_address, :notes, :image

  # Explicit filters (excluding :image to prevent ActiveStorage search errors)
  filter :full_name
  filter :phone_number
  filter :email_address
  filter :notes
  filter :created_at

  # Admin Index Page View
  index do
    selectable_column
    id_column
    column :full_name
    column :phone_number
    column :email_address
    column :notes
    column "Image" do |customer|
      if customer.image.attached?
        image_tag url_for(customer.image), size: "50x50"
      else
        "No Image"
      end
    end
    column :created_at
    actions
  end

  # Admin Show Page View
  show do
    attributes_table do
      row :id
      row :full_name
      row :phone_number
      row :email_address
      row :notes
      row :image do |customer|
        if customer.image.attached?
          image_tag url_for(customer.image), size: "200x200"
        else
          "No Image Attached"
        end
      end
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end

  # Admin Form (New / Edit Customer)
  form do |f|
    f.inputs "Customer Details" do
      f.input :full_name
      f.input :phone_number
      f.input :email_address
      f.input :notes
      f.input :image, as: :file, hint: f.object.image.attached? ? image_tag(url_for(f.object.image), size: "100x100") : content_tag(:span, "No image currently uploaded")
    end
    f.actions
  end
end