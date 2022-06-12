import 'package:flutter/material.dart';
import 'package:storybook/model/story_model.dart';
import 'package:storybook/presenter/component_view_presenter.dart';
import 'package:storybook/widgets/tab_component.dart';

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
        backgroundColor: const Color(0XFF8C7160),
        title: Text(widget.storyModel.name),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 80),
                Center(
                  child: SizedBox(
                    child: FittedBox(child: widget.storyModel),
                    height: 80,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Padding(
                  padding: EdgeInsets.all(12),
                  child: Text('Exemplo:',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(widget.storyModel.code,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.amberAccent,
                        shadows: [
                          Shadow(
                            color: Colors.black,
                            blurRadius: 0.25,
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: copyButton(),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TabComponent(storyModel: widget.storyModel),
          ),
        ],
      ),
    );
  }

  Widget copyButton() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 42),
      child: MaterialButton(
        onPressed: () async =>
            await widget.copyToClipboard(widget.storyModel.code, context),
        child: const Text(
          'Copiar',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        shape: Border.all(
          color: Colors.black,
        ),
      ),
    );
  }
}
