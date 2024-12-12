class HomeController < ApplicationController
  def index
    @info = params[:info]
  end

  def scrape
    info = params[:info]
    if info.present? && info.match?(/^\d{4}$|^\d{3}[A-Z]$/)
      code = "https://kabutan.jp/stock/?code=#{info}"
      flash[:success] = "scraping ok"
      redirect_to home_index_path(info: code)
    else
      flash[:danger] = "scraping error"
      redirect_to home_index_path
    end
  end
end
