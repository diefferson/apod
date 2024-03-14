
import 'package:apod/src/utils/extensions.dart';

class Strings {
  String get appName => 'Apod';

  String get locale => 'en_US';

  String get showMore => 'more';

  String get showLess => 'less';

  String get dateFormat => 'yyyy-MM-dd';

  String get details => 'Details';

  String get title => 'Title:';

  String formattedDate(DateTime date) {
    return date.toDateString(format: dateFormat);
  }

  String copyrightOf(String copyright, DateTime date) {
    return 'Copyright © ${date.year} - $copyright';
  }

}
