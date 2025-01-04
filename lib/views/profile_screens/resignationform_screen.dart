
//deekshith
import 'package:flutter/material.dart';
import 'package:sales_org/utils/size_utils.dart';

// This widget represents the Resignation Form screen.
class ResignationformScreen extends StatelessWidget {
  const ResignationformScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final firstTitle='Are you sure you want to resign?';
    final firstBody='''Before you make your decision, here are some amazing perks you'll be leaving behind:
    
 Flexible Work Hours: Enjoy the freedom to balance work and personal life with our adaptable schedules.
 Work-from-Home Opportunities: Continue working from the comfort of your home.
 High-Paid Commissions: Maximize your earnings with competitive commission structures.
 Career Growth: Unlock new opportunities for promotions and skill development.
 Employee Rewards and Recognition: Be part of a culture that values your contributions.

Do you still wish to proceed with your resignation?
''';
    final secondTitle='Are you sure about your resignation?';
    final secondBody='''After clicking confirm:
    
 You will no longer have access to this app.
 Your account will be deactivated. ''';
    return Scaffold(
      backgroundColor: Colors.black, // Sets the background color of the screen.
      appBar: AppBar(
        centerTitle: true, // Centers the title in the AppBar.
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications_outlined,
              color: Colors.white, // White color for the notifications icon.
            ),
            onPressed: () {}, // Action when notifications icon is pressed.
          ),
        ],
        backgroundColor: Colors.black, // Black AppBar background.
        title: Text(
          "Resignation", // Title displayed in the AppBar.
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white, // White color for the title text.
            fontSize: 20, // Font size for the title text.
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: SizeUtils.height * 0.01, // Vertical padding.
            horizontal: SizeUtils.width * 0.02, // Horizontal padding.
          ),
          child: Column(
            children: [
              // Title of the form.
              Center(
                child: Text(
                  "Resignation Form",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // White color for the text.
                    fontSize: 15, // Font size for the text.
                  ),
                ),
              ),
              SizedBox(
                height: SizeUtils.height * 0.022, // Space below the title.
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: SizeUtils.height * 0.012, // Vertical padding.
                  horizontal: SizeUtils.width * 0.03, // Horizontal padding.
                ),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Aligns items to the start.
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment
                          .spaceBetween, // Spreads items evenly.
                      children: [
                        // Displays "From" text.
                        Text(
                          "From",
                          style: TextStyle(
                            color: Colors.white, // White color for text.
                            fontSize: 13, // Font size for text.
                          ),
                        ),
                        // Displays the date.
                        Text(
                          "20/12/2024",
                          style: TextStyle(
                            color: Colors.white, // White color for text.
                            fontSize: 13, // Font size for text.
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeUtils.height *
                          0.01, // Space below "From" section.
                    ),
                    // Displays name of the sender.
                    Text(
                      "Paul Walker",
                      style: TextStyle(
                        color: Colors.white, // White color for text.
                        fontSize: 15, // Font size for text.
                      ),
                    ),
                    // Displays the designation of the sender.
                    Text(
                      "Designation",
                      style: TextStyle(
                        color: Colors.white, // White color for text.
                        fontSize: 14, // Font size for text.
                      ),
                    ),
                    SizedBox(
                      height:
                          SizeUtils.height * 0.02, // Space before "To" section.
                    ),
                    // Displays "To" text.
                    Text(
                      "To",
                      style: TextStyle(
                        color: Colors.white, // White color for text.
                        fontSize: 13, // Font size for text.
                      ),
                    ),
                    SizedBox(
                      height:
                          SizeUtils.height * 0.01, // Space below "To" section.
                    ),
                    // Displays name of the recipient.
                    Text(
                      "Tom Wilson",
                      style: TextStyle(
                        color: Colors.white, // White color for text.
                        fontSize: 14, // Font size for text.
                      ),
                    ),
                    // Displays the designation of the recipient.
                    Text(
                      "Manager",
                      style: TextStyle(
                        color: Colors.white, // White color for text.
                        fontSize: 14, // Font size for text.
                      ),
                    ),
                    // Text field for additional information.
                    TextFormField(),
                    SizedBox(
                      height: SizeUtils.height *
                          0.03, // Space after the text field.
                    ),
                    // Label for reason text field.
                    Text(
                      "Reason for resignation",
                      style: TextStyle(
                        color: Colors.white
                            .withAlpha(100), // Semi-transparent white text.
                        fontSize: 14, // Font size for text.
                      ),
                    ),
                    // Text field for reason of resignation.
                    TextFormField(),
                    SizedBox(
                      height:
                          SizeUtils.height * 0.02, // Space below text field.
                    ),
                    // Label for explanation text field.
                    Text(
                      "Explanation for resignation",
                      style: TextStyle(
                        color: Colors.white
                            .withAlpha(100), // Semi-transparent white text.
                        fontSize: 14, // Font size for text.
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color:
                      Color(0xff2A2A2A), // Background color for the container.
                  borderRadius: BorderRadius.circular(10), // Rounded corners.
                ),
                height: SizeUtils.height * 0.6, // Height of the container.
                width: SizeUtils.width * 0.9, // Width of the container.
              ),
              SizedBox(
                height:
                    SizeUtils.height * 0.03, // Space before the submit button.
              ),
              InkWell(
                onTap: () {
                  // Action when the submit button is pressed.
                  showDialog(context: context,
                      builder: (context)=>Alert_Box(
                        title: firstTitle,
                        body: firstBody,
                        actions: [
                          Expanded(
                            child: Padding(
                              padding:  EdgeInsets.all( SizeUtils.width * 0.02),
                              child: MaterialButton(
                                  onPressed: (){
                                Navigator.pop(context);
                              },
                                color: Colors.green,
                                child: Text('Cancel'),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(SizeUtils.width * 0.02),
                              child: MaterialButton(onPressed: (){
                               Navigator.pop(context);
                               showDialog(context: context,
                                   builder: (context)=>Alert_Box(
                                       title: secondTitle,
                                       body: secondBody,
                                     actions: [
                                       Expanded(
                                         child: Padding(
                                           padding:  EdgeInsets.all( SizeUtils.width * 0.02),
                                           child: MaterialButton(
                                             onPressed: (){
                                               Navigator.pop(context);
                                             },
                                             color: Colors.green,
                                             child: Text('Cancel'),
                                           ),
                                         ),
                                       ),
                                       Expanded(
                                         child: Padding(
                                           padding: EdgeInsets.all(SizeUtils.width * 0.02),
                                           child: MaterialButton(onPressed: (){
                                             Navigator.pop(context);
                                           },
                                             color: Colors.red,
                                             child: Text('Confirm'),
                                           ),
                                         ),
                                       )
                                     ],
                                   )
                               );
                              },
                                color: Colors.red,
                                child: Text('Submit Resignation'),
                              ),
                            ),
                          )
                        ],
                      ));
                },
                child: Container(
                  height: SizeUtils.height * 0.04, // Height of the button.
                  width: SizeUtils.width * 0.3, // Width of the button.
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xffFEDC3F), // Gradient start color.
                        Color(0xffFE8900), // Gradient end color.
                      ],
                      begin: Alignment.centerLeft, // Gradient starting point.
                      end: Alignment.centerRight, // Gradient ending point.
                    ),
                    borderRadius: BorderRadius.circular(10), // Rounded corners.
                  ),
                  child: Center(
                    child: Text(
                      "Submit", // Submit button text.
                      style: TextStyle(
                        color: Colors.white, // White color for text.
                        fontSize: 15, // Font size for text.
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class Alert_Box extends StatelessWidget {
  final String title;

  final String body;

  final  List<Widget>? actions;

  const Alert_Box({required this.title,required this.body, this.actions, super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color(0xFF1A1A1A),
      content: Container(
        width: SizeUtils.width * .8,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            SizedBox(
              height: SizeUtils.height * 0.02,
            ),
            Text(
              textAlign: TextAlign.left,
              body,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 13,
              ),
            ),
            SizedBox(
              height: SizeUtils.height * 0.04,
            ),
            Row(
              children: actions!,
            )

          ],
        ),
      ),

    );
  }
}

