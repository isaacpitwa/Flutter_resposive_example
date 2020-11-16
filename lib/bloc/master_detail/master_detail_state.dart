library master_detail_state.dart_state;

import 'package:flutter_responsive_example/presentation/presentation.dart';

part 'master_detail_state.dart_state.g.dart';

abstract class MasterDetailState
    implements Built<MasterDetailState, MasterDetailStateBuilder> {

  MasterDetailState._();

  factory MasterDetailState(
      [updates(MasterDetailStateBuilder b)]) = _$MasterDetailState;
}
