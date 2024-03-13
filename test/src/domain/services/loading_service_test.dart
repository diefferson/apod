
import 'package:apod/src/domain/services/loading_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LoadingService', () {
    test('should create LoadingService with default values when no arguments are provided', () {
      final loadingService = LoadingService();

      expect(loadingService.loading, emitsInOrder([false]));
    });

    test('should change loading state when startLoading and stopLoading are called', () async {
      final loadingService = LoadingService();

      loadingService.startLoading();
      expect(loadingService.loading, emitsInOrder([true]));

      loadingService.stopLoading();
      expect(loadingService.loading, emitsInOrder([false]));
    });
  });
}