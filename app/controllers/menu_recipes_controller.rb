class MenuRecipesController < ApplicationController
  before_action :set_menu_recipe, only: [:show, :edit, :update, :destroy]

  # GET /menu_recipes
  # GET /menu_recipes.json
  def index
    @menu_recipes = MenuRecipe.all
  end

  # GET /menu_recipes/1
  # GET /menu_recipes/1.json
  def show
  end

  # GET /menu_recipes/new
  def new
    @menu_recipe = MenuRecipe.new
  end

  # GET /menu_recipes/1/edit
  def edit
  end

  # POST /menu_recipes
  # POST /menu_recipes.json
  def create
    @menu_recipe = MenuRecipe.new(menu_recipe_params)

    respond_to do |format|
      if @menu_recipe.save
        format.html { redirect_to @menu_recipe, notice: 'Menu recipe was successfully created.' }
        format.json { render :show, status: :created, location: @menu_recipe }
      else
        format.html { render :new }
        format.json { render json: @menu_recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /menu_recipes/1
  # PATCH/PUT /menu_recipes/1.json
  def update
    respond_to do |format|
      if @menu_recipe.update(menu_recipe_params)
        format.html { redirect_to @menu_recipe, notice: 'Menu recipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @menu_recipe }
      else
        format.html { render :edit }
        format.json { render json: @menu_recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menu_recipes/1
  # DELETE /menu_recipes/1.json
  def destroy
    @menu_recipe.destroy
    respond_to do |format|
      format.html { redirect_to menu_recipes_url, notice: 'Menu recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu_recipe
      @menu_recipe = MenuRecipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def menu_recipe_params
      params.fetch(:menu_recipe, {})
    end
end
