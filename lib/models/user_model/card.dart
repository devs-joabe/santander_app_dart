import 'dart:convert';

class Card {
	int? id;
	String? number;
	int? limit;

	Card({this.id, this.number, this.limit});

	factory Card.fromMap(Map<String, dynamic> data) => Card(
				id: data['id'] as int?,
				number: data['number'] as String?,
				limit: data['limit'] as int?,
			);

	Map<String, dynamic> toMap() => {
				'id': id,
				'number': number,
				'limit': limit,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Card].
	factory Card.fromJson(String data) {
		return Card.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Card] to a JSON string.
	String toJson() => json.encode(toMap());
}
