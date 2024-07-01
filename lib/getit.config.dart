// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'features/courses/data/bloc/courses_cubit/courses_list_cubit.dart'
    as _i3;
import 'features/courses/data/bloc/notes_cubit/notes_cubit.dart' as _i5;
import 'proto/client/booky_client.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.CoursesListCubit>(() => _i3.CoursesListCubit());
    gh.lazySingleton<_i4.BookyTerminalClient>(() => _i4.BookyTerminalClient());
    gh.lazySingleton<_i5.NotesCubit>(() => _i5.NotesCubit());
    return this;
  }
}
