part of 'notes_cubit.dart';

@freezed
class NotesState with _$NotesState {
  const factory NotesState.initial() = _Initial;

  const factory NotesState.loaded(List<Note> notes) = _Loaded;

  const factory NotesState.error() = _Error;

  const factory NotesState.loading() = _Loading;
}
