///
//  Generated code. Do not modify.
//  source: proto/user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use userDescriptor instead')
const User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode('CgRVc2VyEg4KAmlkGAEgASgJUgJpZBIUCgVlbWFpbBgCIAEoCVIFZW1haWw=');
@$core.Deprecated('Use messageDescriptor instead')
const Message$json = const {
  '1': 'Message',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'channel_id', '3': 2, '4': 1, '5': 9, '10': 'channelId'},
    const {'1': 'user_id', '3': 3, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'message', '3': 4, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `Message`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageDescriptor = $convert.base64Decode('CgdNZXNzYWdlEg4KAmlkGAEgASgJUgJpZBIdCgpjaGFubmVsX2lkGAIgASgJUgljaGFubmVsSWQSFwoHdXNlcl9pZBgDIAEoCVIGdXNlcklkEhgKB21lc3NhZ2UYBCABKAlSB21lc3NhZ2U=');
@$core.Deprecated('Use readUserReqDescriptor instead')
const ReadUserReq$json = const {
  '1': 'ReadUserReq',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `ReadUserReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readUserReqDescriptor = $convert.base64Decode('CgtSZWFkVXNlclJlcRIOCgJpZBgBIAEoCVICaWQ=');
@$core.Deprecated('Use readUserResDescriptor instead')
const ReadUserRes$json = const {
  '1': 'ReadUserRes',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.user.User', '10': 'user'},
  ],
};

/// Descriptor for `ReadUserRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readUserResDescriptor = $convert.base64Decode('CgtSZWFkVXNlclJlcxIeCgR1c2VyGAEgASgLMgoudXNlci5Vc2VyUgR1c2Vy');
@$core.Deprecated('Use channelReqDescriptor instead')
const ChannelReq$json = const {
  '1': 'ChannelReq',
  '2': const [
    const {'1': 'channel_id', '3': 1, '4': 1, '5': 9, '10': 'channelId'},
  ],
};

/// Descriptor for `ChannelReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelReqDescriptor = $convert.base64Decode('CgpDaGFubmVsUmVxEh0KCmNoYW5uZWxfaWQYASABKAlSCWNoYW5uZWxJZA==');
@$core.Deprecated('Use channelResDescriptor instead')
const ChannelRes$json = const {
  '1': 'ChannelRes',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 11, '6': '.user.Message', '10': 'message'},
  ],
};

/// Descriptor for `ChannelRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelResDescriptor = $convert.base64Decode('CgpDaGFubmVsUmVzEicKB21lc3NhZ2UYASABKAsyDS51c2VyLk1lc3NhZ2VSB21lc3NhZ2U=');
@$core.Deprecated('Use logReqDescriptor instead')
const LogReq$json = const {
  '1': 'LogReq',
  '2': const [
    const {'1': 'log', '3': 1, '4': 1, '5': 9, '10': 'log'},
  ],
};

/// Descriptor for `LogReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List logReqDescriptor = $convert.base64Decode('CgZMb2dSZXESEAoDbG9nGAEgASgJUgNsb2c=');
@$core.Deprecated('Use logResDescriptor instead')
const LogRes$json = const {
  '1': 'LogRes',
};

/// Descriptor for `LogRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List logResDescriptor = $convert.base64Decode('CgZMb2dSZXM=');
@$core.Deprecated('Use chatReqDescriptor instead')
const ChatReq$json = const {
  '1': 'ChatReq',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 11, '6': '.user.Message', '10': 'message'},
  ],
};

/// Descriptor for `ChatReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatReqDescriptor = $convert.base64Decode('CgdDaGF0UmVxEicKB21lc3NhZ2UYASABKAsyDS51c2VyLk1lc3NhZ2VSB21lc3NhZ2U=');
@$core.Deprecated('Use chatResDescriptor instead')
const ChatRes$json = const {
  '1': 'ChatRes',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 11, '6': '.user.Message', '10': 'message'},
  ],
};

/// Descriptor for `ChatRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatResDescriptor = $convert.base64Decode('CgdDaGF0UmVzEicKB21lc3NhZ2UYASABKAsyDS51c2VyLk1lc3NhZ2VSB21lc3NhZ2U=');
