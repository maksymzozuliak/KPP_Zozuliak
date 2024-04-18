/// A simple IoC (Inversion of Control) container for dependency injection.
class SimpleIoCContainer {
  static Map<Type, Object> _container = {};

  /// Registers a type with its implementation in the container.
  ///
  /// The [TType] parameter represents the abstract type, and [TImplementation]
  /// represents the concrete implementation type.
  static void register<TType extends Object, TImplementation extends TType>(
      TImplementation implementation) {
    _container[TType] = implementation;
  }

  /// Resolves an instance of a registered type from the container.
  ///
  /// Throws an [ArgumentError] if the type is not registered.
  static TType resolve<TType>() {
    final result = safeResolve<TType>();

    if (result == null) {
      throw ArgumentError('Cannot construct object of type $TType');
    }

    return result;
  }

  /// Safely resolves an instance of a registered type from the container.
  ///
  /// Returns null if the type is not registered.
  static TType? safeResolve<TType>() {
    if (!_container.containsKey(TType)) {
      return null;
    }

    return _container[TType] as TType;
  }
}
