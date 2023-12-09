class Community {
  // properties
  String name;
  int currentMember;
  int maxMember;
  bool isActive;
  List<String> divisions;

  // constructor
  Community({
    required this.name,
    required this.currentMember,
    required this.maxMember,
    required this.isActive,
    required this.divisions,
  });

  // methods
  void printAllDivisions() {
    for (String division in divisions) {
      print("$division is available");
    }
  }

  String get recruitmentStatus {
    if (isActive && currentMember >= maxMember) {
      return "$name is active but not accepting member."; // string interpolation
    }

    if (isActive && currentMember < maxMember) {
      return "$name is active and still accepting member";
    }

    return "$name is not active";
  }

  void searchDivision({
    required String searchedDivision,
  }) {
    bool foundDivision = false;
    int index = 0;

    while (index < divisions.length) {
      String division = divisions[index];

      if (division.contains(searchedDivision)) {
        foundDivision = true;
        break;
      }
      index++;
    }

    print(
      foundDivision ? "$searchedDivision found" : "$searchedDivision not found",
    );
  }
}
