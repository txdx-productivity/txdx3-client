import 'package:clock/clock.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:txdx3_client/models/txdx_state.dart';
import 'package:uuid/uuid.dart';

import 'txdx_state_test.mocks.dart';

@GenerateMocks([Uuid, Clock])
void main() {
  const UUID = '6c84fb90-12c4-11e1-840d-7b25c5ee775a';

  test("initial items list is empty", () {
    final state = TxDxState();
    expect(state.items.length, 0);
  });

  test("create empty new item with uuid and utc createdAt", () {
    final mockUuid = MockUuid();
    when(mockUuid.v1()).thenReturn(UUID);

    final createdAt = DateTime.now();
    final mockClock = MockClock();
    when(mockClock.now()).thenReturn(createdAt);

    final state = TxDxState(uuid: mockUuid, clock: mockClock);

    var item = state.createItem();

    expect(state.items.length, 1);
    expect(item.uuid, UUID);
    expect(item.createdAt, createdAt.toUtc());
  });
}
