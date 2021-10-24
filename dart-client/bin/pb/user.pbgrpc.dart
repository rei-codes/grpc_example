///
//  Generated code. Do not modify.
//  source: proto/user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'user.pb.dart' as $0;
export 'user.pb.dart';

class MyServiceClient extends $grpc.Client {
  static final _$readUser = $grpc.ClientMethod<$0.ReadUserReq, $0.ReadUserRes>(
      '/user.MyService/ReadUser',
      ($0.ReadUserReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ReadUserRes.fromBuffer(value));
  static final _$channel = $grpc.ClientMethod<$0.ChannelReq, $0.ChannelRes>(
      '/user.MyService/Channel',
      ($0.ChannelReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ChannelRes.fromBuffer(value));
  static final _$log = $grpc.ClientMethod<$0.LogReq, $0.LogRes>(
      '/user.MyService/Log',
      ($0.LogReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LogRes.fromBuffer(value));
  static final _$chat = $grpc.ClientMethod<$0.ChatReq, $0.ChatRes>(
      '/user.MyService/Chat',
      ($0.ChatReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ChatRes.fromBuffer(value));

  MyServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ReadUserRes> readUser($0.ReadUserReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readUser, request, options: options);
  }

  $grpc.ResponseStream<$0.ChannelRes> channel($0.ChannelReq request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$channel, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.LogRes> log($async.Stream<$0.LogReq> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$log, request, options: options).single;
  }

  $grpc.ResponseStream<$0.ChatRes> chat($async.Stream<$0.ChatReq> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$chat, request, options: options);
  }
}

abstract class MyServiceBase extends $grpc.Service {
  $core.String get $name => 'user.MyService';

  MyServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ReadUserReq, $0.ReadUserRes>(
        'ReadUser',
        readUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ReadUserReq.fromBuffer(value),
        ($0.ReadUserRes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChannelReq, $0.ChannelRes>(
        'Channel',
        channel_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.ChannelReq.fromBuffer(value),
        ($0.ChannelRes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LogReq, $0.LogRes>(
        'Log',
        log,
        true,
        false,
        ($core.List<$core.int> value) => $0.LogReq.fromBuffer(value),
        ($0.LogRes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChatReq, $0.ChatRes>(
        'Chat',
        chat,
        true,
        true,
        ($core.List<$core.int> value) => $0.ChatReq.fromBuffer(value),
        ($0.ChatRes value) => value.writeToBuffer()));
  }

  $async.Future<$0.ReadUserRes> readUser_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ReadUserReq> request) async {
    return readUser(call, await request);
  }

  $async.Stream<$0.ChannelRes> channel_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ChannelReq> request) async* {
    yield* channel(call, await request);
  }

  $async.Future<$0.ReadUserRes> readUser(
      $grpc.ServiceCall call, $0.ReadUserReq request);
  $async.Stream<$0.ChannelRes> channel(
      $grpc.ServiceCall call, $0.ChannelReq request);
  $async.Future<$0.LogRes> log(
      $grpc.ServiceCall call, $async.Stream<$0.LogReq> request);
  $async.Stream<$0.ChatRes> chat(
      $grpc.ServiceCall call, $async.Stream<$0.ChatReq> request);
}
