import 'dart:developer';

import 'package:grpc/grpc.dart' as grpc;

import 'booky_service.dart';

const int serverPort = 5555;

class BookyServer {
  Future<void> run() async {
    final server = grpc.Server.create(services: [BookyService()]);
    await server.serve(port: serverPort);
    log('Serving on the port: ${server.port}');
  }
}

void main() {
  BookyServer().run();
}