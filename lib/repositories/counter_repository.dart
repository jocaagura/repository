import '../models/counter_model.dart';

abstract class CounterRepository {
  Future<CounterModel> getCounter();
  Future<void> saveCounter(CounterModel counter);
}
