part of 'models.dart';

enum TransactionStatus { delivered, on_delivery, pending, cancelled }

class TransactionModel extends Equatable {
  final int? id;
  final FoodModels food;
  final int? quantity;
  final int? total;
  final DateTime? dateTimeOrder;
  final TransactionStatus? statusTransaction;
  final UserModels? user;

  TransactionModel({this.id, required this.food, this.quantity, this.total,
      this.dateTimeOrder, this.statusTransaction, this.user});

  TransactionModel copyWith({
    int? id,
    FoodModels? food,
    int? quantity,
    int? total,
    DateTime? dateTimeOrder,
    TransactionStatus? statusTransaction,
    UserModels? user,
  }) {
    return TransactionModel(
      id: id ?? this.id,
      food: food ?? this.food,
      quantity:  quantity ?? this.quantity,
      total: total ?? this.total,
      dateTimeOrder: dateTimeOrder ?? this.dateTimeOrder,
      statusTransaction: statusTransaction ?? this.statusTransaction,
      user: user ?? this.user,
    );
  }

  @override
  List<Object?> get props =>
      [id, food, quantity, total, dateTimeOrder, statusTransaction, user];
}

List<TransactionModel> mockTransaction = [
  TransactionModel(
      id: 1,
      food: mockFood[1],  // Named parameter untuk food
      quantity: 2,
      total: (mockFood[1].price * 2 * 1.1).round() + 12000,
      dateTimeOrder: DateTime.now(),
      statusTransaction: TransactionStatus.delivered,
      user: mockUser
  ),
  TransactionModel(
      id: 2,
      food: mockFood[2],
      quantity: 3,
      total: (mockFood[1].price * 2 * 1.1).round() + 12000,
      dateTimeOrder: DateTime.now(),
      statusTransaction: TransactionStatus.on_delivery,
      user: mockUser
  ),
  TransactionModel(
      id: 3,
      food: mockFood[3],
      quantity: 4,
      total: (mockFood[1].price * 2 * 1.1).round() + 12000,
      dateTimeOrder: DateTime.now(),
      statusTransaction: TransactionStatus.pending,
      user: mockUser
  ),
  TransactionModel(
      id: 4,
      food: mockFood[4],
      quantity: 5,
      total: (mockFood[1].price * 2 * 1.1).round() + 12000,
      dateTimeOrder: DateTime.now(),
      statusTransaction: TransactionStatus.cancelled,
      user: mockUser
  )
];

