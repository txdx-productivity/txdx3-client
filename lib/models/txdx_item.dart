class TxDxItem {
  final String uuid;
  final String? title;
  final String? description;
  final DateTime createdAt;
  final DateTime? dueOn;
  final DateTime? completedAt;

  TxDxItem(
      {required this.uuid,
      this.title,
      this.description,
      required this.createdAt,
      this.dueOn,
      this.completedAt});
}
