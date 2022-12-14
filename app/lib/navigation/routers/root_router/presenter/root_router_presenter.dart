import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/root_router_state.dart';
import '../root_route_parser.dart';
import '../root_router.dart';

part 'root_router_presenter.g.dart';

@Riverpod(keepAlive: true)
class RootRouterPresenter extends _$RootRouterPresenter {
  @override
  RootRouterState build() {
    return const RootRouterState();
  }

  void setInitialized(bool isInit) {
    state = state.copyWith(isInitialized: isInit);
  }

  void setIsMaintaining(bool isMaintaining) {
    state = state.copyWith(isMaintaining: isMaintaining);
  }

  void setIsForceUpdate(bool isForceUpdate) {
    state = state.copyWith(isForceUpdate: isForceUpdate);
  }

  void setIsLoggingIn(bool isLoggingIn) {
    state = state.copyWith(isLoggingIn: isLoggingIn);
  }

  void setIsLoading(bool isLoading) {
    state = state.copyWith(isLoading: isLoading);
  }
}

@Riverpod(keepAlive: true)
RootRouter rootRouter(RootRouterRef ref) {
  return RootRouter(ref: ref);
}

@Riverpod(keepAlive: true)
BackButtonDispatcher rootRouterBbd(RootRouterBbdRef ref) {
  return RootBackButtonDispatcher();
}

@riverpod
RootRouteParser rootRouterParser(RootRouterParserRef ref) {
  return RootRouteParser();
}
