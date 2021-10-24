import 'package:flutter/material.dart';

class Provider<T> extends InheritedWidget {
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;

  final Widget child;
  final T bloc;

  const Provider({Key? key, required this.child, required this.bloc})
      : super(key: key, child: child);

  static Provider of<T>(BuildContext context) {
    final Type type = _providerType<Provider<T>>();
    final Provider<T>? provider =
        (context.dependOnInheritedWidgetOfExactType<Provider>(aspect: type)
            as Provider<T>);

    assert(provider != null, "No Provider Found");

    return provider!;
  }

  static Type _providerType<T>() => T;
}
