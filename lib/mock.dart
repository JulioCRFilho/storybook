import 'package:flutter/material.dart';
import 'model/story_category.dart';
import 'model/story_model.dart';

List<StoryCategory> getCategories() {
  return [
    const StoryCategory(name: 'Textos', stories: [
      StoryModel(
        component: Text('Texto comum'),
        code: "Text('Algum texto');",
        name: 'Texto comum',
      ),
      StoryModel(
        component: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Texto ',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              TextSpan(
                text: 'rico',
                style: TextStyle(
                  color: Colors.deepPurple,
                ),
              ),
            ],
          ),
        ),
        name: 'Texto rico',
        code: """
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Texto ',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              TextSpan(
                text: 'rico',
                style: TextStyle(
                  color: Colors.deepPurple,
                ),
              ),
            ],
          ),
        );
        """,
        properties: {
          'Cor 1': Color,
          'Cor 2': Color,
        },
      ),
      StoryModel(
        component: Text(
          'Texto negrito',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        name: 'Texto negrito',
        code: """
        Text(
          'Texto negrito',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        );
        """,
        properties: {'Negrito': FontWeight},
      ),
      StoryModel(
        component: Text(
          'Texto colorido',
          style: TextStyle(
            color: Colors.red,
          ),
        ),
        name: 'Texto colorido',
        code: """
        Text(
          'Texto colorido',
          style: TextStyle(
            color: Colors.red,
          ),
        );
        """,
        properties: {'Cor': Color},
      ),
    ]),
    const StoryCategory(name: 'Icones', stories: [
      StoryModel(
        component: Icon(Icons.ac_unit),
        code: "Icon(Icons.ac_unit);",
        name: 'Icone',
      ),
      StoryModel(
        component: Icon(
          Icons.ac_unit,
          color: Colors.red,
        ),
        name: 'Icone colorido',
        code: """
        Icon(
          Icons.ac_unit,
          color: Colors.red,
        );
        """,
        properties: {'Cor': Color},
      ),
      StoryModel(
        component: Icon(
          Icons.ac_unit,
          shadows: [
            Shadow(
              color: Colors.red,
              blurRadius: 1,
            ),
          ],
        ),
        name: 'Icone com contorno',
        code: """
        Icon(
          Icons.ac_unit,
          shadows: [
            Shadow(
              color: Colors.red,
              blurRadius: 1,
            ),
          ],
        );
        """,
        properties: {'Cor da sombra': Color},
      ),
      StoryModel(
        component: Icon(
          Icons.ac_unit,
          size: 40,
        ),
        name: 'Icone grande',
        code: """
        Icon(
          Icons.ac_unit,
          size: 40,
        );
        """,
        properties: {'Tamanho': double},
      ),
    ]),
    StoryCategory(name: 'Imagens', stories: [
      StoryModel(
        component: Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png'),
        code: 'Image.network();',
        name: 'Image',
      ),
    ]),
    StoryCategory(name: 'Botões', stories: [
      const StoryModel(
        component: MaterialButton(
          onPressed: null,
          child: Text('Clique'),
        ),
        name: 'Botão desabilitado',
        code: """
             MaterialButton(
               onPressed: null,
               child: Text('Clique'),
             );""",
      ),
      StoryModel(
        component: MaterialButton(
          onPressed: () {},
          child: const Text('Clique'),
        ),
        name: 'Botão habilitado',
        code: """
             MaterialButton(
               onPressed: () {},
               child: Text('Clique'),
             );""",
      ),
      StoryModel(
        component: MaterialButton(
          onPressed: (){},
          shape: const Border.fromBorderSide(
            BorderSide(
              color: Colors.red,
            ),
          ),
          child: const Text('Clique'),
        ),
        name: 'Botão com contorno',
        code: """
        MaterialButton(
          onPressed: (){},
          shape: Border.fromBorderSide(
            BorderSide(
              color: Colors.red,
            ),
          ),
          child: Text('Clique'),
        );""",
        properties: {'Cor da borda': Color},
      ),
      StoryModel(
        component: MaterialButton(
          onPressed: () {},
          color: Colors.red,
          child: const Text('Clique'),
        ),
        name: 'Botão colorido',
        code: """
             MaterialButton(
               onPressed: () {},
               color: Colors.red,
               child: Text('Clique'),
             );""",
        properties: {
          'Cor': Color,
        },
      ),
      StoryModel(
        component: MaterialButton(
          onPressed: () {},
          color: Colors.red,
          child: const Text('Clique'),
          shape: Border.all(
            color: Colors.black,
            width: 2,
          ),
        ),
        name: 'Botão customizável',
        code: """
             MaterialButton(
               onPressed: () {},
               color: Colors.red,
               child: const Text('Clique'),
               shape: Border.all(
                 color: Colors.black,
                 width: 2,
               ),
             );""",
        properties: {
          'Cor do fundo': Color,
          'Cor da borda': Color,
          'Espessura da borda': double,
        },
      ),
    ]),
  ];
}
