import 'package:booky/proto/generated/booky.pbgrpc.dart';
import 'package:grpc/grpc.dart';
import 'package:injectable/injectable.dart';

const String userId = '1';

@LazySingleton()
class BookyTerminalClient {
  late final ClientChannel _channel;
  late final BookyServiceClient clientStub;
  BookyTerminalClient() {
    _channel = ClientChannel(
      // 'localhost',
      '95.174.94.190',
      // '10.0.2.2',
      port: 4000,
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

Future<void> test() async {
  final clientApp = BookyTerminalClient();
  await clientApp.clientStub.createCourse(
    CreateCourseRequest(
      data: CreateCourseData(
        title: 'test',
        description: 'test',
        tracks: [],
        semester: Semester.SEMESTER_FALL,
        year: 0,
      ),
    ),
  );
  print(await clientApp.clientStub.listCourses(ListCoursesRequest()));
  clientApp.shutdown();
}

// Future<void> createTestUser() async {
//   final clientApp = BookyTerminalClient();
//   await clientApp.clientStub.(
    
//   );
//   print(await clientApp.clientStub.listCourses(ListCoursesRequest()));
//   clientApp.shutdown();
// }
