import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:booky/getit.dart';
import 'package:booky/proto/client/booky_client.dart';
import 'package:booky/proto/generated/booky.pbgrpc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'files_state.dart';
part 'files_cubit.freezed.dart';

@LazySingleton()
class FilesCubit extends Cubit<FilesState> {
  FilesCubit() : super(const FilesState.initial());

  late Course course;

  final BookyTerminalClient client = getIt.get<BookyTerminalClient>();
  BookyServiceClient get stub => client.clientStub;

  void fetchFiles() {
    emit(const FilesState.loading());
    stub
        .listFiles(ListFilesRequest(courseId: course.id))
        .then((ListFilesResponse response) {
      files.clear();
      files.addAll(response.files);
      emit(FilesState.loaded(files));
    });
  }

  Future<File?> uploadImage() async {
    final CreateFileData? createFileData = await pickImageAndConvert();

    if (createFileData == null) {
      return null;
    }

    emit(const FilesState.loading());

    createFileData.courseId = course.id;
    createFileData.userId = '1';

    File? createdFile = (await stub.createFile(
      CreateFileRequest(
        data: createFileData,
      ),
    )).file;
    
    fetchFiles();

    return createdFile;
  }

  Future<CreateFileData?> pickImageAndConvert() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      // Read image as bytes
      Uint8List imageBytes = await image.readAsBytes();

      // Now you have imageBytes as List<int>
      List<int> imageByteList = imageBytes.toList();

      // Create the protobuf message
      CreateFileData createFileData = CreateFileData(
        courseId: 'course_id_example',
        content: imageByteList,
        filename: image.name, // or you can specify any filename
        userId: 'user_id_example',
      );

      return createFileData;
    }
    return null;
  }

  void deleteFile(String fileId) {
    emit(const FilesState.loading());
    stub.deleteFile(DeleteFileRequest(id: fileId)).then((_) {
      fetchFiles();
    });
  }

  final List<File> files = [];
}
