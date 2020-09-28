ActiveAdmin.register Post do

  filter :title
  filter :author
  filter :created_at
  filter :categories

  scope :published

  index do
    selectable_column
    column :id
    column :title
    column :author
    column :created_at
    actions
  end
  
end
