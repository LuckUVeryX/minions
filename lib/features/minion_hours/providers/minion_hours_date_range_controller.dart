import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'minion_hours_date_range_controller.g.dart';

typedef DateRange = (DateTime? start, DateTime? end);
typedef SelectedDate = (DateTime? date, DateRange range);

@riverpod
class MinionHoursDateRangeController extends _$MinionHoursDateRangeController {
  @override
  SelectedDate build() {
    return (DateTime.now(), (null, null));
  }

  void onDateChanged(DateTime value) {
    state = (value, (null, null));
  }

  void onRangeChanged(DateRange value) {
    state = (null, value);
  }
}
