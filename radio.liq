live = input.http("http://localhost:8050/live") # écoute source live

playlist = playlist("/home/icecast/playlist.txt")

radio = fallback(track_sensitive=false, [live, playlist, blank()])

output.icecast(
  %mp3,
  host="localhost",
  port=8050,
  password="1212",
  mount="/auto",
  name="Radio AutoDJ + Live",
  genre="Mix",
  description="Radio avec live et autodj",
  radio
)
