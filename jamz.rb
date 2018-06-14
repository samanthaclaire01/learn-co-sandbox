class  Album
  @@album_counter = 0
  @@album_counter =
  def release_date=(date)
    @release_date = date
  end
  def release_date
    @release_date
  end
  end
  
  kod = Album.new 
  kod.release_date = "April 2018"
  
  
  ye = Album.new
  ye.release_date = "June 2018"
  
  shawn_mendes = Album.new
  shawn_mendes.release_date = "May 2018"
  