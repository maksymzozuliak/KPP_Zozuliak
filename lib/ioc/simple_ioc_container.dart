final class SimpleIoCContainer {
  static Map<Type, Object> _container = {};

  static void register<TType extends Object, TImplementation extends TType>(TImplementation implementation) {
    _container[TType] = implementation;
  }

  static TType resolve<TType>() {
    final result = safeResolve<TType>();

    if (result == null) {
      throw ArgumentError('Cannot construct object of type $TType');
    }

    return result;
  }

  static TType? safeResolve<TType>() {
    if (!_container.containsKey(TType)) {
      return null;
    }

    return _container[TType] as TType;
  }
}
