import pdb
from models.artist import Artist
from models.album import Album
import repositories.album_repository as album_repository
import repositories.artist_repository as artist_repository

artist_repository.delete_all()
album_repository.delete_all()

artist_1 = Artist('Fleetwood Mac')
artist_repository.save(artist_1)
artist_2 = Artist('Kendrick Lamar')
artist_repository.save(artist_2)
artist_repository.select_all()
artist_repository.select(artist_1.id)

album_1 = Album('Rumors', 'Rock', artist_1)
album_repository.save(album_1)
album_2 = Album('DAMN.', 'Rap', artist_2)
album_repository.save(album_2)
album_repository.select_all()
album_repository.select(album_2.id)



pdb.set_trace()

