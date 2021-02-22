class AdminController < ApplicationController
    before_action :set_user, only: %i[ edit_user make_admin remove_admin update_unit_access ] 
    def edit_user
        if is_admin?
            @units = Unit.all
            render 'admin/user_edit_admin'
        else
            redirect home_page_path
        end 
    end

    def make_admin
        if is_admin?
            @user.admin = true
            @user.save
            redirect_to edit_user_admin_path(@user)
        end
    end

    def remove_admin
        if is_admin?
            @user.admin = false
            @user.save
            redirect_to edit_user_admin_path(@user)
        end
    end

    def update_unit_access
        if is_admin?
            if !params[:unit]
                UnitAccess.where(user_id: @user.id).each{|x| x.destroy}
            else
                accessible_units = params[:unit].keys.map do |unit_id|
                    Unit.find(unit_id)
                end
                accessible_units.each do |unit| 
                    if !UnitAccess.find_by(unit_id: unit.id, user_id: @user.id)
                        UnitAccess.create(unit_id: unit.id, user_id: @user.id)
                    end
                end
                Unit.all.each do |unit|
                    if UnitAccess.find_by(unit_id: unit.id, user_id: @user.id) && !accessible_units.include?(unit)
                        UnitAccess.find_by(unit_id: unit.id, user_id: @user.id).destroy
                    end 
                end
            end
            redirect_to edit_user_admin_path(@user)
        end 
    end

    private
        def set_user
            @user = User.find(params[:id])
        end
end