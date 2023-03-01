import '../String File/image_string.dart';
import '../String File/text_string.dart';

///================ brand name ==============
List<String> brands_logo = [
  brand_logo_1,
  brand_logo_2,
  brand_logo_3,
  brand_logo_4,
  brand_logo_5,
  brand_logo_6,
  brand_logo_7,
  brand_logo_8,
  brand_logo_9,
  brand_logo_10,
  brand_logo_11,
  brand_logo_12,
];
List<String>? brandTital = [];

///___________________ Size _________________

List<String> Size_list = [XS, S, M, L, XL, XXL];
List<String>? Size_Tital = [];

///_________________ Payment Schedule _________

List<Listtile> Listtilelist = [
  Listtile(
    tital: "\$34.80",
    description: "Week 1",
  ),
  Listtile(
    tital: "\$35.50",
    description: "Week 2",
  ),
  Listtile(
    tital: "\$33.70",
    description: "Week 3",
  ),
  Listtile(
    tital: "\$34.80",
    description: "Week 4",
  ),
  Listtile(
    tital: "\$20.80",
    description: "Week 5",
  ),
];

class Listtile {
  final String tital;
  final String description;

  Listtile({
    required this.tital,
    required this.description,
  });
}
