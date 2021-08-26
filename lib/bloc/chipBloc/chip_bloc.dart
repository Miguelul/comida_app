import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'chip_event.dart';
part 'chip_state.dart';

class ChipBloc extends Bloc<ChipEvent, ChipState> {
  ChipBloc() : super(ChipState(0));

  @override
  Stream<ChipState> mapEventToState(
    ChipEvent event,
  ) async* {
    if (event is SelectChip) {
      yield ChipState(event.index);
    }
  }
}
