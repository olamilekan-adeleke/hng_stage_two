// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserDetailsModel {
  final String fullname;
  final String username;
  final String slackUsername;
  final String githubUsername;
  final String about;

  UserDetailsModel({
    this.fullname = "",
    this.username = "",
    this.slackUsername = "",
    this.githubUsername = "",
    this.about = "",
  });

  UserDetailsModel copyWith({
    String? fullname,
    String? username,
    String? slackUsername,
    String? githubUsername,
    String? about,
  }) {
    return UserDetailsModel(
      fullname: fullname ?? this.fullname,
      username: username ?? this.username,
      slackUsername: slackUsername ?? this.slackUsername,
      githubUsername: githubUsername ?? this.githubUsername,
      about: about ?? this.about,
    );
  }
}
