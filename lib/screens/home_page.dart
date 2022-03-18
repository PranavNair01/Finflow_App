import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool isIssue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height / 9.22,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            'assets/icons/Logo.svg',
          ),
        ),
        title: Text(
          'Finflow',
          style: TextStyle(
              color: Color(0xFF23286B),
              fontSize: 20
          ),
        ),
        leadingWidth: 64,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SizedBox.expand(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: 'Status: ',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black45,
                        ),
                        children: [
                          TextSpan(
                            text: 'Connected',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF23286B)
                            )
                          )
                        ]
                      )
                    ),
                    Text.rich(
                        TextSpan(
                            text: 'Battery: ',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black45,
                            ),
                            children: [
                              TextSpan(
                                  text: '93%',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF23286B)
                                  )
                              )
                            ]
                        )
                    ),
                  ],
                ),
                SizedBox(height: 16,),
                Divider(
                  thickness: 1,
                  color: Color(0xFFD3EAFF),
                ),
                if(isIssue) GestureDetector(
                  onTap: () {
                    setState(() {
                      isIssue = false;
                    });
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 4.61,
                    width: MediaQuery.of(context).size.width / 1.09,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Color(0xFF970C0C),
                        width: 0.5
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Dissolved Oxygen',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(width: 14,),
                                  Icon(
                                    Icons.warning,
                                    color: Color(0xFF970C0C),
                                    size: 15,
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Take Action',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xFF970C0C),
                                    ),
                                  ),
                                  SizedBox(width: 8,),
                                  Icon(
                                    Icons.chevron_right,
                                    color: Color(0xFF970C0C),
                                    size: 12,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        // SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Divider(
                            color: Color(0xFFF3F9FF),
                            thickness: 1,
                          ),
                        ),
                        // SizedBox(height: 16,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.baseline,
                                    textBaseline: TextBaseline.alphabetic,
                                    children: [
                                      Text.rich(
                                        TextSpan(
                                          text: '4 ',
                                          style: TextStyle(
                                            fontSize: 48,
                                            color: Colors.black87,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: 'mg/l',
                                              style: TextStyle(
                                                fontSize: 24,
                                                color: Colors.black87,
                                              ),
                                            )
                                          ]
                                        ),
                                      ),
                                      SizedBox(width: 12,),
                                      Icon(
                                        Icons.arrow_downward,
                                        color: Color(0xFF970C0C),
                                        size: 12,
                                      ),
                                      SizedBox(width: 5,),
                                      Text(
                                        '20%',
                                        style: TextStyle(
                                          color: Color(0xFF970C0C),
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 4,),
                                  Text(
                                    'Current',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black87
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.baseline,
                                    textBaseline: TextBaseline.alphabetic,
                                    children: [
                                      Text.rich(
                                        TextSpan(
                                            text: '5 ',
                                            style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.black45,
                                            ),
                                            children: [
                                              TextSpan(
                                                text: 'mg/l',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.black45,
                                                ),
                                              )
                                            ]
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 4,),
                                  Text(
                                    'Should be',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black45
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 16,),
                        Container(
                          width: double.infinity,
                          height: 32,
                          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          decoration: BoxDecoration(
                            color: Color(0xFFFAEAEA)
                          ),
                          child: Text(
                            'The solution in a smaller sentence in one line',
                            style: TextStyle(
                              color: Color(0xFF970C0C),
                              fontSize: 12
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16,),
                GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: ((MediaQuery.of(context).size.width / 2.30) / (MediaQuery.of(context).size.height / 10.41)),
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 10.41,
                      width: MediaQuery.of(context).size.width / 2.30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Color(0xFFD3EAFF),
                          width: 0.5,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text(
                              'Dissolved Oxygen',
                              style: TextStyle(
                                fontSize: 16
                              ),
                            ),
                            SizedBox(height: 4,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'All Good!',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xFF23286B)
                                    ),
                                  ),
                                  Icon(
                                    Icons.chevron_right,
                                    size: 6.67,
                                    color: Color(0xFF23286B),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 10.41,
                      width: MediaQuery.of(context).size.width / 2.30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Color(0xFFD3EAFF),
                          width: 0.5,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text(
                              'Dissolved Oxygen',
                              style: TextStyle(
                                  fontSize: 16
                              ),
                            ),
                            SizedBox(height: 4,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'All Good!',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFF23286B)
                                    ),
                                  ),
                                  Icon(
                                    Icons.chevron_right,
                                    size: 6.67,
                                    color: Color(0xFF23286B),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 10.41,
                      width: MediaQuery.of(context).size.width / 2.30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Color(0xFFD3EAFF),
                          width: 0.5,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text(
                              'Dissolved Oxygen',
                              style: TextStyle(
                                  fontSize: 16
                              ),
                            ),
                            SizedBox(height: 4,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'All Good!',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFF23286B)
                                    ),
                                  ),
                                  Icon(
                                    Icons.chevron_right,
                                    size: 6.67,
                                    color: Color(0xFF23286B),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 10.41,
                      width: MediaQuery.of(context).size.width / 2.30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Color(0xFFD3EAFF),
                          width: 0.5,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text(
                              'Dissolved Oxygen',
                              style: TextStyle(
                                  fontSize: 16
                              ),
                            ),
                            SizedBox(height: 4,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'All Good!',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFF23286B)
                                    ),
                                  ),
                                  Icon(
                                    Icons.chevron_right,
                                    size: 6.67,
                                    color: Color(0xFF23286B),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 10.41,
                      width: MediaQuery.of(context).size.width / 2.30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Color(0xFFD3EAFF),
                          width: 0.5,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text(
                              'Dissolved Oxygen',
                              style: TextStyle(
                                  fontSize: 16
                              ),
                            ),
                            SizedBox(height: 4,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'All Good!',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFF23286B)
                                    ),
                                  ),
                                  Icon(
                                    Icons.chevron_right,
                                    size: 6.67,
                                    color: Color(0xFF23286B),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 10.41,
                      width: MediaQuery.of(context).size.width / 2.30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Color(0xFFD3EAFF),
                          width: 0.5,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text(
                              'Dissolved Oxygen',
                              style: TextStyle(
                                  fontSize: 16
                              ),
                            ),
                            SizedBox(height: 4,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'All Good!',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFF23286B)
                                    ),
                                  ),
                                  Icon(
                                    Icons.chevron_right,
                                    size: 6.67,
                                    color: Color(0xFF23286B),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16,),
                if(!isIssue) GestureDetector(
                  onTap: () {
                    isIssue = true;
                  },
                  child: Image.asset(
                    'assets/images/clip-end-of-quarantine-happy-and-joyful-girl-2.png',
                    height: MediaQuery.of(context).size.height / 2.9,
                    width: MediaQuery.of(context).size.width / 1.34,
                  ),
                ),
                SizedBox(height: 16,),
                if(!isIssue) Row(
                  children: [
                    Icon(
                      Icons.check_circle,
                      color: Color(0xFF23286B),
                      size: 14,
                    ),
                    SizedBox(width: 10,),
                    Text(
                      'No immediate action required',
                      style: TextStyle(
                        color: Color(0xFF23286B),
                        fontSize: 14,
                      ),
                    )
                  ],
                )
                else Container(
                  width: MediaQuery.of(context).size.width / 1.09,
                  height: MediaQuery.of(context).size.height / 11.94,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    color: Color(0xFFFAEAEA),
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: Color(0xFFF4D2D2),
                      width: 0.5
                    )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.warning,
                            color: Color(0xFF970C0C),
                            size: 16,
                          ),
                          SizedBox(width: 12,),
                          Text(
                            'Dissolved oxygen found to be not good',
                            style: TextStyle(
                              color: Color(0xFF970C0C),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4,),
                      Text(
                        'The solution in a smaller sentence in one line',
                        style: TextStyle(
                          color: Color(0xFF970C0C),
                          fontSize: 14
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
