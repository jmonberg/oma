class PolicyCategoriesController < ApplicationController
  before_action :set_policy_category, only: [:show, :edit, :update, :destroy]

  # GET /policy_categories
  # GET /policy_categories.json
  def index
    @policy_categories = PolicyCategory.all
  end

  # GET /policy_categories/1
  # GET /policy_categories/1.json
  def show
  end

  # GET /policy_categories/new
  def new
    @policy_category = PolicyCategory.new
  end

  # GET /policy_categories/1/edit
  def edit
  end

  # POST /policy_categories
  # POST /policy_categories.json
  def create
    @policy_category = PolicyCategory.new(policy_category_params)

    respond_to do |format|
      if @policy_category.save
        format.html { redirect_to @policy_category, notice: 'Policy category was successfully created.' }
        format.json { render :show, status: :created, location: @policy_category }
      else
        format.html { render :new }
        format.json { render json: @policy_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /policy_categories/1
  # PATCH/PUT /policy_categories/1.json
  def update
    respond_to do |format|
      if @policy_category.update(policy_category_params)
        format.html { redirect_to @policy_category, notice: 'Policy category was successfully updated.' }
        format.json { render :show, status: :ok, location: @policy_category }
      else
        format.html { render :edit }
        format.json { render json: @policy_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /policy_categories/1
  # DELETE /policy_categories/1.json
  def destroy
    @policy_category.destroy
    respond_to do |format|
      format.html { redirect_to policy_categories_url, notice: 'Policy category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_policy_category
      @policy_category = PolicyCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def policy_category_params
      params[:policy_category]
    end
end
