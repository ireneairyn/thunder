import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thunder/community/bloc/community_bloc.dart';
import 'package:thunder/core/models/post_view_media.dart';

import 'package:thunder/post/bloc/post_bloc.dart';
import 'package:thunder/post/pages/post_page_success.dart';
<<<<<<< HEAD
<<<<<<< HEAD
=======
import 'package:thunder/shared/error_message.dart';
>>>>>>> 43f111d9fe14159bd16fa9a4fc713ef08f62762a
=======
import 'package:thunder/shared/error_message.dart';
>>>>>>> 43f111d9fe14159bd16fa9a4fc713ef08f62762a

class PostPage extends StatelessWidget {
  final PostViewMedia postView;

  const PostPage({super.key, required this.postView});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: BlocProvider(
          create: (context) => PostBloc(),
          child: BlocConsumer<PostBloc, PostState>(
            listener: (context, state) {
              if (state.status == PostStatus.success) {
                // Update the community's post
                int? postIdIndex = context.read<CommunityBloc>().state.postViews?.indexWhere((communityPostView) => communityPostView.post.id == postView.post.id);
<<<<<<< HEAD
<<<<<<< HEAD
                if (postIdIndex != null) {
=======
                if (postIdIndex != null && state.postView != null) {
>>>>>>> 43f111d9fe14159bd16fa9a4fc713ef08f62762a
=======
                if (postIdIndex != null && state.postView != null) {
>>>>>>> 43f111d9fe14159bd16fa9a4fc713ef08f62762a
                  context.read<CommunityBloc>().state.postViews![postIdIndex] = state.postView!;
                }
              }
            },
            builder: (context, state) {
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> 43f111d9fe14159bd16fa9a4fc713ef08f62762a
              if (state.status == PostStatus.failure) {
                SnackBar snackBar = SnackBar(
                  content: Expanded(
                    child: Row(
                      children: [
                        Icon(
                          Icons.warning_rounded,
                          color: theme.colorScheme.errorContainer,
                        ),
                        const SizedBox(width: 8.0),
                        Flexible(
                          child: Text(state.errorMessage ?? 'No error message available'),
                        )
                      ],
                    ),
                  ),
                  backgroundColor: theme.colorScheme.onErrorContainer,
                  behavior: SnackBarBehavior.floating,
                );
                WidgetsBinding.instance.addPostFrameCallback((timeStamp) => ScaffoldMessenger.of(context).showSnackBar(snackBar));
              }

<<<<<<< HEAD
>>>>>>> 43f111d9fe14159bd16fa9a4fc713ef08f62762a
=======
>>>>>>> 43f111d9fe14159bd16fa9a4fc713ef08f62762a
              switch (state.status) {
                case PostStatus.initial:
                  context.read<PostBloc>().add(GetPostEvent(postView: postView));
                  return const Center(child: CircularProgressIndicator());
                case PostStatus.loading:
                  return const Center(child: CircularProgressIndicator());
                case PostStatus.refreshing:
                case PostStatus.success:
<<<<<<< HEAD
<<<<<<< HEAD
                  return PostPageSuccess(postView: state.postView!, comments: state.comments);
                case PostStatus.failure:
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.warning_rounded,
                            size: 100,
                            color: Colors.red.shade300,
                          ),
                          const SizedBox(height: 32.0),
                          Text('Oops, something went wrong!', style: theme.textTheme.titleLarge),
                          const SizedBox(height: 8.0),
                          Text(
                            state.errorMessage ?? 'No error message available',
                            style: theme.textTheme.labelLarge?.copyWith(color: theme.dividerColor),
                          ),
                          const SizedBox(height: 32.0),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(50)),
                            onPressed: () => {context.read<PostBloc>().add(GetPostEvent(postView: postView))},
                            child: const Text('Refresh Post'),
                          ),
                        ],
                      ),
                    ),
                  );
                case PostStatus.empty:
                  return const Center(child: Text('Empty'));
=======
=======
>>>>>>> 43f111d9fe14159bd16fa9a4fc713ef08f62762a
                  if (state.postView != null) return PostPageSuccess(postView: state.postView!, comments: state.comments);
                  return const Center(child: Text('Empty'));
                case PostStatus.empty:
                  return const Center(child: Text('Empty'));
                case PostStatus.failure:
                  return ErrorMessage(
                    message: state.errorMessage,
                    action: () => {context.read<PostBloc>().add(GetPostEvent(postView: postView))},
                    actionText: 'Refresh Content',
                  );
<<<<<<< HEAD
>>>>>>> 43f111d9fe14159bd16fa9a4fc713ef08f62762a
=======
>>>>>>> 43f111d9fe14159bd16fa9a4fc713ef08f62762a
              }
            },
          ),
        ),
      ),
    );
  }
}
