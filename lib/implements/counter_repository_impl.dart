import '../models/counter_model.dart';
import '../repositories/counter_repository.dart';

class CounterRepositoryImpl implements CounterRepository {
  @override
  Future<CounterModel> getCounter() async {
    // Lógica para recuperar el contador desde el almacenamiento
    // (por ejemplo, SharedPreferences, base de datos, etc.)

    return CounterModel(1);
  }

  @override
  Future<void> saveCounter(CounterModel counter) async {
    // Lógica para guardar el contador en el almacenamiento
    print('Saving DataModel: $counter');
  }
}
