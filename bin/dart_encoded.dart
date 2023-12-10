import 'package:dart_encoded/community.dart';
import 'package:dart_encoded/demo_constructor.dart';
import 'package:dart_encoded/tech_community.dart';

void main(List<String> args) {
  TechCommunity gdsc = TechCommunity(
    name: "GDSC ITTelkom Surabaya",
    currentMember: 100,
    maxMember: 200,
    isActive: true,
    divisions: [
      "Event Organizer",
      "Public Relations",
      "Media and Creative",
      "Tech and Curriculum",
    ],
  );

  Community pecintaKacang = Community(
    name: "Pecinta Kacang",
    currentMember: 400,
    maxMember: 300,
    isActive: true,
    divisions: [
      "Pecinta Kacang Mente",
      "Pecinta Kacang Almond",
    ]
  );

  print(gdsc.name);
  gdsc.printAllDivisions();
  print(gdsc.recruitmentStatus);
  gdsc.searchDivision(searchedDivision: "Media");
  gdsc.studyJam();

  print(pecintaKacang.name);
  pecintaKacang.printAllDivisions();
  print(pecintaKacang.recruitmentStatus);
  pecintaKacang.searchDivision(searchedDivision: "Event");

  /**
   * Q1: Demo of named constructors
   */
  DemoConstructor obj = DemoConstructor("Hello World");
  DemoConstructor objA = DemoConstructor.namedConstructorA("Hello World");
  DemoConstructor objB = DemoConstructor.namedConstructorB("Hello World");

  obj.printData();
  objA.printData();
  objB.printData();
}