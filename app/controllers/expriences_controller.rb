class ExpriencesController < ApplicationController
  # GET /expriences
  # GET /expriences.json
  def index
    @expriences = Exprience.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @expriences }
    end
  end

  # GET /expriences/1
  # GET /expriences/1.json
  def show
    @exprience = Exprience.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @exprience }
    end
  end

  # GET /expriences/new
  # GET /expriences/new.json
  def new
    @exprience = Exprience.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @exprience }
    end
  end

  # GET /expriences/1/edit
  def edit
    @exprience = Exprience.find(params[:id])
  end

  # POST /expriences
  # POST /expriences.json
  def create
user=User.find_by_id(current_user.id)
    @exprience = Exprience.new(params[:exprience])
@exprience.user=user
    respond_to do |format|
      if @exprience.save
        format.html { redirect_to @exprience, notice: 'Exprience was successfully created.' }
        format.json { render json: @exprience, status: :created, location: @exprience }
      else
        format.html { render action: "new" }
        format.json { render json: @exprience.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /expriences/1
  # PUT /expriences/1.json
  def update
    @exprience = Exprience.find(params[:id])

    respond_to do |format|
      if @exprience.update_attributes(params[:exprience])
        format.html { redirect_to @exprience, notice: 'Exprience was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exprience.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expriences/1
  # DELETE /expriences/1.json
  def destroy
    @exprience = Exprience.find(params[:id])
    @exprience.destroy

    respond_to do |format|
      format.html { redirect_to expriences_url }
      format.json { head :no_content }
    end
  end
end
