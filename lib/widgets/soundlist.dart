import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:funwaylearning/models/phoincs.dart';
import 'package:funwaylearning/pages/phonic/soundDetail.dart';

import '../styleguide.dart';

class SoundList extends StatefulWidget {
  @override
  _SoundListState createState() => _SoundListState();
}

class _SoundListState extends State<SoundList> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Phonic Sound", style: AppTheme.subHeading),
        ),
        SizedBox(height: 20,),
        Container(
          color: Color(0xFFfcf4e3),
          height: 230,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: ListView.builder(

                scrollDirection: Axis.horizontal,

                itemCount: phonics.length,
                itemBuilder: (context, index) {
                  Phonic phonic = phonics[index];
                  return InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => SoundDetail(
                          phonic: phonic,
                        ),
                      ),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(20),
                            color: Colors.white,
                        ),


                        child: Column(
                          children: <Widget>[

                            Stack(
                              children: <Widget>[
                                Container(
                                  height: 100,
                                  width: 200,
                                  child: Center(child: Text(phonic.name,style: AppTheme.phonicSound,)),

                                  decoration: BoxDecoration(
                                      color: Color(phonic.color),
                                    borderRadius: BorderRadius.circular(20)
                                  ),

                                ),
                                Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(top: 120,left: 20),
                                      child: Image.asset(phonic.sampleImageUrl,height: 50,width: 50,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 110,left: 30),
                                      child: Text(phonic.sampleWord,style: AppTheme.sampleWord,),
                                    ),
                                  ],
                                )

                              ],
                            ),
                          ],
                        ),

                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
