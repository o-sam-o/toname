class FileNameInfo
  attr_accessor :raw_name, :location, :name, :year, :series, :episode

  def initialize(params = {})
    @name = params[:name]
    @year = params[:year]
    @raw_name = params[:raw_name]
    @location = params[:location]
    @series = params[:series]
    @episode = params[:episode]
  end

  def to_s
    s = ''
    if @name
      s += @name
      s += " [#{@year}]" if @year
      s += " S: #{@series} E: #{@episode}" if @series || @episode
    elsif @raw_name
      s += @raw_name
    else
      s += @location
    end
    s
  end
  
  def <=>(other)
    if series && other.series && series != other.series
      return (series <=> other.series) 
    elsif episode && other.episode && episode != other.episode
      return (episode <=> other.episode)
    elsif name != other.name
      return (name <=> other.name)
    elsif year && other.year
      #Note: with year we want newest first
      return (other.year <=> year)
    else
      return 0
    end
  end
end