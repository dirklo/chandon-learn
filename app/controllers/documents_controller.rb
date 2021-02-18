class DocumentsController < ApplicationController
    before_action :set_document, only: %i[ show edit update ]
    def index
        @documents = Document.all
        render 'documents/index'
    end

    def show
    end

    def new
        @units = Unit.all
        @document = Document.new
    end

    def edit
    end

    def create
        @document = Document.create(params.require(:document).permit(:title, :content, :photo_url, :unit_id))
        redirect_to document_path(@document)
    end

    def update
        @document.update(params.require(:document).permit(:content, :photo_url))
        redirect_to document_path(@document)
    end

    def destroy
        @document.destroy
        redirect_to documents_path
    end

    private
        def set_document
            @document = Document.find(params[:id])
        end

end