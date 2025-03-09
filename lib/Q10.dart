import 'package:flutter/material.dart';
class Q10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/screen1', // Default screen
      routes: {
        '/screen1': (context) => Screen1(),
        '/screen2': (context) => Screen2(),
        '/screen3': (context) => Screen3(),
        '/screen4': (context) => Screen4(),
      },
    );
  }
}

// Common function for navigation
void navigateToScreen(BuildContext context, String route) {
  Navigator.pushNamed(context, route);
}

// Screen 1
class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen 1')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => navigateToScreen(context, '/screen2'),
              child: Text('Go to Screen 2'),
            ),
            ElevatedButton(
              onPressed: () => navigateToScreen(context, '/screen3'),
              child: Text('Go to Screen 3'),
            ),
            ElevatedButton(
              onPressed: () => navigateToScreen(context, '/screen4'),
              child: Text('Go to Screen 4'),
            ),
          ],
        ),
      ),
    );
  }
}

// Screen 2
class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen 2')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => navigateToScreen(context, '/screen1'),
              child: Text('Go to Screen 1'),
            ),
            ElevatedButton(
              onPressed: () => navigateToScreen(context, '/screen3'),
              child: Text('Go to Screen 3'),
            ),
            ElevatedButton(
              onPressed: () => navigateToScreen(context, '/screen4'),
              child: Text('Go to Screen 4'),
            ),
          ],
        ),
      ),
    );
  }
}

// Screen 3
class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen 3')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => navigateToScreen(context, '/screen1'),
              child: Text('Go to Screen 1'),
            ),
            ElevatedButton(
              onPressed: () => navigateToScreen(context, '/screen2'),
              child: Text('Go to Screen 2'),
            ),
            ElevatedButton(
              onPressed: () => navigateToScreen(context, '/screen4'),
              child: Text('Go to Screen 4'),
            ),
          ],
        ),
      ),
    );
  }
}

// Screen 4
class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen 4')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => navigateToScreen(context, '/screen1'),
              child: Text('Go to Screen 1'),
            ),
            ElevatedButton(
              onPressed: () => navigateToScreen(context, '/screen2'),
              child: Text('Go to Screen 2'),
            ),
            ElevatedButton(
              onPressed: () => navigateToScreen(context, '/screen3'),
              child: Text('Go to Screen 3'),
            ),
          ],
        ),
      ),
    );
  }
}
