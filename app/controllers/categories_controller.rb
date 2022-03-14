class CategoriesController < ApplicationController
  before_action :set_category, only: %i[ show update destroy ]

  # GET /categories
  def index
    @categories = Category.all

    render json: @categories, methods: [:image_url]
  end

  # GET /categories/1
  def show
    render json: @category, methods: [:image_url]
  end

  # POST /categories
  def create
    @category = Category.new(addCategory_params)

    if @category.save
      render json: @category, methods: [:image_url]
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /categories/1
  def update
    if @category.update(addCategory_params)
      render json: @category, methods: [:image_url]
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /categories/1
  def destroy
    @category.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def category_params
      params.require(:category).permit(:name, :description, :image)
    end

    def addCategory_params
      params.permit(:name, :description, :image)
    end
end
