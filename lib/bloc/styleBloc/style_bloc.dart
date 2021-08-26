import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'style_event.dart';
part 'style_state.dart';

class StyleBloc extends Bloc<StyleEvent, StyleState> {
  StyleBloc() : super(StyleState(true));

  @override
  Stream<StyleState> mapEventToState(
    StyleEvent event,
  ) async* {
    if (event is Toggle) {
      yield StyleState(!state.isEmpty);
    }
  }
}
