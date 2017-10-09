class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(entry_params)
    ####################################
    # How to add the current_user.id to
    # this without shoveling? Change the
    # private params method??
    #####################################
    current_user.entries << @entry
    if @entry.persisted?
      redirect_to @entry
    else
      @errors = @entry.errors.full_messages
      render 'entries/new'
    end
  end

  def edit
    @entry = Entry.find(params[:id])
  end

  def update
    @entry = Entry.find(params[:id])
    @entry.assign_attributes(entry_params)

    if @entry.save
      redirect_to entry_path
    else
      @errors = @entry.errors.full_messages
      render 'entries/edit'
    end
  end

  def destroy
    @entry.find(params[:id])
    @entry.destroy
    redirect_to entries_path
  end

  private

  def entry_params
    params.require(:entry).permit(:title, :body)
  end
end