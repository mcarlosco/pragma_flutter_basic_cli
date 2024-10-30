import 'fake_store_api/apis.dart';
import 'utils/formatters_util.dart';
import 'utils/parsers_util.dart';

void main(List<String> arguments) {
  _execute(
    command: arguments.elementAtOrNull(0),
    id: arguments.elementAtOrNull(1),
  );
}

void _execute({String? command, String? id}) {
  switch (command) {
    case 'get-products' || 'get-p':
      final productsApi = ProductsApi();

      if (id != null) {
        productsApi.getProduct(parseIntOrDefault(id)).then((coin) {
          coin.flip(_printSingle, (_) {
            print('error getting product: $id');
          });
        });
      } else {
        productsApi.getProducts().then((coin) {
          coin.flip(_printMultiple, (_) {
            print('error getting products');
          });
        });
      }
      break;
    case 'get-categories' || 'get-c':
      final productsApi = ProductsApi();

      productsApi.getCategories().then((coin) {
        coin.flip(_printMultiple, (_) {
          print('error getting categories');
        });
      });
      break;
    case 'get-users' || 'get-u':
      final usersApi = UsersApi();

      if (id != null) {
        usersApi.getUser(parseIntOrDefault(id)).then((coin) {
          coin.flip(_printSingle, (_) {
            print('error getting user: $id');
          });
        });
      } else {
        usersApi.getUsers().then((coin) {
          coin.flip(_printMultiple, (_) {
            print('error getting users');
          });
        });
      }
      break;
    default:
      print(command != null ? 'unknown command: $command' : 'no command...');
  }
}

void _printSingle(Object object) {
  _printMultiple([object]);
}

void _printMultiple(Iterable<Object> objects) {
  print(formatPrintable(objects));
}
