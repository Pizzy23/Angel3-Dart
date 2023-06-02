import 'package:angel3_configuration/angel3_configuration.dart';
import 'package:angel3_framework/angel3_framework.dart';
import 'package:angel3_jael/angel3_jael.dart';
import 'package:file/file.dart';
import 'plugins/plugins.dart' as plugins;


AngelConfigurer configureServer(FileSystem fileSystem) {
  return (Angel app) async {
    await app.configure(configuration(fileSystem));
    await app.configure(jael(fileSystem.directory('views')));
    await plugins.configureServer(app);
  };
}
