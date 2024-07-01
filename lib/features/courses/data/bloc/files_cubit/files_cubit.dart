import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'files_state.dart';
part 'files_cubit.freezed.dart';

class FilesCubit extends Cubit<FilesState> {
  FilesCubit() : super(FilesState.initial());
}
