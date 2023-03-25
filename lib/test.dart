void main() async {
  final butterfliesHolder = ButterfliesHolder(
    butterflies: [
      'Крапивница',
      'Павлиний глаз',
      'Капустница',
      'Голубянка алексис',
    ],
  );

  await butterfliesHolder.addButterfly('Фиолетовую бабочку');

  for (int i = 0; i < 10000; i++) {
    print('Основной тред');
  }
}

class ButterfliesHolder {
  final List<String> butterflies;

  ButterfliesHolder({required this.butterflies});

  Future<void> addButterfly(
    String newButterfly,
  ) async {
    print('Butterfly adding');
    await Future.delayed(const Duration(seconds: 2));

    if (butterflies.contains(newButterfly)) {
      throw DuplicateException();
    } else {
      butterflies.add(newButterfly);
    }

    print('Butterfly added');
  }

  void show() {
    print(butterflies);
  }
}

class DuplicateException extends ArgumentError {}
