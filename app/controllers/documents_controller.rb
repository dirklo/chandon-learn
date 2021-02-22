class DocumentsController < ApplicationController
    before_action :set_document, only: %i[ show edit update destroy ]

    def show
        if logged_in?
            DocumentResult.create(user: current_user, document: @document) unless DocumentResult.find_by(user: current_user, document: @document)
            render 'documents/show'
        end
    end

    def new
        if is_admin?
            @units = Unit.all
            @document = Document.new
            render 'documents/new'
        else
            redirect_to home_page_path
        end
    end

    def edit
        if is_admin?
            @units = Unit.all
            render "documents/edit"
        else
            redirect_to home_page_path
        end
    end

    def create
        if is_admin?
            @document = Document.create(document_params)
            redirect_to edit_unit_path(@document.unit)
        else
            redirect_to home_page_path
        end
    end

    def update
        if is_admin?
            @document.update(document_params)
            redirect_to edit_unit_path(@document.unit)
        else
            redirect_to home_page_path
        end
    end

    def destroy
        if is_admin?
            @document.destroy
            @document.document_results.destroy_all
            redirect_to edit_unit_path(@document.unit)
        else
            redirect_to home_page_path
        end
    end

    private
        def set_document
            @document = Document.find(params[:id])
        end

        def document_params
            params.require(:document).permit(:title, :content, :photo_url, :unit_id)
        end
end