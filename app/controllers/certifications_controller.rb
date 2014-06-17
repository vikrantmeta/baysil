class CertificationsController < ApplicationController
  # GET /certifications
  # GET /certifications.json
  def index
    @certifications = Certification.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @certifications }
    end
  end

  # GET /certifications/1
  # GET /certifications/1.json
  def show
    @certification = Certification.find(params[:id])

    respond_to do |format|
      format.html { render :template => "mypage/mypage" }
      format.json { render json: @certification }
    end
  end

  # GET /certifications/new
  # GET /certifications/new.json
  def new
    @certification = Certification.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @certification }
    end
  end

  # GET /certifications/1/edit
  def edit
@mode="edit"
    
	respond_to do |format|
      format.html { render :template => "mypage/mypage" }
      format.json { render json: @certification }
    end
  end

  # POST /certifications
  # POST /certifications.json
  def create
user=User.find_by_id(current_user.id)
    @certification = Certification.new(params[:certification])
	@certification.user=user
    respond_to do |format|
      if @certification.save
        format.html { redirect_to @certification, notice: 'Certification was successfully created.' }
        format.json { render json: @certification, status: :created, location: @certification }
      else
        format.html { render action: "new" }
        format.json { render json: @certification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /certifications/1
  # PUT /certifications/1.json
  def update
    @certification = Certification.find(params[:id])

    respond_to do |format|
      if @certification.update_attributes(params[:certification])
        format.html { redirect_to @certification, notice: 'Certification was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @certification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /certifications/1
  # DELETE /certifications/1.json
  def destroy
    @certification = Certification.find(params[:id])
    @certification.destroy

    respond_to do |format|
      format.html { redirect_to certifications_url }
      format.json { head :no_content }
    end
  end
end
