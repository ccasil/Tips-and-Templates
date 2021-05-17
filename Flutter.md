# Flutter

> Flutter is Google's UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source.

## Terminal Commands

| Command                                                                              | Description                                                                                                                                                                         |
| ------------------------------------------------------------------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `which flutter`                                                                      | verify flutter path                                                                                                                                                                 |
| `which flutter dart`                                                                 | verify dart                                                                                                                                                                         |
| `flutter doctor`                                                                     | check if there are any dependencies you need to install to complete setup (for verbose output, add -v)                                                                              |
| `open -a Simulator`                                                                  | open simulator                                                                                                                                                                      |
| `flutter create my_app`                                                              | create new flutter app                                                                                                                                                              |
| `flutter run`                                                                        | launch the app in the simulator (ensure the simulator is running)                                                                                                                   |
| `flutter packages get`                                                               | pulls the packages under dependencies into your project                                                                                                                             |
| * `flutter channel beta`<br/>* `flutter upgrade`<br/>* `flutter config --enable-web` | perform the following commands to make sure that you have the latest web support and that it’s enabled. You only need to run flutter config once to enable Flutter support for web. |
| `flutter devices`                                                                    | list the devices available                                                                                                                                                          |
| `flutter run -d chrome`                                                              | launch app in chrome                                                                                                                                                                |
| `http://127.0.0.1:9100`                                                              | connect to DevTools (use: ws://127.0.0.1:...=/ws)                                                                                                                                   |

## Observations

* Material is a visual design language that is standard on movile and the web. Flutter offers a rich set of Material widgets.
* The main method uses arrow (=>) notation. Use arrow notation for one-line functions or methods.
* The app extends StatelessWidget, which makes the app itself a widget. In Flutter, almost everything is a widget, including alignment, padding, and layout.
* The Scaffold widget, from the Material library, provides a default app bar, a title, and a body property that holds the widget tree for the home screen. The widget subtree can be quite complex.
* A widget's main job is to provide a build method that describes how to display the widget in terms of other, lower-level widgets.
* The Center widget aligns its widget subtree to the center of the screen.
* The pubspec file manages the assets for a Flutter app. (`pubspec.yaml`)
* If the app is running, use the hot reload button to update the running app. Each time you click hot reload or save the project, you should see a different word pair, chosen at random, in the running app. This is because the word pairing is generated inside the build method, which is run each time the MaterialApp requires rendering, or when toggling the Platform in Flutter Inspector.
* Prefixing an identifier with an underscore enforces privacy in the Dart language.
* In Flutter's reactive style framework, calling `setState()` triggers a call to the `build()` method for the State object, resulting in an update to the UI.
* Some widget properties take a single widget (child), and other properties, such as action, take an array of widgets (children), as indicated by the square brackets ([]).

## Stateful Widgets

* Stateless widgets are immutable, meaning that their properties can't change—all values are final.
* Stateful widgets maintain state that might change during the lifetime of the widget. Implementing a stateful widget requires at least two classes: 1) a StatefulWidget class that creates an instance of 2) a State class. The StatefulWidget class is, itself, immutable, but the State class persists over the lifetime of the widget.

## ListView

* ListView's builder factory constructor allows you to build a list view lazily, on demand.
* The ListView class provides a builder property, itemBuilder, that's a factory builder and callback function specified as an anonymous function. Two parameters are passed to the function—the BuildContext, and the row iterator, i. The iterator begins at 0 and increments each time the function is called—once for every suggested word pairing. This model allows the suggestion list to grow infinitely as the user scrolls.

## Navigation and Routes

* In Flutter, the Navigator manages a stack containing the app's routes. Pushing a route onto the Navigator's stack, updates the display to that route. Popping a route from the Navigator's stack, returns the display to the previous route.
* Build a route and push it to the Navigator's stack. This action changes the screen to display the new route. The content for the new page is built in MaterialPageRoute's `builder` property, in an anonymous function.
* Call Navigator.push, as shown below, which pushes the route to the Navigator's stack.

```dart
void _pushSaved() {
  Navigator.of(context).push(
  );
}
```

## Themes

* The theme controls the look and feel of your app. You can either use the default theme, which is dependent on the physical device or emulator, or customize the theme to reflect your branding.
* You can easily change an app's theme by configuring the `ThemeData` class. This app currently uses the default theme, but you'll change the app's primary color to white.
* Use ThemeData to change other aspects of the UI. The Colors class in the Material library provides many color constants you can play with, and hot reload makes experimenting with the UI quick and easy.

```dart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: RandomWords(),
    );
  }
}
```

## Debugger

1. Set a breakpoint
    * Now that you have DevTools running, select the Debugger tab in the blue bar along the top. The debugger pane appears and, in the lower left, see a list of libraries used in the example. Select `main.dart` to display your Dart code in the center pane.

## Resources

* [Flutter.dev](https://flutter.dev/docs/codelabs)
* [Cookbook](https://flutter.dev/docs/cookbook)
* [Samples](https://flutter.github.io/samples/#)
* [Icons](https://fonts.google.com/icons?selected=Material+Icons)
* [Material Design](https://material.io/)
