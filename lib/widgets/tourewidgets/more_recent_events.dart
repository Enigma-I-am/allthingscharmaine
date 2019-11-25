import 'package:allthingscharmaine/utils/custom_colors.dart';
import 'package:allthingscharmaine/widgets/tourewidgets/press_event_item.dart';
import 'package:flutter/material.dart';

import 'package:allthingscharmaine/screens/press/press_event_list_page.dart';


class MoreRecentEvents extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List listData = Data.getEventData();
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Row(children: [
                    Padding(
                        padding: EdgeInsets.only(right: 2.0),
                        child: Text('most recent events',
                            style: TextStyle(
                              color: CustomColors.TITLE_COLOR,
                              fontSize: 20.0,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ))),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 12.0,
                      color: CustomColors.TITLE_COLOR,
                    )
                  ]),
                ),
                Text('view all',
                    style: TextStyle(
                      color: CustomColors.TEXT_COLOR.withOpacity(0.5),
                      fontSize: 12.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ))
              ],
            ),
            SizedBox(
              height: 19,
            ),
            GestureDetector(child: PressEventItem(listData[0]),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => PressEventList()));},),
            SizedBox(height: 15, ),
            GestureDetector(child: PressEventItem(listData[1]),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => PressEventList()));},),
          ],
        ));
  }


}
