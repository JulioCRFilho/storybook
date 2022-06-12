import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storybook/model/story_model.dart';

class BorderButton extends StoryModel {
  BorderButton({Key? key, required String name})
      : super(key: key, name: name, code: """
MaterialButton(
  onPressed: () {},
  color: Colors.white,
  child: 'Clique'),
  shape: Border.all(
    color: Colors.red,
    width: 2,
  ),
);""");

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => MaterialButton(
        onPressed: () {},
        color: map['color'] ?? Colors.white,
        child: Text(map['text'] ?? 'Clique'),
        shape: Border.all(
          color: map['color 2'] ?? Colors.red,
          width: map['width'] ?? 2,
        ),
      ),
    );
  }
}
