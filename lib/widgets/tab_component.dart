import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storybook/model/story_model.dart';

class TabComponent extends StatefulWidget {
  final StoryModel storyModel;

  const TabComponent({Key? key, required this.storyModel}) : super(key: key);

  @override
  State<TabComponent> createState() => _TabComponentState();
}

class _TabComponentState extends State<TabComponent>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, value: 0);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const optionColor = Colors.black38;

    const boxDecoration = BoxDecoration(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20),
        topLeft: Radius.circular(20),
      ),
      color: optionColor,
    );

    return AnimatedSize(
      alignment: Alignment.centerRight,
      curve: Curves.bounceInOut,
      duration: const Duration(
        milliseconds: 100,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                _controller.value = _controller.value == 1 ? 0 : 1;
              });
            },
            child: Container(
              height: 80,
              width: 20,
              decoration: boxDecoration,
              child: const Center(
                child: RotatedBox(
                  quarterTurns: -1,
                  child: Text(
                    'Options',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: _controller.value * 200,
            height: 400,
            decoration: boxDecoration,
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: ListView.builder(
              itemCount: widget.storyModel.getProperties.length,
              itemBuilder: dropdownItem,
            ),
          ),
        ],
      ),
    );
  }

  Column dropdownItem(_, index) {
    final property = widget.storyModel.getProperties[index];

    return Column(
      children: [
        Text(
          property,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Obx(
          () => Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton<dynamic>(
              iconEnabledColor: Colors.white,
              onChanged: (Object? value) {
                widget.storyModel.setProperty(property, value);
              },
              style: const TextStyle(fontSize: 20, color: Colors.red),
              value: widget.storyModel.getProperty(property),
              items: getPropertyValues(property)
                  .map(
                    (propertyValue) {
                      return DropdownMenuItem(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '$propertyValue',
                          style: TextStyle(
                            color: propertyValue is Color
                                ? propertyValue
                                : Colors.black,
                          ),
                        ),
                      ),
                      value: propertyValue,
                    );
                    },
                  )
                  .toList(),
              isExpanded: true,
            ),
          ),
        ),
      ],
    );
  }

  List<dynamic> getPropertyValues(String name) {
    dynamic value;

    final String trimmed = name.split(' ')[0].trim();

    switch (trimmed) {
      case 'color':
        return Colors.primaries;
      case 'width':
        return List.generate(50, (i) => i)
            .map((e) => double.parse('$e'))
            .toList();
    }

    return value;
  }
}
