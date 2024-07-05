import 'package:booky/common/app_styles.dart';
import 'package:booky/features/post/data/cubit/files_cubit.dart';
import 'package:booky/features/post/presentation/widgets/file_list_item.dart';
import 'package:booky/getit.dart';
import 'package:booky/proto/generated/booky.pb.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilesList extends StatelessWidget {
  const FilesList({super.key, required this.course});
  final Course course;

  @override
  Widget build(BuildContext context) {
    // setting course infiles singleton
    getIt.get<FilesCubit>().course = course;
    return Padding(
      padding: const EdgeInsets.only(top: 6.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: BlocProvider.value(
              value: getIt.get<FilesCubit>(),
              child: BlocBuilder<FilesCubit, FilesState>(
                bloc: getIt.get<FilesCubit>()..fetchFiles(),
                builder: (context, state) {
                  return state.when(
                    initial: () {
                      getIt.get<FilesCubit>().fetchFiles();

                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                    error: () => const Center(
                      child: Text('Error'),
                    ),
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    loaded: (List<File> files) {
                      if (files.isEmpty) {
                        return const Center(
                          child: Text(
                            'No files yet...',
                            style: AppStyles.title2Medium,
                          ),
                        );
                      }
                      return Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: files
                                .map((e) => Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 16.0),
                                      child:
                                          FileListItem(course: course, file: e),
                                    ))
                                .toList(),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
