import 'dart:async';

import 'package:grpc/grpc.dart';

import 'pb/user.pbgrpc.dart';

void main() async {
  final client = ClientChannel(
    'localhost',
    port: 50051,
    options: ChannelOptions(credentials: ChannelCredentials.insecure()),
  );
  final stub = MyServiceClient(client);

  readUser(stub);
  channel(stub);
  log(stub);
  chat(stub);

  // await client.shutdown();
}

// Unary`
void readUser(MyServiceClient stub) async {
  try {
    final response = await stub.readUser(ReadUserReq(id: '1'));
    print(response);
  } catch (e) {
    print('Caught error: $e');
  }
}

void channel(MyServiceClient stub) {
  try {
    final response = stub.channel(ChannelReq(channelId: '1'));
    response.listen((e) => print(e));
  } catch (e) {
    print('Caught error: $e');
  }
}

void log(MyServiceClient stub) async {
  try {
    final stream = Stream.periodic(
      Duration(seconds: 1),
      (i) => LogReq(log: 'log $i'),
    );
    final response = await stub.log(stream);
    print(response);
  } catch (e) {
    print('Caught error: $e');
  }
}

void chat(MyServiceClient stub) {
  try {
    final stream = Stream.periodic(
      Duration(seconds: 1),
      (i) => ChatReq(
        message: Message(
          id: '1',
          userId: '1',
          channelId: '1',
          message: 'ehe',
        ),
      ),
    );
    final response = stub.chat(stream);
    response.listen((e) => print(e));
  } catch (e) {
    print('Caught error: $e');
  }
}
