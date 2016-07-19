class UrlsController < ApplicationController
  def new
    @long_url = Url.new
  end

  def create
    @long_url = Url.new(url_params)
    if @long_url.save
      redirect_to '/urls'
    else
      render :new
    end
  end

  def destroy
  end

  def show
    # redirect_to 'www.google.com'
  end

  def update
  end

  def edit
  end

  def index
    @all_urls = Url.all
  end

  private
  def url_params
    params.require(:url).permit(:original)
  end
end
