import 'package:storybook/model/story_model.dart';

extension Stringfy on StoryModel {
  List<String?> filterProperties() {
    final _code = code;
    final _lines = _code.split('\n');

    final _cleanedLines = _lines
      ..removeWhere((element) => element.contains('('))
      ..removeWhere((element) => element.contains(')'));

    final _properties = _cleanedLines.map((e) => e.split(':')[0]);

    final _sortedProperties = _properties.toList()
      ..sort((previous, next) => previous.compareTo(next));

    final _finalProperties =
        _sortedProperties.indexedMap((int index, String value) {
      final trimmed = value.trim();

      int controller = 2;
      for (var property in _properties) {
        final elementAt =
            _properties.elementAt(index == 0 ? 0 : index - 1).trim();

        if (property.trim() == trimmed && elementAt == trimmed && index != 0) {
          final String controlledValue = '$trimmed $controller';
          controller++;
          return controlledValue;
        } else {
          return trimmed;
        }
      }
    });

    return _finalProperties;
  }
}

extension MapWithIndex<T> on List<T> {
  List<E> indexedMap<E>(E Function(int index, T value) f) =>
      List.generate(length, (i) => f(i, elementAt(i))).toList();
}
