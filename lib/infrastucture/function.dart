
import '../domain/movie_model.dart';

List <MovieModel> movieList = [];


addNewMovie(String directorName,String movieName){
  final data = MovieModel(directorName:directorName, movieName: movieName);
  movieList.add(data);
  
}

removie(int index){
  movieList.removeAt(index);
}