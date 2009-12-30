class VisitationsController < ApplicationController
  # GET /visitations
  # GET /visitations.xml
  def index
    @visitations = Visitation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @visitations }
    end
  end

  # GET /visitations/1
  # GET /visitations/1.xml
  def show
    @visitation = Visitation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @visitation }
    end
  end

  # GET /visitations/new
  # GET /visitations/new.xml
  def new
    @visitation = Visitation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @visitation }
    end
  end

  # GET /visitations/1/edit
  def edit
    @visitation = Visitation.find(params[:id])
  end

  # POST /visitations
  # POST /visitations.xml
  def create
    @visitation = Visitation.new(params[:visitation])

    respond_to do |format|
      if @visitation.save
        flash[:notice] = 'Visitation was successfully created.'
        format.html { redirect_to(@visitation) }
        format.xml  { render :xml => @visitation, :status => :created, :location => @visitation }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @visitation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /visitations/1
  # PUT /visitations/1.xml
  def update
    @visitation = Visitation.find(params[:id])

    respond_to do |format|
      if @visitation.update_attributes(params[:visitation])
        flash[:notice] = 'Visitation was successfully updated.'
        format.html { redirect_to(@visitation) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @visitation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /visitations/1
  # DELETE /visitations/1.xml
  def destroy
    @visitation = Visitation.find(params[:id])
    @visitation.destroy

    respond_to do |format|
      format.html { redirect_to(visitations_url) }
      format.xml  { head :ok }
    end
  end
end
