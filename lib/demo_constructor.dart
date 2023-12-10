class DemoConstructor {
  final String data;

  const DemoConstructor(String data)
      : data = "$data is initialized from default constructor";

  const DemoConstructor.namedConstructorA(String data)
      : data = "$data is initialized from named constructor A";

  const DemoConstructor.namedConstructorB(String data)
      : data = "$data is initialized from named constructor B";

  void printData() {
    print("Data: $data");
  }
}
