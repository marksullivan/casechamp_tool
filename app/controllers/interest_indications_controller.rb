class InterestIndicationsController < ApplicationController
  def index
    @interest_indications = InterestIndication.all

    render("interest_indications/index.html.erb")
  end

  def show
    @interest_indication = InterestIndication.find(params[:id])

    render("interest_indications/show.html.erb")
  end

  def new
    @interest_indication = InterestIndication.new

    render("interest_indications/new.html.erb")
  end

  def create
    @interest_indication = InterestIndication.new

    @interest_indication.interest = params[:interest]
    @interest_indication.competition_name = params[:competition_name]
    @interest_indication.email_address = params[:email_address]
    @interest_indication.end_date = params[:end_date]

    save_status = @interest_indication.save

    if save_status == true
      redirect_to("/interest_indications/#{@interest_indication.id}", :notice => "Interest indication created successfully.")
    else
      render("interest_indications/new.html.erb")
    end
  end

  def edit
    @interest_indication = InterestIndication.find(params[:id])

    render("interest_indications/edit.html.erb")
  end

  def update
    @interest_indication = InterestIndication.find(params[:id])

    @interest_indication.interest = params[:interest]
    @interest_indication.competition_name = params[:competition_name]
    @interest_indication.email_address = params[:email_address]
    @interest_indication.end_date = params[:end_date]

    save_status = @interest_indication.save

    if save_status == true
      redirect_to("/interest_indications/#{@interest_indication.id}", :notice => "Interest indication updated successfully.")
    else
      render("interest_indications/edit.html.erb")
    end
  end

  def destroy
    @interest_indication = InterestIndication.find(params[:id])

    @interest_indication.destroy

    if URI(request.referer).path == "/interest_indications/#{@interest_indication.id}"
      redirect_to("/", :notice => "Interest indication deleted.")
    else
      redirect_to(:back, :notice => "Interest indication deleted.")
    end
  end
end
