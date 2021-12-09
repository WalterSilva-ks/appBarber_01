// ignore_for_file: file_names, prefer_function_declarations_over_variables,, avoid_print
import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class RecentsStorePage extends StatefulWidget {
  const RecentsStorePage({Key? key}) : super(key: key);

  @override
  _RecentsStorePageState createState() => _RecentsStorePageState();
}

class _RecentsStorePageState extends State<RecentsStorePage> {
  final storyController = StoryController();

  @override
  void dispose() {
    storyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoryView(
        storyItems: [
          StoryItem.text(
            title: ";) ...",
            backgroundColor: Colors.blue,
          ),
          StoryItem.text(
            title: "Proximo\n>>>>>",
            backgroundColor: Colors.red,
            textStyle: const TextStyle(
              fontFamily: 'Dancing',
              fontSize: 40,
            ),
          ),
          StoryItem.pageImage(
            url: "https://i.quotev.com/img/q/u/18/2/7/vsprsijgpb_l.jpg",
            caption: "Ruffy",
            controller: storyController,
          ),
          StoryItem.pageImage(
              url: "https://media.giphy.com/media/5GoVLqeAOo6PK/giphy.gif",
              caption: "Sextouuu",
              controller: storyController),
          StoryItem.pageImage(
            url: "https://media.giphy.com/media/XcA8krYsrEAYXKf4UQ/giphy.gif",
            caption: "......",
            controller: storyController,
          ),
          StoryItem.pageImage(
            url:
                "https://i.pinimg.com/originals/d6/e0/89/d6e089d7aad1a17b087e32f60d7087ef.jpg",
            caption: "dinuu",
            controller: storyController,
          ),
        ],
        onStoryShow: (s) {
          print("Showing a story");
        },
        onComplete: () {
          print("Completed a cycle");
        },
        progressPosition: ProgressPosition.top,
        repeat: false,
        controller: storyController,
      ),
    );
  }
}
