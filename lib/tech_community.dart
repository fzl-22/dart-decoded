import 'package:dart_encoded/community.dart';
import 'package:dart_encoded/tech.dart';

class TechCommunity extends Community implements Tech {
  TechCommunity({
    required super.name,
    required super.currentMember,
    required super.maxMember,
    required super.isActive,
    required super.divisions,
  });

  @override
  void studyJam() {
    print("Ayo Study Jam rutin...");
  }
}
