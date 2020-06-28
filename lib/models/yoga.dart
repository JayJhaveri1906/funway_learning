class YogaPose {
  String imageUrl ;
  String instruction ;
  YogaPose(this.imageUrl, this.instruction) ;
}

List<YogaPose> yoga_poses = [
  YogaPose('assets/images/step1.png', 'Bend knees and stretch hands') ,
  YogaPose('assets/images/step2.png', 'Sit straight') ,
  YogaPose('assets/images/step3.png', 'Fold your leg and fold hands') ,
  YogaPose('assets/images/step4.png', 'Stretch hands and legs') ,
  YogaPose('assets/images/step5.png', 'Stretch your hands and one leg up ') ,
  YogaPose('assets/images/step6.png', 'Face downwards like a dog') ,
  YogaPose('assets/images/step7.png', 'Face downwords like a cow ') ,
  YogaPose('assets/images/step8.png', 'Lie on tummy and fold legs up') ,
  YogaPose('assets/images/step9.png', 'Stretch legs and bend at side') ,
] ;