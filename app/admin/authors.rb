ActiveAdmin.register Author do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :genre
  actions :all, except: [:destroy]

  form do |f|
    inputs 'Author' do
      f.input :name
      f.input :genre
    end
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :genre, :bio]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
