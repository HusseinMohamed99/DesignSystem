import 'dart:developer';
import 'dart:io';

void main() {
  //project path
  final projectPath = "${Directory.current.path}/lib/core";

  //folder creation
  final directories = [
    '$projectPath/helpers',
    '$projectPath/helpers/enum',
    '$projectPath/helpers/extensions',
    '$projectPath/helpers/responsive',
    '$projectPath/helpers/adaptive',
    '$projectPath/helpers/validations',
    '$projectPath/helpers/constants',
    '$projectPath/helpers/functions',
    '$projectPath/helpers/value_manager',
    '$projectPath/helpers/app_string',
    '$projectPath/helpers/export_manager',
    '$projectPath/di',
    '$projectPath/networking',
    '$projectPath/networking/apis',
    '$projectPath/networking/cache_helper',
    '$projectPath/routing',
    '$projectPath/theming',
    '$projectPath/theming/color_manager',
    '$projectPath/theming/style_manager',
    '$projectPath/theming/app_theming',
    '$projectPath/widgets',
  ];

  for (var dir in directories) {
    final directory = Directory(dir);
    if (!directory.existsSync()) {
      directory.createSync(recursive: true);
      log('Created: $dir ✓');
    } else {
      log('Directory already exists: $dir ');
    }
  }
  log('creating files Successfully ✓');
}
