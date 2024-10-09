import 'package:placeholder_app/core/services/inject_services.dart';
import 'package:placeholder_app/features/post/inject_post.dart';

Future<void> injectDependencies() async {
  await injectServices();

  await injectPost();
}
