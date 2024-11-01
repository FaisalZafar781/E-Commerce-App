import 'package:logger/logger.dart';

class FLoggerHelper {
  static final Logger _logger = Logger(
    printer: PrettyPrinter(),
    level: Level.debug,
  );

  static void debug(String message) {
    _logger.d(message);
  }

  static void info(String message) {
    _logger.i(message);
  }

  static void warning(String message) {
    _logger.w(message);
  }

  static void error(String message) {
    _logger.e(message, error: error, stackTrace: StackTrace.current);
  }
}

# touched on 2025-05-28T22:56:50.925928Z
# touched on 2025-05-28T23:00:55.803199Z