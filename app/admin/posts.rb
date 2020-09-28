ActiveAdmin.register Post do

  filter :title
  filter :author
  filter :created_at
  filter :categories

  scope :published

  member_action :publish, method: :put do
    resource.publish!
    redirect_to resource_path, notice: "Published!"
  end

  action_item :publish, only: :show, if: proc { !resource.published? } do
    link_to 'Publish', [:publish, :admin, resource], method: :put
  end

  index do
    selectable_column
    column :id
    column :title
    column :author
    column :created_at
    actions
  end

  show do
    attributes_table do
      row :title
      row :body
      row :author
      row :created_at
      row :updated_at
      row :published_at
      row :categories
    end
    active_admin_comments
  end
  
  permit_params :title, :body, :author_id, category_ids: []

  form do |f|
    f.inputs :title, :body, :author
    f.inputs "Categories" do
      f.input :categories, as: :check_boxes
    end
    actions
  end
end
