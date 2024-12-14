import 'package:json_annotation/json_annotation.dart';

import 'rating.dart';

part 'movies_fact.g.dart';

@JsonSerializable()
class MoviesFact {
  @JsonKey(name: 'Title')
  String? title;
  @JsonKey(name: 'Year')
  String? year;
  @JsonKey(name: 'Rated')
  String? rated;
  @JsonKey(name: 'Released')
  String? released;
  @JsonKey(name: 'Runtime')
  String? runtime;
  @JsonKey(name: 'Genre')
  String? genre;
  @JsonKey(name: 'Director')
  String? director;
  @JsonKey(name: 'Writer')
  String? writer;
  @JsonKey(name: 'Actors')
  String? actors;
  @JsonKey(name: 'Plot')
  String? plot;
  @JsonKey(name: 'Language')
  String? language;
  @JsonKey(name: 'Country')
  String? country;
  @JsonKey(name: 'Awards')
  String? awards;
  @JsonKey(name: 'Poster')
  String? poster;
  @JsonKey(name: 'Ratings')
  List<Rating>? ratings;
  @JsonKey(name: 'Metascore')
  String? metascore;
  String? imdbRating;
  String? imdbVotes;
  @JsonKey(name: 'imdbID')
  String? imdbId;
  @JsonKey(name: 'Type')
  String? type;
  @JsonKey(name: 'DVD')
  String? dvd;
  @JsonKey(name: 'BoxOffice')
  String? boxOffice;
  @JsonKey(name: 'Production')
  String? production;
  @JsonKey(name: 'Website')
  String? website;
  @JsonKey(name: 'Response')
  String? response;

  MoviesFact({
    this.title,
    this.year,
    this.rated,
    this.released,
    this.runtime,
    this.genre,
    this.director,
    this.writer,
    this.actors,
    this.plot,
    this.language,
    this.country,
    this.awards,
    this.poster,
    this.ratings,
    this.metascore,
    this.imdbRating,
    this.imdbVotes,
    this.imdbId,
    this.type,
    this.dvd,
    this.boxOffice,
    this.production,
    this.website,
    this.response,
  });

  factory MoviesFact.fromJson(Map<String, dynamic> json) {
    return _$MoviesFactFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MoviesFactToJson(this);
}
