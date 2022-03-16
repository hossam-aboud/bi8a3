import 'package:flutter/material.dart';

class BuildDescriptionApp extends StatelessWidget {
  const BuildDescriptionApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Text(
          'شـــــــارك قســـــم تــقــنيـــة الحاســــــب الالي والـــــــمـــعلومــــات بــمبـادرة " بــقــاع "ضـمـن فعاليات اليوم الوطني السعودي 91 من خــــلال تفعيل تقنية الواقع الافتراضي لأبرز الــــمعالم الدينية بالعاصمة المقدسة والتــي تتيح للمستخدمين مشاهدة المعالم الدينية عـــــن طــــريـــق اســـتـــخـــدام نـــظـــارة الــــواقـــــع الافتراضي ليعيش المستخدم تجربة التواجد بالـــمــكان افتراضيـــا ومشاهـــدة ما حوله مــن مــعــالم بدقة عالية وذلك لمواكبة التحــول الرقمي وفق رؤية 2030 كما قام القسم أيضا بإنشاء بيئة محاكاة افتراضية لتصميم معرض افتراضي يمكن من خلاله مشاهدة هذه المعالم الدينية العظيمة بالعاصمة المقدسة',
          textAlign: TextAlign.center,
          maxLines: 13,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
