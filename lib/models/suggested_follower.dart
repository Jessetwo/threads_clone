import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class SuggestedFollower {
  String id;
  String username;
  String profileImageUrl;
  bool isFollowing;

  SuggestedFollower({
    required this.id,
    required this.username,
    required this.profileImageUrl,
    required this.isFollowing,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'username': username,
      'profileImageUrl': profileImageUrl,
      'isFollowing': isFollowing,
    };
  }

  factory SuggestedFollower.fromMap(Map<String, dynamic> map) {
    return SuggestedFollower(
      id: map['id'] as String,
      username: map['username'] as String,
      profileImageUrl: map['profileImageUrl'] as String,
      isFollowing: map['isFollowing'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory SuggestedFollower.fromJson(String source) =>
      SuggestedFollower.fromMap(json.decode(source) as Map<String, dynamic>);
}

List<SuggestedFollower> suggestedFollower = [
  SuggestedFollower(
    id: '1',
    username: 'Alice Smith',
    profileImageUrl: '',
    isFollowing: true,
  ),
  SuggestedFollower(
    id: '2',
    username: 'Allen Smith',
    profileImageUrl: '',
    isFollowing: false,
  ),
  SuggestedFollower(
    id: '3',
    username: 'Adam Smith',
    profileImageUrl: '',
    isFollowing: true,
  ),
  SuggestedFollower(
    id: '4',
    username: 'Andrew Smith',
    profileImageUrl: '',
    isFollowing: false,
  ),
];
