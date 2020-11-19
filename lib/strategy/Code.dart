abstract class Code {
  String code();
}

class IsCoding implements Code {
  @override
  String code() {
    return 'Coding all day';
  }
}

class CantCode implements Code {
  @override
  String code() {
    return "Can't code";
  }
}
