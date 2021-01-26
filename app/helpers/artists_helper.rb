module ArtistsHelper


def display_artist
  if artist.song.find_by(artist_id)
    link_to @artist
  else
    link_to "Add Artist", song_edit_path(@song)
  end
end

end

If an artist is already associated with the song, return a link to the artist's show page
If an artist is not associated with the song (a.k.a. 'else'), return a link to the song's edit page, with a link text of "Add Artist"