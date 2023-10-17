import 'package:flutter_test/flutter_test.dart';

import 'package:vietnamese/vietnamese.dart';

void main() {
  group('String', () {
    test('Test API none vietnamese', () {
      expect(
        'Tests can be grouped '.deleteVietnameseAccents,
        equals('Tests can be grouped '),
      );
      expect(
        'Each group\'s description is added to the beginning of its test\'s descriptions'
            .deleteVietnameseAccents,
        equals(
          'Each group\'s description is added to the beginning of its test\'s descriptions',
        ),
      );
    });
    test('Test API vietnamese unsign', () {
      expect('viet nam'.deleteVietnameseAccents, equals('viet nam'));
      expect('Vi Chi Thien'.deleteVietnameseAccents, equals('Vi Chi Thien'));
    });
    test('Test API vietnamese sign', () {
      expect(
        'Văn học theo cách nói chung nhất, là bất kỳ tác phẩm nào bằng văn bản'
            .deleteVietnameseAccents,
        equals(
          'Van hoc theo cach noi chung nhat, la bat ky tac pham nao bang van ban',
        ),
      );
      expect(
        'VĂN HỌC THEO CÁCH NÓI CHUNG NHẤT, LÀ BẤT KỲ TÁC PHẨM NÀO BẰNG VĂN BẢN'
            .deleteVietnameseAccents,
        equals(
          'VAN HOC THEO CACH NOI CHUNG NHAT, LA BAT KY TAC PHAM NAO BANG VAN BAN',
        ),
      );
      expect(
        'Bạn đang có ý tưởng về 1 công cụ nào đó'.deleteVietnameseAccents,
        equals(
          'Ban dang co y tuong ve 1 cong cu nao do',
        ),
      );
    });
  });
  group('String and int', () {
    test('Test API none vietnamese', () {
      expect(
        '360–400 million (2006);'.deleteVietnameseAccents,
        equals('360–400 million (2006);'),
      );
      expect(
        'B2 upper intermediate: An interview'.deleteVietnameseAccents,
        equals('B2 upper intermediate: An interview'),
      );
    });
    test('Test API vietnamese unsign', () {
      expect('Cuoi the ky thu 19 tro di'.deleteVietnameseAccents,
          equals('Cuoi the ky thu 19 tro di'));
      expect(
        'Tap 1, Van hoc the ky thu 10 - 15'.deleteVietnameseAccents,
        equals('Tap 1, Van hoc the ky thu 10 - 15'),
      );
    });
    test('Test API vietnamese sign', () {
      expect(
        'Sau hơn 10 thế kỷ hình thành và phát triển'.deleteVietnameseAccents,
        equals('Sau hon 10 the ky hinh thanh va phat trien'),
      );
      expect(
        'Đây là tiếng mẹ đẻ của khoảng 85% dân cư Việt Nam'
            .deleteVietnameseAccents,
        equals('Day la tieng me de cua khoang 85% dan cu Viet Nam'),
      );
    });
    test('Test with value is empty', () {
      expect(
        ''.deleteVietnameseAccents,
        equals(''),
      );
    });
    test('Test with value is null', () {
      expect(
        null.deleteVietnameseAccents,
        equals(''),
      );
    });
    test('Test with value is lowercase', () {
      expect(
        'Sau hơn 10 thế kỷ hình thành và phát triển'
            .deleteVietnameseAccentsLowerCase,
        equals('sau hon 10 the ky hinh thanh va phat trien'),
      );
    });
  });
}
