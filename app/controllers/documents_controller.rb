class DocumentsController < ApplicationController
  def index
    @documents = Document.all
  end

  def show
    @document = Document.find_by(title: _id)
  end

  private

  def _id
    params["id"]
  end
end
