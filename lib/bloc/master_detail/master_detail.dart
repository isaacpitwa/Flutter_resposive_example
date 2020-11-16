import 'package:base_bloc/base_bloc.dart';
import 'package:flutter/material.dart';
import './master_detail_bloc.dart';
import './master_detail_events.dart';
import './master_detail_state.dart';

/// Created by mbp on 16/Nov/2020
///
/// Copyright ©2020 by mbp. All rights reserved.
class MasterDetailWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MasterDetailWidgetState();
}

class MasterDetailWidgetState extends BaseBlocState<MasterDetailWidget> {

  BuildContext _context;

  @override
  Widget build(BuildContext context) =>
      BaseBlocBuilder<MasterDetailState>(bloc, _buildBody);

  @override
  BaseBloc createBloc() => MasterDetailBloc();

  Widget _buildBody(BuildContext context, MasterDetailState state) {
    return SafeArea(
        bottom: false, top: false,
        child: Scaffold(
          body: Builder(builder: (BuildContext context) {
            _context = context;
            return Container(
              child: Center(
                child: Text("MasterDetail Widget"),
              ),
            );
          }),
        )
    );
  }

}