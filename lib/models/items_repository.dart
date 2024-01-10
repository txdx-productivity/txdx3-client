import 'package:txdx3_client/models/command.dart';
import 'package:txdx3_client/models/payload.dart';

import 'item.dart';

class ItemRepository {
  final List<Command> commands = [];
  final List<Item> items = [];

  void applyCommands(List<Command> commands) {
    for (var command in commands) {
      applyCommand(command);
    }
  }

  void applyCommand(Command command) {
    switch (command.name) {
      case "create_new_item":
        _createNewItem(command.payload);
    }

    commands.add(command);
  }

  void _createNewItem(Payload payload) {
    items.add(Item(
      title: payload.title,
      description: payload.description,
      dueOn: payload.dueOn,
      completedAt: payload.completedAt,
    ));
  }
}
