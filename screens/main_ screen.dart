import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'PostProvider.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final postProvider = Provider.of<PostProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Post List'),
      ),
      body: postProvider.loading
          ? CircularProgressIndicator()
          : postProvider.error.isNotEmpty
          ? Center(
        child: Text('Error: ${postProvider.error}'),
      )
          : ListView.builder(
        itemCount: postProvider.posts.length,
        itemBuilder: (context, index) {
          final post = postProvider.posts[index];
          return ListTile(
            title: Text(post.title),
            subtitle: Text(post.body),
          );
        },
      ),
    );
  }
}