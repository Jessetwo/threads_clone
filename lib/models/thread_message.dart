// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ThreadMessage {
  final String id;
  final String senderName;
  final String senderProfileImageUrl;
  final String message;
  final DateTime timeStamp;
  final int likesCount;
  final int retweetCount;
  final int commentsCount;

  ThreadMessage(
      {required this.id,
      required this.senderName,
      required this.senderProfileImageUrl,
      required this.message,
      required this.timeStamp,
      required this.likesCount,
      required this.retweetCount,
      required this.commentsCount});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'senderName': senderName,
      'senderProfileImageUrl': senderProfileImageUrl,
      'message': message,
      'timeStamp': timeStamp.millisecondsSinceEpoch,
      'likesCount': likesCount,
      'retweetCount': retweetCount,
      'commentsCount': commentsCount,
    };
  }

  factory ThreadMessage.fromMap(Map<String, dynamic> map) {
    return ThreadMessage(
      id: map['id'] as String,
      senderName: ['senderName'] as String,
      senderProfileImageUrl: ['senderProfileImageUrl'] as String,
      message: ['message'] as String,
      timeStamp: DateTime.fromMillisecondsSinceEpoch(map['timeStamp'] as int),
      likesCount: map['likesCount'] as int,
      retweetCount: ['retweetCount'] as int,
      commentsCount: map['commentsCount'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory ThreadMessage.fromJson(String source) =>
      ThreadMessage.fromMap(json.decode(source) as Map<String, dynamic>);
}

List<ThreadMessage> threadMessages = [
  ThreadMessage(
      id: '1',
      senderName: 'John Doe',
      senderProfileImageUrl: 'profile_1.jpg',
      message: 'Hi everyone what is new',
      timeStamp: DateTime.now().subtract(const Duration(minutes: 25)),
      likesCount: 1,
      retweetCount: 2,
      commentsCount: 3),
  ThreadMessage(
      id: '2',
      senderName: 'Jane Doe',
      senderProfileImageUrl: 'profile_2.jpg',
      message: 'It feels to be a developer',
      timeStamp: DateTime.now().subtract(const Duration(minutes: 10)),
      likesCount: 4,
      retweetCount: 5,
      commentsCount: 6),
  ThreadMessage(
      id: '3',
      senderName: 'James Doe',
      senderProfileImageUrl: 'profile_3.jpg',
      message: 'Self development is best form of development',
      timeStamp: DateTime.now().subtract(const Duration(minutes: 35)),
      likesCount: 4,
      retweetCount: 5,
      commentsCount: 6),
  ThreadMessage(
      id: '4',
      senderName: 'Joe Doe',
      senderProfileImageUrl: 'profile_4.jpg',
      message:
          'Today is the day the Lord has made. I will rejoice and be glad in it',
      timeStamp: DateTime.now().subtract(const Duration(minutes: 55)),
      likesCount: 4,
      retweetCount: 5,
      commentsCount: 6),
  ThreadMessage(
      id: '5',
      senderName: 'Jackson Doe',
      senderProfileImageUrl: 'profile_5.jpg',
      message: 'If not now, when?',
      timeStamp: DateTime.now().subtract(const Duration(minutes: 15)),
      likesCount: 4,
      retweetCount: 5,
      commentsCount: 6)
];
