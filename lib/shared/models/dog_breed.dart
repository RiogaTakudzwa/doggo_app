import 'package:equatable/equatable.dart';

class DogBreed extends Equatable{
  final String breedName;
  final List<dynamic> subBreed;

  const DogBreed( {
    required this.breedName,
    required this.subBreed,
  });

  @override
  List<Object> get props => [
    breedName,
    subBreed
  ];

  factory DogBreed.fromJson(Map<String, List<String>> json){
    return DogBreed(
      breedName: json.keys.elementAt(0),
      subBreed: json.values.elementAt(0)
    );
  }

}