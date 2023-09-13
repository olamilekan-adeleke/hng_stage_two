import 'dart:async';

import 'user_details_model.dart';

class AppState {
  final _controller = StreamController<UserDetailsModel>.broadcast();
  Stream<UserDetailsModel> get dataStream => _controller.stream;
  late UserDetailsModel? _data;
  UserDetailsModel? get getData => _data;

  void init() {
    final UserDetailsModel newData = UserDetailsModel(
      fullname: "Olamilekan Adeleke",
      username: "@Kod_Enigma",
      slackUsername: "Kod_Enigma",
      githubUsername: "Olamilekan-adeleke",
      about: "I am a highly experienced Flutter developer with few years of "
          "professional experience in the field.  I am also well-versed in various "
          "state management techniques in Flutter such as GetX, BLoC, Provider, and "
          "Riverpod, and have experience working with external APIs and SDKs",
    );
    _addDataToStream(newData);
  }

  void _addDataToStream(UserDetailsModel data) {
    _data = data;
    if (_data == null) return;
    _controller.add(_data!);
  }

  void dispose() => _controller.close();

  void updateFullname(String value) {
    final newData = _data?.copyWith(fullname: value);
    if (newData == null) return;
    _addDataToStream(newData);
  }

  void updateUsername(String value) {
    final newData = _data?.copyWith(username: value);
    if (newData == null) return;
    _addDataToStream(newData);
  }

  void updateSlackUsername(String value) {
    final newData = _data?.copyWith(slackUsername: value);
    if (newData == null) return;
    _addDataToStream(newData);
  }

  void updateGithubUsername(String value) {
    final newData = _data?.copyWith(githubUsername: value);
    if (newData == null) return;
    _addDataToStream(newData);
  }

  void updateAbout(String value) {
    final newData = _data?.copyWith(about: value);
    if (newData == null) return;
    _addDataToStream(newData);
  }
}
