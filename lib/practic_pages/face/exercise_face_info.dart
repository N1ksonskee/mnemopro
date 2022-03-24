import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import '../../controllers/expansion_tile_controller.dart';
import '../../widgets/custom_expansion_chain.dart';
import '../../widgets/expansion_image.dart';
import '../../widgets/expansion_tile_state.dart';


class ExerciseFaceInfo extends StatelessWidget {
  const ExerciseFaceInfo({Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: kblueBG,
      appBar: AppBar(
        backgroundColor: kblue,
        title: Text(title, style: Get.textTheme.headline1, maxLines: 2,),
        leading: const CloseIconButton(isLec: true),
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 32),
          child: _buildBody())
      ,
    );
  }

  Widget _buildBody() {
    ExpansionTileController expansionTileController = Get.put(ExpansionTileController());
    for(int i = 0; i < 8; i++) {
      expansionTileController.isExpandedList.add(
          ExpansionTileElem(globalKey: GlobalKey<CustomExpansionTileState>())
      );
    }

    List<List<String>> pathes = [
      [
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Foval.jpg?alt=media&token=bc90a2ac-a80d-4fdc-865b-d0161cc372b3',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fround_head.jpg?alt=media&token=873aac60-ca23-46a0-a3f2-ebdbaef8e223',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Frect_head.jpg?alt=media&token=b782dc23-71ef-4ffa-9375-a05d1661e63b',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fnarrow_head.jpg?alt=media&token=0c2b9894-7100-41ca-966e-bcc29113bedb',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fwide_head.jpg?alt=media&token=75dec81e-ff11-43bb-b348-9014a9d44c3b',
      ],
      [
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fblack_hair.jpg?alt=media&token=0dcc9dc5-35b4-496b-96db-9bba6809b20f',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fblond_hair.jpg?alt=media&token=c8fc4170-fbe9-46c2-9738-d72d27c364e3',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Frussie_hair.jpg?alt=media&token=f58bd11d-f222-41a6-8c83-0285ca96db77',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fshaten_hair.jpg?alt=media&token=4eacacb9-bb81-497d-bd06-caf367e3924a',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Frigie_hair.jpg?alt=media&token=b0774e8c-91a7-4d80-88da-8edf74fbf605',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Funusual_hair.jpg?alt=media&token=2d4d1c7b-2f22-43aa-987b-d61ec3654e34',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fsedie_hair.jpg?alt=media&token=5dcc9282-86a2-4159-875f-0abfa7af9807',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Flisiy_hair.jpg?alt=media&token=21b778e8-86b9-47e6-a2c2-c54c168c8ae1',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fzalisina_hair.jpg?alt=media&token=3971ec78-6171-43bc-80c4-2adb634aefd9',

        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fvery_long_hair.jpg?alt=media&token=03889bf1-0a27-4092-b4ca-0cc696699a59',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Flong_hair.jpg?alt=media&token=e0dd5619-1c86-4dc3-ba70-d91495a30d8d',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fmiddle_hair.jpg?alt=media&token=e7dfb708-747d-44b0-bbbc-f1f531639e62',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fshort_hair.jpg?alt=media&token=0a05ac1b-f9a1-49d3-b606-68369f7fe9ce',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fvery_short_hair.jpg?alt=media&token=168ac2d1-37dc-46e5-b191-1394ebd591f6',

        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fstraight_hair.jpg?alt=media&token=f8ebdfea-2015-48f9-9f46-37961801ff63',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fwafy_hair.jpg?alt=media&token=2a330113-759f-4c25-80fe-67fdf761854e',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fkydriavie_hair.jpg?alt=media&token=8d1fb6e2-c30d-41df-b03e-603c08aca04e',

        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fgustie_hair.jpg?alt=media&token=39aa3bce-8eae-4fb3-acd8-751c74974f7a',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fgidkie_hair.jpg?alt=media&token=668d6b0f-a949-4e1e-b5f3-e6ab0da944e1',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fvery_gidkie_hair.jpg?alt=media&token=c7eb1b1a-55a3-4236-844a-3b210ed77f36',

        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fchelka_hair.jpg?alt=media&token=210d190b-beb7-4d81-8bca-6a34dc2d60b7',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fchelka_no.jpg?alt=media&token=3fd26853-a4c9-4f07-89f3-5f7e2ab573c9',

        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fleft_probor.jpg?alt=media&token=b273cf6f-8748-44e6-9b09-9e7cdf80a73e',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fmiddle_probor.jpg?alt=media&token=538fc7fa-5c0c-4a54-8dc2-d25ae0a5ad3c',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fright_probor.jpg?alt=media&token=b6a25581-a51c-47f9-bf90-845f3a9abfd1',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fno_probor.jpg?alt=media&token=7204befd-c849-4e3e-b7dc-7391736ed5c4',
      ],
      [
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fear_dont_see.jpg?alt=media&token=b5d3171a-c56b-4f6d-8fd3-5b536cf117d6',

        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fbig_ear.jpg?alt=media&token=d469279e-7957-406c-af24-b8067d4f89f6',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fmiddle_ear.jpg?alt=media&token=0d083bd7-c9a2-4be1-a8e7-2f99fee1dba5',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fsmall_ear.jpg?alt=media&token=35959db6-417f-4e78-9a6e-a61e9590eb43',

        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fupper_brows_ear.jpg?alt=media&token=a8252b0a-136e-4bc8-9c5f-048e4fa2d333',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Flevel_brows_ear.jpg?alt=media&token=48dc4c9d-d2e9-4bd3-ac2f-f558b2e214e5',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Flow_brows_ear.jpg?alt=media&token=6c5027c6-1225-445e-8838-18f203434f86',

        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fshrink_ear.jpg?alt=media&token=22cd3d86-bc47-4e46-99df-a58aec52abe1',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fexpanded_ear.jpg?alt=media&token=d3d6c794-4b82-48d5-abed-38848b9cd5c6',

        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Felf_ear.jpg?alt=media&token=57bb9c13-3264-4118-ba54-c8668d28f1c0',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fusual_ear.jpg?alt=media&token=027a912b-07bb-4583-96ff-feceb146e933',
      ],
      [
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fthick_brows.jpg?alt=media&token=678223ab-a100-41c3-bf6b-d390087ebd37',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fthin_brows.jpg?alt=media&token=e1268da7-06a1-4295-8e7e-101cf4dec34e',

        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fhustie_brows.jpg?alt=media&token=a436a645-07a2-4fc9-befb-c4613367a8b6',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fne_hustie.jpg?alt=media&token=802fc997-66df-45fd-af9b-13066ea95ebe',

        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fstraight_brows.jpg?alt=media&token=54b181bd-c2f7-412f-95f4-198cb0dbc120',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fdugi_brows.jpg?alt=media&token=33286e42-27e0-485f-96bd-e857006d1e3c',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fhome_brows.jpg?alt=media&token=80f0b135-969c-4257-b306-117c2c5f4521',
      ],
      [
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fbig_eye.jpg?alt=media&token=7e316707-0623-4f95-bffb-c80303f26cdb',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fsmall_eye.jpg?alt=media&token=bc088fe7-8a54-498c-a22b-2c1b6075650f',

        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fcircular_eye.jpg?alt=media&token=a62b3626-2885-4f26-bc2d-c9bbe6c85f01',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Foval_eye.jpg?alt=media&token=d493d219-0982-4204-bd66-c9b799265143',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fmendal_eye.jpg?alt=media&token=5971b8d2-8126-4d22-9d62-21c0868fed37',

        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fbag_eye.jpg?alt=media&token=b5925445-8b4d-425d-9ce8-a479d11a1fd4',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fno_bag_eye.jpg?alt=media&token=ea0685b4-c828-4169-a1d0-bc5d117d2838',

        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fsmall_zrachok_eye.jpg?alt=media&token=6b0971f3-e85f-4e42-adc4-b9a47fe465ab',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fmiddle_zrachok_eye.jpg?alt=media&token=87d13ca4-988c-436b-94c1-c78cdfb9197c',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fbig_zrachok_eye.jpg?alt=media&token=e31a538e-794c-4241-8c22-1cf869378780',

        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fblack_eye.jpg?alt=media&token=01da4dde-63c7-4c60-9ed1-2c34c3d4d34c',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fdark_grey_eye.jpg?alt=media&token=b1554f55-6ca5-4073-8300-904f0a5371f5',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fgrey_eye.jpg?alt=media&token=2cb929da-175c-4b36-a318-50928da06169',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fblue_eye.jpg?alt=media&token=0afafdc1-3243-4603-a835-a8e7c4943136',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Flight_blue_eye.jpg?alt=media&token=ed5a6312-b312-4c94-88af-c6bb4dbdad4f',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fkarie_eye.jpg?alt=media&token=6a6c36c0-de0d-4aa1-8e25-b739b5e91f03',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fburo_yellow_eye.jpg?alt=media&token=92037521-334e-4111-b0d3-d72193a1068a',
      ],
      [
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fbig_nose.jpg?alt=media&token=0c7a23cf-3b48-42de-b53b-afe076f0b1d9',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fmiddle_nose.jpg?alt=media&token=ea2b1ad3-bfd4-44d4-b281-cbf16b64e223',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fsmall_nose.jpg?alt=media&token=6b4ef540-68ef-4cd6-a4bc-73423d3eb9c2',

        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fwide_nose.jpg?alt=media&token=7a199aa7-9335-466e-815b-a04dc505fa6b',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fnarrow_nose.jpg?alt=media&token=adcdc072-86c8-428e-9292-61fd7d045951',

        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fhorb_nose.jpg?alt=media&token=045b58b4-a613-4073-ab47-b7b0557e9c02',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fstraight_nose.jpg?alt=media&token=c01b6f8d-c944-41f1-9c71-7d99b7694cf2',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fkurnosiy_nose.jpg?alt=media&token=e96df9f7-c7f4-406a-be96-5c5bf8b928b6',
      ],
      [
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fbig_lips.jpg?alt=media&token=753cbd09-5d7e-472f-9770-bd384207ce3a',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fsmall_lips.jpg?alt=media&token=a4cd0eac-2907-4b53-a575-bf07ba01b7f8',

        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fopened_lips.jpg?alt=media&token=6a735f7b-c1c9-40af-a7f1-1168459cc89c',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fdensity_shrinked_lips.jpg?alt=media&token=a4ab0f19-331c-47ab-90e8-ea264d613c43',

        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Ffat_lips.jpg?alt=media&token=4dac8d5c-9dce-4df3-8e36-4decf71fad6a',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fthin_lips.jpg?alt=media&token=da623a5c-ec2b-4542-af0a-0ab092090995',

        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Flow_bigger_lips.jpg?alt=media&token=9ad8ba44-05fe-490c-8c47-51a1f1ab0a8b',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fupper_bigger_lips.jpg?alt=media&token=8edced73-3c2c-4567-aa3c-694e7e10ccb2',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Flow_upper_equal_lips.jpg?alt=media&token=5804961d-2309-402a-a737-ed957deb07b4',

        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fstraight_lips.jpg?alt=media&token=b6585884-6828-4334-bb50-8eba647f0398',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Flips_banticom.jpg?alt=media&token=46c0b40e-97a0-4052-8e0f-9c68d0ec371e',

        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fbig_dest_lips.jpg?alt=media&token=da6d6634-fc24-4b49-8952-1597655962b2',
        'https://firebasestorage.googleapis.com/v0/b/mnemo-app-7b27f.appspot.com/o/face%2Fsmall_dest_lips.jpg?alt=media&token=2bdf2cb3-161c-4c98-beea-efa0ad0a954d',
      ]
    ];

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'face_1'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              Text(
                'face_2'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'face_3'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'face_4'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              Text(
                'face_5'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children:  [
                    TextSpan(text: 'face_6'.tr),
                    TextSpan(text: 'face_7'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'face_8'.tr),
                    TextSpan(text: 'face_9'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                  ]
                ),
              ),
              sizedBoxHigh(),
              Center(
                child: SvgPicture.asset('assets/face.svg'),
              ),
              sizedBoxHigh(),
              Text(
                'face_10'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
               Text(
                'face_11'.tr,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kblue),
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children:  [
                    TextSpan(text: 'face_12'.tr),
                    TextSpan(text: 'face_13'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'face_14'.tr),
                    TextSpan(text: 'face_15'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'face_16'.tr),
                    TextSpan(text: 'face_17'.tr),
                  ]
                ),
              ),
              sizedBoxLow(),
              Text(
                'face_18'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'face_19'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
               Text(
                'face_20'.tr,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kblue),
              ),
              sizedBoxLow(),
              Text(
                'face_21'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
               Text(
                'face_22'.tr,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kblue),
              ),
              sizedBoxLow(),
              Text(
                'face_23'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'face_24'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'face_25'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'face_26'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              CustomExpansionChain(
                widgets: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Text(
                              'face_27'.tr,
                              style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20),
                            ),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_28'.tr, pathes[0][0]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_29'.tr, pathes[0][1]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_30'.tr, pathes[0][2]),
                            sizedBoxHigh(),
                             Text(
                              'face_31'.tr,
                              style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20),
                            ),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_32'.tr, pathes[0][3]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_33'.tr, pathes[0][4]),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
                expansionTileIndex: 0,
                title: 'face_34'.tr,
                subtitle: 'face_35'.tr,
                subtitleColor: kblue,
              ),
              sizedBoxHigh(),
              CustomExpansionChain(
                widgets: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Text(
                              'face_36'.tr,
                              style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20),
                            ),
                            sizedBoxLow(),
                            Text(
                              'face_37'.tr,
                              style: Get.textTheme.bodyText1,
                            ),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_38'.tr, pathes[1][0]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_39'.tr, pathes[1][1]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_40'.tr, pathes[1][2]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_41'.tr, pathes[1][3]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_42'.tr, pathes[1][4]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_43'.tr, pathes[1][5]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_44'.tr, pathes[1][6]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_45'.tr, pathes[1][7]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_46'.tr, pathes[1][8]),
                            sizedBoxHigh(),
                             Text(
                              'face_47'.tr,
                              style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20),
                            ),
                            sizedBoxLow(),
                            Text(
                              'face_48'.tr,
                              style: Get.textTheme.bodyText1,
                            ),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_49'.tr, pathes[1][9]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_50'.tr, pathes[1][10]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_51'.tr, pathes[1][11]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_52'.tr, pathes[1][12]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_53'.tr, pathes[1][13]),
                            sizedBoxHigh(),
                             Text(
                              'face_54'.tr,
                              style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20),
                            ),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_55'.tr, pathes[1][14]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_56'.tr, pathes[1][15]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_57'.tr, pathes[1][16]),
                            sizedBoxHigh(),
                             Text(
                              'face_58'.tr,
                              style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20),
                            ),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_59'.tr, pathes[1][17]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_60'.tr, pathes[1][18]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_61'.tr, pathes[1][19]),
                            sizedBoxHigh(),
                             Text(
                              'face_62'.tr,
                              style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20),
                            ),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_63'.tr, pathes[1][20]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_64'.tr, pathes[1][21]),
                            sizedBoxLow(),
                            sizedBoxHigh(),
                             Text(
                              'face_65'.tr,
                              style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20),
                            ),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_66'.tr, pathes[1][22]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_67'.tr, pathes[1][23]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_68'.tr, pathes[1][24]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_69'.tr, pathes[1][25]),
                            sizedBoxHigh(),
                            Text(
                              'face_70'.tr,
                              style: Get.textTheme.bodyText1,
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
                expansionTileIndex: 1,
                title: 'face_71'.tr,
                subtitle: 'face_72'.tr,
                subtitleColor: kblue,
              ),
              sizedBoxHigh(),
              CustomExpansionChain(
                widgets: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'face_73'.tr,
                              style: Get.textTheme.bodyText1,
                            ),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_74'.tr, pathes[2][0]),
                            sizedBoxHigh(),
                             Text(
                              'face_75'.tr,
                              style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20),
                            ),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_76'.tr, pathes[2][1]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_77'.tr, pathes[2][2]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_78'.tr, pathes[2][3]),
                            sizedBoxHigh(),
                             Text(
                              'face_79'.tr,
                              style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20),
                            ),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_80'.tr, pathes[2][4]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_81'.tr, pathes[2][5]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_82'.tr, pathes[2][6]),
                            sizedBoxHigh(),
                             Text(
                              'face_83'.tr,
                              style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20),
                            ),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_84'.tr, pathes[2][7]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_85'.tr, pathes[2][8]),
                            sizedBoxHigh(),
                             Text(
                              'face_86'.tr,
                              style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20),
                            ),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_87'.tr, pathes[2][9]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_88'.tr, pathes[2][10]),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
                expansionTileIndex: 2,
                title: 'face_89'.tr,
                subtitle: 'face_90'.tr,
                subtitleColor: kblue,
              ),
              sizedBoxHigh(),
              CustomExpansionChain(
                widgets: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Text(
                              'face_91'.tr,
                              style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20),
                            ),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_92'.tr, pathes[3][0]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_93'.tr, pathes[3][1]),
                            sizedBoxHigh(),
                             Text(
                              'face_94'.tr,
                              style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20),
                            ),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_95'.tr, pathes[3][2]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_96'.tr, pathes[3][3]),
                            sizedBoxHigh(),
                             Text(
                              'face_97'.tr,
                              style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20),
                            ),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_98'.tr, pathes[3][4]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_99'.tr, pathes[3][5]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_100'.tr, pathes[3][6]),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
                expansionTileIndex: 3,
                title: 'face_101'.tr,
                subtitle: 'face_102'.tr,
                subtitleColor: kblue,
              ),
              sizedBoxHigh(),
              CustomExpansionChain(
                widgets: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Text(
                              'face_103'.tr,
                              style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20),
                            ),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_104'.tr, pathes[4][0]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_105'.tr, pathes[4][1]),
                            sizedBoxHigh(),
                             Text(
                              'face_106'.tr,
                              style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20),
                            ),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_107'.tr, pathes[4][2]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_108'.tr, pathes[4][3]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_109'.tr, pathes[4][4]),
                            sizedBoxHigh(),
                             Text(
                              'face_110'.tr,
                              style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20),
                            ),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_111'.tr, pathes[4][5]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_112'.tr, pathes[4][6]),
                            sizedBoxHigh(),
                             Text(
                              'face_113'.tr,
                              style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20),
                            ),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_114'.tr, pathes[4][7]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_115'.tr, pathes[4][8]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_116'.tr, pathes[4][9]),
                            sizedBoxHigh(),
                             Text(
                              'face_117'.tr,
                              style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20),
                            ),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_118'.tr, pathes[4][10]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_119'.tr, pathes[4][11]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_120'.tr, pathes[4][12]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_121'.tr, pathes[4][13]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_122'.tr, pathes[4][14]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_123'.tr, pathes[4][15]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_124'.tr, pathes[4][16]),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
                expansionTileIndex: 4,
                title: 'face_125'.tr,
                subtitle: 'face_126'.tr,
                subtitleColor: kblue,
              ),
              sizedBoxHigh(),
              CustomExpansionChain(
                widgets: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Text(
                              'face_127'.tr,
                              style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20),
                            ),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_128'.tr, pathes[5][0]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_129'.tr, pathes[5][1]),
                            sizedBoxHigh(),
                            _buildCharacteristicRow('face_130'.tr, pathes[5][2]),
                            sizedBoxHigh(),
                             Text(
                              'face_131'.tr,
                              style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20),
                            ),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_132'.tr, pathes[5][3]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_133'.tr, pathes[5][4]),
                            sizedBoxHigh(),
                             Text(
                              'face_134'.tr,
                              style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20),
                            ),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_135'.tr, pathes[5][5]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_136'.tr, pathes[5][6]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_137'.tr, pathes[5][7]),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
                expansionTileIndex: 5,
                title: 'face_138'.tr,
                subtitle: 'face_139'.tr,
                subtitleColor: kblue,
              ),
              sizedBoxHigh(),
              CustomExpansionChain(
                widgets: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Text(
                              'face_140'.tr,
                              style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20),
                            ),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_141'.tr, pathes[6][0]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_142'.tr, pathes[6][1]),
                            sizedBoxHigh(),
                             Text(
                              'face_143'.tr,
                              style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20),
                            ),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_144'.tr, pathes[6][2]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_145'.tr, pathes[6][3]),
                            sizedBoxHigh(),
                             Text(
                              'face_146'.tr,
                              style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20),
                            ),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_147'.tr, pathes[6][4]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_148'.tr, pathes[6][5]),
                            sizedBoxHigh(),
                             Text(
                              'face_149'.tr,
                              style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20),
                            ),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_150'.tr, pathes[6][6]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_151'.tr, pathes[6][7]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_152'.tr, pathes[6][8]),
                            sizedBoxHigh(),
                             Text(
                              'face_153'.tr,
                              style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20),
                            ),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_154'.tr, pathes[6][9]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_155'.tr, pathes[6][10]),
                            sizedBoxLow(),
                            sizedBoxHigh(),
                             Text(
                              'face_156'.tr,
                              style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20),
                            ),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_157'.tr, pathes[6][11]),
                            sizedBoxLow(),
                            _buildCharacteristicRow('face_158'.tr, pathes[6][12]),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
                expansionTileIndex: 6,
                title: 'face_159'.tr,
                subtitle: 'face_160'.tr,
                subtitleColor: kblue,
              ),
              sizedBoxHigh(),
              CustomExpansionChain(
                widgets: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'face_161'.tr,
                              style: Get.textTheme.bodyText1,
                            ),
                            sizedBoxLow(),
                            Text(
                              'face_162'.tr,
                              style: Get.textTheme.bodyText1,
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
                expansionTileIndex: 7,
                title: 'face_163'.tr,
                subtitle: 'face_164'.tr,
                subtitleColor: kblue,
              ),
              sizedBoxHigh(),
              Text(
                'face_165'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              CustomButton(
                  title: 'Ok',
                  color: kgreyDark,
                  handler: () => Get.back()
              )
            ],
          ),
        )
      ]
  );
  }

  _buildCharacteristicRow(String text, String path) => Row(
    children: [
      GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => Get.dialog(
          Dialog(
            child: ExpansionImage(path: path, isNetwork: true,),
            backgroundColor: Colors.transparent,
            elevation: 0,
          )
        ),
        child: Container(
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: kgrey,
          ),
          child: Image.network(
            path,
            height: 60,
            width: 60,
            fit: BoxFit.cover,

          ),
        ),
      ),
      const SizedBox(width: 25,),
      Container(width: 25, color: Colors.black, height: 2,),
      const SizedBox(width: 25,),
      Expanded(
        child: Text(
          text,
          style: Get.textTheme.bodyText1!.copyWith(fontSize: 20),
        ),
      )
    ],
  );
}





