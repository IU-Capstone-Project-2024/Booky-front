import 'package:booky/proto/generated/booky.pbgrpc.dart';
import 'package:grpc/grpc.dart';

import '../server/booky_server.dart';

class BookyTerminalClient {
  late final ClientChannel _channel;
  late final BookyServiceClient clientStub;

  BookyTerminalClient() {
    _channel = ClientChannel(
      'localhost',
      port: serverPort,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );
    clientStub = BookyServiceClient(_channel);
  }

  Future<void> shutdown() async {
    await _channel.shutdown();
  }
}

Future<void> main() async {
  final clientApp = BookyTerminalClient();
  await clientApp.clientStub.createCourse(
    CreateCourseRequest(
      course: Course(
        id: '0',
        title: 'test',
        description: 'test',
      ),
    ),
  );
  print((await clientApp.clientStub.getCourse(GetCourseRequest(id: '0'))).course.title);
  clientApp.shutdown();
}
