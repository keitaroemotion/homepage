class Admins::DocumentsController < ApplicationController
  before_action :set_document, only: [:edit, :update, :destroy]

  def index
    @documents = Document.all
  end

  def new
    @document = Document.new
  end

  def created
    @document = params["document"]

    Document.new(
      title:    title,
      category: category,
      content:  content,
    ).save!

    redirect_to admins_documents_path
  end

  def edit
  end

  def create
    @document = Document.new(document_params)

    respond_to do |format|
      if @document.save
        format.html { redirect_to @document, notice: 'Document was successfully created.' }
        format.json { render :show, status: :created, location: @document }
      else
        format.html { render :new }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @document.update(document_params)
        format.html { redirect_to @document, notice: 'Document was successfully updated.' }
        format.json { render :show, status: :ok, location: @document }
      else
        format.html { render :edit }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @document.destroy
    respond_to do |format|
      format.html { redirect_to documents_url, notice: 'Document was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_document
    @document = Document.find(params[:id])
  end

  def document_params
    params[:document]
  end

  def title
    @document["title"]
  end
 
  def category
    @document["category"]
  end

  def content
    @document["content"]
  end
end
