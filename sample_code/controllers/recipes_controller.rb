class RecipesController < ApplicationController
  
  def index
    @main_ingredients = Recipe.allMainIngredients
    @side_ingredients = Recipe.allSideIngredients
  end
  
  def create
    if params[:title] == "" || params[:cook_time] == "" || params[:directions] == "" || params[:main_ingredient] == "" || params[:side_ingredient] == ""
      flash[:notice] = "YOU MUST SPECIFY ALL RECIPE CRITERIA"
      redirect_to :root
    elsif params[:cook_time].to_i <= 0 || params[:cook_time].to_i > 999 || params[:cook_time].to_i % 1 != 0
      flash[:notice] = "You must enter cook time in whole minutes"
      redirect_to :root
    else
      recipe = Recipe.new()
      recipe.title = params[:title]
      recipe.cook_time = params[:cook_time]
      recipe.directions = params[:directions]
      recipe.main_ingredient = params[:main_ingredient]
      recipe.side_ingredient = params[:side_ingredient]
      recipe.recipe_image = params[:recipe_image]
      recipe.save!
      flash[:notice] = "Successfully added " + recipe.title
      redirect_to :root
    end
  end
  
  def new
    
  end
  

  def show
    if params[:main_ingredient] == "select" || params[:side_ingredient] == "select"
      flash[:notice] = "YOU MUST SPECIFY BOTH INGREDIENTS"
      redirect_to(:root)
      return
    end

    
    if params.has_key?(:ids)
      @ids = params[:ids].split(",")
      @recipe = Recipe.where("id NOT IN (?)", @ids)
      
    else
      @ids = []
      @recipe = Recipe
    end
    @recipe = @recipe.order(cook_time: :asc)
    @recipe = @recipe.find_by main_ingredient: params[:main_ingredient], side_ingredient: params[:side_ingredient]
    if @recipe.nil? and !@ids.empty?
      flash[:notice] = "There are no more recipes for these ingredients"
      redirect_to(:root)
      return
    elsif @recipe.nil?

      flash[:notice] = "There is no recipe with these ingredients"
      redirect_to(:root)
      return
    end
    
    @ids.push @recipe.id
    
  end
  
  def administrator_login
    
  end
  
  def administrator
    
  end
end
