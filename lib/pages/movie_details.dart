import 'package:flutter/material.dart';
import 'package:movie_app/components/movie_card.dart';
import 'package:movie_app/models/movie.dart';

class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage({super.key, required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            MovieCard(movie: movie, isDetails: true),
            Text(
              'Movie Posters', 
              style: Theme.of(context).
                      textTheme.headlineSmall
            ),
            SizedBox(
              width: double.infinity,
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movie.images.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 4.0,
                    child: Image.network(movie.images[index], fit: BoxFit.cover),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}