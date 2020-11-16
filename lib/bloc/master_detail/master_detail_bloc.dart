import 'package:flutter_responsive_example/presentation/presentation.dart';

import 'master_detail_bloc.dart_actions.dart';
import 'master_detail_bloc.dart_state.dart';

class MasterDetailBloc {
  BlocController<MasterDetailState, Action> get controller => _core;
  BlocCore<MasterDetailState, MasterDetailStateBuilder, Action> _core;

  MasterDetailBloc() {
    _core = BlocCore<MasterDetailState, MasterDetailStateBuilder, Action>(
      stateBuilderInitializer: _initializeStateBuilder,
      stateInitializer: _initializeState,
      dispatcher: _dispatch,
    );
  }

  void dispose() {
    _core.dispose();
  }

  MasterDetailStateBuilder _initializeStateBuilder() {
    return MasterDetailStateBuilder();
  }

  MasterDetailState _initializeState(MasterDetailStateBuilder builder) {
    return builder.build();
  }

  void _dispatch(Action action) {
    switch (action.runtimeType) {
      default:
        assert(false);
    }
  }
}
