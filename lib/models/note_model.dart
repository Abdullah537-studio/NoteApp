import 'package:hive/hive.dart';

// فيك تقول انها نفس استعمال ال  import قريبة منها
// هلق بدي حط اسم الكلاس note_modl بعدين .g مشان generate بعدين .dart
// اسم ال file يلي بدي اعملو generate
part 'note_model.g.dart';
// بعدين بنحط flutter packages pub run build_runner build بال terminal

@HiveType(typeId: 0)
class NoteModels extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subtitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;
  NoteModels(
      {required this.title,
      required this.subtitle,
      required this.date,
      required this.color});
}
