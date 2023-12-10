class BookSelectionsController < ApplicationController
  before_action :set_book_selection, only: %i[ show edit update destroy ]

  # GET /book_selections or /book_selections.json
  def index
    @book_selections = BookSelection.all
  end

  # GET /book_selections/1 or /book_selections/1.json
  def show
  end

  # GET /book_selections/new
  def new
    @book_selection = BookSelection.new
  end

  # GET /book_selections/1/edit
  def edit
  end

  # POST /book_selections or /book_selections.json
  def create
    @book_selection = BookSelection.new(book_selection_params)

    respond_to do |format|
      if @book_selection.save
        format.html { redirect_to book_selection_url(@book_selection), notice: "Book selection was successfully created." }
        format.json { render :show, status: :created, location: @book_selection }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @book_selection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_selections/1 or /book_selections/1.json
  def update
    respond_to do |format|
      if @book_selection.update(book_selection_params)
        format.html { redirect_to book_selection_url(@book_selection), notice: "Book selection was successfully updated." }
        format.json { render :show, status: :ok, location: @book_selection }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @book_selection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_selections/1 or /book_selections/1.json
  def destroy
    @book_selection.destroy

    respond_to do |format|
      format.html { redirect_to book_selections_url, notice: "Book selection was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_selection
      @book_selection = BookSelection.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book_selection_params
      params.require(:book_selection).permit(:add_book, :book_id, :user_id)
    end
end
