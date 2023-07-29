import 'dart:convert';

import 'account.dart';
import 'card.dart';
import 'feature.dart';
import 'news.dart';

class UserListModel {
	int? id;
	String? name;
	Account? account;
	CreditCard? card;
	List<Feature>? features;
	List<News>? news;

	UserListModel({
		this.id, 
		this.name, 
		this.account, 
		this.card, 
		this.features, 
		this.news, 
	});

	factory UserListModel.fromMap(Map<String, dynamic> data) => UserListModel(
				id: data['id'] as int?,
				name: data['name'] as String?,
				account: data['account'] == null
						? null
						: Account.fromMap(data['account'] as Map<String, dynamic>),
				card: data['card'] == null
						? null
						: CreditCard.fromMap(data['card'] as Map<String, dynamic>),
				features: (data['features'] as List<dynamic>?)
						?.map((e) => Feature.fromMap(e as Map<String, dynamic>))
						.toList(),
				news: (data['news'] as List<dynamic>?)
						?.map((e) => News.fromMap(e as Map<String, dynamic>))
						.toList(),
			);

	Map<String, dynamic> toMap() => {
				'id': id,
				'name': name,
				'account': account?.toMap(),
				'card': card?.toMap(),
				'features': features?.map((e) => e.toMap()).toList(),
				'news': news?.map((e) => e.toMap()).toList(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [UserListModel].
	factory UserListModel.fromJson(String data) {
		return UserListModel.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [UserListModel] to a JSON string.
	String toJson() => json.encode(toMap());
}
