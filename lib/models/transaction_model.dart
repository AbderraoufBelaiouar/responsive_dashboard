class TransactionModel {
  final String title;
  final String date;
  final double amount;
  final bool isWithdraw;

  const TransactionModel(
      {required this.title,
      required this.isWithdraw,
      required this.date,
      required this.amount});
}
