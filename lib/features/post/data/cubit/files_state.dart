part of 'files_cubit.dart';

@freezed
class FilesState with _$FilesState {
  const factory FilesState.initial() = _Initial;

  const factory FilesState.error() = _Error;

  const factory FilesState.loading() = _Loading;

  const factory FilesState.loaded(List<File> files) = _Loaded;
}
