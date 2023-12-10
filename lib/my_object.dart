class MyObject {
  final List<String> data;

  const MyObject({required this.data});

  // override hashCode value
  @override
  int get hashCode => data.hashCode;

  // override the default implementation of == operator
  @override
  bool operator ==(Object other) {
    if (other is! MyObject) {
      return false;
    }

    if (other.data.length != other.data.length) {
      return false;
    }

    for (int i = 0; i < data.length; i++) {
      if (data[i] != other.data[i]) {
        return false;
      }
    }

    return true;
  }
}
