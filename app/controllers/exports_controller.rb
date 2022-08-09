class ExportsController < ApplicationController
  def export
    @export_data = build_export_data

    respond_to do |format|
      format.html { render :export }
      format.json { render json: @export_data }
    end
  end

  private

  def build_export_data
    Console.all.includes(:games).order(:name, 'games.title').map do |console|
      games_data = console.games.map { |game| game.slice(:title) }
      console.slice(:name).merge(games: games_data)
    end
  end
end
