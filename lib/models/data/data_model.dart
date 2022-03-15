import 'dart:developer';

import 'package:baqa3/models/data_of_home/data_of_home_model.dart';

class DataModel {
  late final String photo;
  late final String title;
  List<DataOfHomeModel> data = [];

  DataModel.formJSON(Map<String, dynamic> json) {
    photo = json['photo'];
    title = json['title'];
    if (json['data'] != null) {
      json['data'].forEach((element) {
        log(element.toString());
        data.add(DataOfHomeModel.fromJSON(element));
      });
    }
  }

  Map<String, dynamic> toMap() {
    return {
      'photo': photo,
      'title': title,
      'data': data,
    };
  }
}

// 3d_mode
// var data = <DataModel>[
//   DataModel(
//     photo: 'assets/images/home/home_photo_one.png',
//     title: 'المشاعر المقدسة',
//     dataOne: [
//       DataOfHomeModel(
//         picture:
//             'assets/images/home/data_photo_one/technique_picture_one/picture_one.png',
//         title: 'عــــرفــــات',
//         description:
//             'جبل عرفة هو الجبل\nالذي يقع على الطريق بين مكة والطائف\nوالذي هو من أهم مناسك الحج حيث يقف\nالحجاج عنده اليوم التاسع من شهر ذي الحجة',
//         vr_mode:
//             'assets/images/home/data_photo_one/technique_picture_one/vr_mode.mp4',
//         mode_3d:
//             'assets/images/home/data_photo_one/technique_picture_one/three_d_mode.jpeg',
//       ),
//       DataOfHomeModel(
//         picture:
//             'assets/images/home/data_photo_one/technique_picture_two/picture_two.png',
//         title: 'مزدلفة',
//         description:
//             'ثالث المشاعر المقــدســـة التي يـمر بهــا الحـــجيـــج في رحلة إيمانية يـــؤدون فيـــها مناسك الحج حيث تقع بين مشعري منى وعرفات ويبيت الحجاج بها بعد نفرتهم من عرفات',
//         vr_mode:
//             'assets/images/home/data_photo_one/technique_picture_two/vr_mode.mp4',
//         mode_3d:
//             'assets/images/home/data_photo_one/technique_picture_two/three_d_mode.jpeg',
//       ),
//       DataOfHomeModel(
//         picture:
//             'assets/images/home/data_photo_one/technique_picture_two/three_d_mode.jpeg',
//         title: 'منى',
//         description:
//             'هي وادي تحيط به الجبال، تقع في شرق\nمــكـــة، على الطريق بين مكة وجبل\nعرفـــة وتبعد عن المسجد الحرام نحو 6 كم تقريباً.',
//         vr_mode:
//             'assets/images/home/data_photo_one/technique_picture_three/vr_mode.mp4',
//         mode_3d:
//             'assets/images/home/data_photo_one/technique_picture_three/three_d_mode.jpeg',
//       ),
//     ],
//   ),
//   DataModel(
//     photo: 'assets/images/home/home_photo_two.png',
//     title: 'الأماكن التاريخية',
//     dataOne: [
//       DataOfHomeModel(
//         picture:
//             'assets/images/home/data_photo_two/technique_picture_one/picture_one.jpg',
//         title: 'الكعبة',
//         description:
//             'الكعبة المشرفة هي قبلة المسلمين في صلواتهم، وحولها يطوفون أثناء أداء فريضة الحج، كما أنها أول بيت يوضع في الأرض وفق المُعتقد الإسلامي، ولا يمكن ذكر المسجد الحرام دون ذكر الكعبة، إذ يبدأ تاريخ المسجد بتاريخ بناء الكعبة المشرفة.',
//         vr_mode:
//             'assets/images/home/data_photo_two/technique_picture_one/vr_mode.mp4',
//         mode_3d: 'mode_3d',
//       ),
//       DataOfHomeModel(
//         picture:
//             'assets/images/home/data_photo_two/technique_picture_two/picture_two.jpg',
//         title: 'مسجد الاجابة',
//         description:
//             'هو المسجد الذي خيًم به النبي صلى الله عليه و سلم في حجة الوداع و صلى في موضعه.',
//         vr_mode:
//             'assets/images/home/data_photo_two/technique_picture_two/vr_mode.mp4',
//         mode_3d:
//             'assets/images/home/data_photo_two/technique_picture_two/three_d_mode.jpeg',
//       ),
//       DataOfHomeModel(
//         picture:
//             'assets/images/home/data_photo_two/technique_picture_three/picture_three.jpg',
//         title: 'مسجد غزوة حنين',
//         description:
//             'هو أحد الاماكن التاريخية في مكة المكرمة، ويُعرف أيضاً باسم “مسجد الجعرانة”، ويقع في الجهة الشمالية الشرقية على بُعد 25 كم من المسجد الحرام، والمسجد على وضعه الحالي بدأ تأسيسه قبل بدايات القرن الثالث الهجري بقليل.',
//         vr_mode: 'vr_mode',
//         mode_3d: 'mode_3d',
//       ),
//       DataOfHomeModel(
//         picture:
//             'assets/images/home/data_photo_two/technique_picture_four/picture_four.jpg',
//         title: 'جبل النور',
//         description:
//             'هو أحد المواقع التاريخية في مكة المكرمة يقع جبل النور شمال شرق المسجد الحرام، اكتسب أهمية تاريخية لأن النبي محمد كان يخلو فيه بنفسه ليعبد الله قبل البعثة في غار حراء، وفيه نزل الوحي على النبي لأول مرة.',
//         vr_mode: 'vr_mode',
//         mode_3d: 'mode_3d',
//       ),
//       DataOfHomeModel(
//         picture:
//             'assets/images/home/data_photo_two/technique_picture_five/picture_five.jpg',
//         title: 'جبل ثور',
//         description:
//             'و جبل يقع جنوب مكة المكرمة ومن خلف ثور يمر الطريق الموصل من المطار إلى جدة، ويعرف لدى الناس بطريق الخواجات لأنه روعي في اتخاذه أن يكون خارج حدود الحرم حتى يستطيع أن يسير فيه غير المسلمين.',
//         vr_mode: 'vr_mode',
//         mode_3d: 'mode_3d',
//       ),
//       DataOfHomeModel(
//         picture:
//             'assets/images/home/data_photo_two/technique_picture_six/picture_six.jpg',
//         title: 'مسجد عائشة',
//         description: 'الموضع الذي أحرمت منه السيدة عائشة للعمرة.',
//         vr_mode:
//             'assets/images/home/data_photo_two/technique_picture_six/vr_mode.mp4',
//         mode_3d:
//             'assets/images/home/data_photo_two/technique_picture_six/three_d_mode.jpeg',
//       ),
//       DataOfHomeModel(
//         picture:
//             'assets/images/home/data_photo_two/technique_picture_saven/picture_saven.jpeg',
//         title: 'مسجد البيعة ',
//         description:
//             'المسجد الذي بايع فيه الأنصار الرسول عليه الصلاة و السلام.',
//         vr_mode:
//             'assets/images/home/data_photo_two/technique_picture_saven/vr_mode.mp4',
//         mode_3d:
//             'assets/images/home/data_photo_two/technique_picture_saven/three_d_mode.jpeg',
//       ),
//       DataOfHomeModel(
//         picture:
//             'assets/images/home/data_photo_two/technique_picture_eight/picture_eight.jpg',
//         title: 'مكتبة مكة المكرمة',
//         description: 'مكان مولد الرسول صلى الله عليه و سلم.',
//         vr_mode:
//             'assets/images/home/data_photo_two/technique_picture_eight/vr_mode.mp4',
//         mode_3d:
//             'assets/images/home/data_photo_two/technique_picture_eight/three_d_mode.jpeg',
//       ),
//       DataOfHomeModel(
//         picture:
//             'assets/images/home/data_photo_two/technique_picture_nine/picture_nine.png',
//         title: 'مسجد الجن',
//         description:
//             'هو المكان الذي علم فيه الرسول صلى الله عليه و سلم نفراً من الجن أمور دينهم.',
//         vr_mode: 'vr_mode',
//         mode_3d: 'mode_3d',
//       ),
//     ],
//   ),
// ];
