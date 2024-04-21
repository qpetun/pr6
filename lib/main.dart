import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// MyApp - корневой виджет приложения
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Пример', // Заголовок приложения
      theme: ThemeData(
        primarySwatch: Colors.blue, // Основной цвет темы
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, // Цвет текста кнопок
            backgroundColor: Colors.blueAccent, // Цвет фона кнопок
            textStyle: TextStyle(fontSize: 18), // Стиль текста кнопок
          ),
        ),
      ),
      initialRoute: '/', // Начальный маршрут приложения
      routes: {
        '/': (context) => HomeScreen(), // Маршрут для главной страницы
        '/screen1': (context) => Screen1(), // Маршрут для страницы 1
        '/screen2': (context) => Screen2(), // Маршрут для страницы 2
        '/screen3': (context) => Screen3(), // Маршрут для страницы 3
        '/screen4': (context) => Screen4(), // Маршрут для страницы 4
        '/screen5': (context) => Screen5(), // Маршрут для страницы 5
      },
    );
  }
}

// Главная страница
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Главная страница'), // Заголовок AppBar
      ),
      backgroundColor: Colors.white, // Фоновый цвет главной страницы
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/screen1');
              },
              child: Text('Страница 1'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/screen2');
              },
              child: Text('Страница 2'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/screen3');
              },
              child: Text('Страница 3'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/screen4');
              },
              child: Text('Страница 4'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/screen5');
              },
              child: Text('Страница 5'),
            ),
          ],
        ),
      ),
    );
  }
}

// Классы для остальных экранов имеют похожую структуру
class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Страница 1'),
        backgroundColor: Colors.yellow, // Цвет AppBar страницы 1
      ),
      backgroundColor: Colors.yellowAccent, // Фоновый цвет страницы 1
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Назад'),
        ),
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Страница 2'),
        backgroundColor: Colors.green, // Цвет AppBar страницы 2
      ),
      backgroundColor: Colors.greenAccent, // Фоновый цвет страницы 2
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Назад'),
        ),
      ),
    );
  }
}

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Страница 3'),
        backgroundColor: Colors.orange, // Цвет AppBar страницы 3
      ),
      backgroundColor: Colors.orangeAccent, // Фоновый цвет страницы 3
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Назад'),
        ),
      ),
    );
  }
}

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Страница 4'),
        backgroundColor: Colors.red, // Цвет AppBar страницы 4
      ),
      backgroundColor: Colors.redAccent, // Фоновый цвет страницы 4
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Назад'),
        ),
      ),
    );
  }
}

class Screen5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Страница 5'),
        backgroundColor: Colors.purple, // Цвет AppBar страницы 5
      ),
      backgroundColor: Colors.purpleAccent, // Фоновый цвет страницы 5
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Назад'),
        ),
      ),
    );
  }
}
