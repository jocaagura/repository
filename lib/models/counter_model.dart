class CounterModel {
  int value;
  CounterModel(this.value);
  void increment() {
    value++;
  }

  void decrement() {
    value--;
  }

  @override
  toString() {
    return value.toString();
  }
}
