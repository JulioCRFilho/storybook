import 'package:flutter/material.dart';
import 'package:storybook/model/story_model.dart';
import 'package:storybook/presenter/component_view_presenter.dart';

class ComponentView extends StatefulWidget with ComponentViewPresenter {
  ComponentView({Key? key, required StoryModel story}) : super(key: key) {
    super.storyModel = story;
  }

  @override
  State<ComponentView> createState() => _ComponentViewState();
}

class _ComponentViewState extends State<ComponentView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.storyModel.name),
      ),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Center(child: widget.storyModel.component),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Exemplo:'),
          ),
          Text(widget.storyModel.code),
        ],
      ),
    );
  }
}
