import 'package:bloc/bloc.dart';
import 'package:booky/getit.dart';
import 'package:booky/proto/client/booky_client.dart';
import 'package:booky/proto/generated/booky.pb.dart';
import 'package:booky/proto/generated/booky.pbgrpc.dart';
import 'package:booky/proto/google/protobuf/timestamp.pb.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'notes_state.dart';
part 'notes_cubit.freezed.dart';

@LazySingleton()
class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(const NotesState.initial());

  final BookyTerminalClient client = getIt.get<BookyTerminalClient>();
  BookyServiceClient get stub => client.clientStub;

  void fetchNotes(Course course) async {
    emit(const NotesState.loading());

    _notes.clear();
    _notes.addAll(
        (await stub.listNotes(ListNotesRequest(courseId: course.id))).notes);

    // _notes.add(Note(
    //   body: 'test body',
    //   title: 'test title',
    //   id: 'test id',
    //   courseId: course.id,
    //   publisher: User(
    //     id: 'test id',
    //     name: 'test name',
    //     email: 'test email',
    //     password: Password(
    //       password: 'test password',
    //       passwordHash: '123',
    //     ),
    //   ),
    // ));

    emit(NotesState.loaded(_notes));
  }

  void saveNote(Course course, Note note) async {
    emit(const NotesState.loading());

    await stub.createNote(CreateNoteRequest(
      data: CreateNoteData(
        courseId: course.id,
        title: note.title,
        body: note.body,
        userId: '1',
      ),
    ));

    _notes.clear();
    _notes.addAll(
        (await stub.listNotes(ListNotesRequest(courseId: course.id))).notes);

    emit(NotesState.loaded(_notes));
  }

  final List<Note> _notes = [];
}
