import 'package:flutter_bloc/flutter_bloc.dart';

class OperationsCubit extends Cubit<int> {
  OperationsCubit() : super(0);

  void select(int selected) => emit(selected);
}
