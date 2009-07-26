class ItemsController < ApplicationController
  # GET /items
  # GET /items.xml
  def index
    @items = Item.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @items }
    end
  end

  # GET /items/1
  # GET /items/1.xml
  def show
    @item = Item.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @item }
    end
  end

  # GET /items/new
  # GET /items/new.xml
  def new
		@subcategory = Subcategory.find(params[:subcategory_id])
		@category = @subcategory.category
    @item = Item.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @item }
    end
  end

  # GET /items/1/edit
  def edit
    @item = Item.find(params[:id])
		@subcategory = @item.subcategory
		@category = @subcategory.category
  end

  # POST /items
  # POST /items.xml
  def create
    @item = Item.new(params[:item])
		@item.value = currency_to_number(params[:item][:value])
		@item.subcategory = Subcategory.find(params[:subcategory_id])		

    respond_to do |format|
      if @item.save
        flash[:notice] = 'Item criado com sucesso.'
        format.html { redirect_to categories_path }
      else
        format.html { render :action => "new" }
      end
    end
  end

  # PUT /items/1
  # PUT /items/1.xml
  def update
    @item = Item.find(params[:id])
		params[:item][:value] = currency_to_number(params[:item][:value])

    respond_to do |format|
      if @item.update_attributes(params[:item])
        flash[:notice] = "Item #{@item.name} atualizado com sucesso."
        format.html { redirect_to categories_path }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.xml
  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    respond_to do |format|
      format.html { redirect_to categories_path }
      format.xml  { head :ok }
    end
  end
end
