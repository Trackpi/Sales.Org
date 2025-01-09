//deechu
import 'package:flutter/material.dart';
import 'package:sales_org/utils/size_utils.dart';

class ForgotPasskeypage extends StatefulWidget {
  const ForgotPasskeypage({super.key});

  @override
  State<ForgotPasskeypage> createState() => _ForgotPasskeypageState();
}

class _ForgotPasskeypageState extends State<ForgotPasskeypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Sets the background color for the screen
      backgroundColor: Colors.black,
      appBar: AppBar(
        // Centers the title and sets the background color of the app bar
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: IconButton(
          // Adds a back arrow button
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            // Define back button functionality here
          },
        ),
        title: Text(
          'Operations', // Title text in the app bar
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            // Notification icon on the right side
            icon: Icon(
              Icons.notifications_outlined,
              color: Colors.white,
              size: 28,
            ),
            onPressed: () {
              // Define notification button functionality here
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeUtils.width * 0.02,
            vertical: SizeUtils.height * 0.01),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeUtils.height * 0.03,
            ), // Adds vertical spacing
            Text(
              "Reset Your Passkey", // Main heading
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: SizeUtils.height * 0.02,
            ),
            Text(
              "Security Questions", // Subheading
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: SizeUtils.height * 0.02,
            ),
            // Container for security question input
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeUtils.width * 0.02,
                  vertical: SizeUtils.height * 0.01),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "What's your date of birth?", // Label for input
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: SizeUtils.height * 0.01,
                  ),
                  SizedBox(
                    height: SizeUtils.height * 0.05,
                    child: TextField(
                      // Input field for date of birth
                      style: TextStyle(color: Colors.white),
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
                          hintText: "__ / __ / ____", // Placeholder text
                          hintStyle: TextStyle(color: Colors.white54),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white54),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          filled: true,
                          fillColor: Colors.black
                          // Colors.grey[900], // Input background color
                          ),
                    ),
                  ),
                ],
              ),
              height: SizeUtils.height * 0.12, // Height of the container
              width: SizeUtils.width * 1, // Width of the container
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black),
            ),
            SizedBox(
                height: SizeUtils.height * 0.16), // Spacer between elements
            Center(
              child: InkWell(
                onTap: () {
                  // Functionality for the "Verify" button
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            // Custom alert dialog for verification
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            backgroundColor:
                                Color(0xff2A2A2A), // Dark background
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                // Verified icon in a green circle
                                CircleAvatar(
                                  radius: 38,
                                  backgroundColor: Colors.green.shade100,
                                  child: Icon(
                                    Icons.verified_outlined,
                                    color: Colors.green,
                                    size: 38,
                                  ),
                                ),
                                SizedBox(height: SizeUtils.height * 0.02),
                                Text(
                                  'Correct!', // Title text
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: SizeUtils.height * 0.02),
                                Text(
                                  'Your identity has been verified!', // Message text
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: SizeUtils.height * 0.02),
                                Text(
                                  "You are now eligible to reset your passkey.", // Additional message
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: SizeUtils.height * 0.02),
                                InkWell(
                                  // OK button in the alert dialog
                                  onTap: () {
                                    Navigator.pop(context); // Closes the dialog
                                  },
                                  child: Container(
                                    child: Center(
                                      child: Text("OK",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                          )),
                                    ),
                                    height: SizeUtils.height *
                                        0.04, // Height of button
                                    width: SizeUtils.width *
                                        0.25, // Width of the button
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xffFEDC3F),
                                          Color(0xffFE8900),
                                        ], // Gradient colors
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ));

// errror alert dialog box

                  //                       AlertDialog(
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(20),
                  //   ),
                  //   backgroundColor: Color(0xff2A2A2A),
                  //   content: Column(
                  //     mainAxisSize: MainAxisSize.min,
                  //     children: [
                  //       CircleAvatar(
                  //         radius: 38,
                  //         backgroundColor: Color(0xffFFDEDE),
                  //         child: Icon(
                  //           Icons.new_releases_outlined,
                  //           color: Colors.red,
                  //           size: 38,
                  //         ),
                  //       ),
                  //     SizedBox(height: SizeUtils.height * 0.02),
                  //       Text(
                  //         'Incorrect answer.',
                  //         style: TextStyle(
                  //           color: Colors.red,
                  //           fontSize: 22,
                  //           fontWeight: FontWeight.bold,
                  //         ),
                  //       ),
                  //       SizedBox(height: SizeUtils.height * 0.02),
                  //       Text(
                  //         'Please try again.',
                  //         textAlign: TextAlign.center,
                  //         style: TextStyle(
                  //           fontWeight: FontWeight.bold,
                  //           color: Colors.white,
                  //           fontSize: 16,
                  //         ),
                  //       ),
                  //      SizedBox(height: SizeUtils.height * 0.02),
                  //       Text(
                  //         "To reset your password, please answer the security  question correctly",
                  //         textAlign: TextAlign.center,
                  //         style: TextStyle(
                  //           color: Colors.white,
                  //           fontSize: 16,
                  //         ),
                  //       ),
                  //          SizedBox(height: SizeUtils.height * 0.02),
                  //       InkWell(
                  //         onTap: () {
                  //           Navigator.pop(context);
                  //         },
                  //         child: Container(
                  //           child: Center(
                  //             child: Text("OK",
                  //                 style: TextStyle(
                  //                   color: Colors.white,
                  //                   fontSize: 16,
                  //                 )),
                  //           ),
                  //   height: SizeUtils.height *
                  //                                     0.04, // Height of button
                  //                                 width: SizeUtils.width *
                  //                                     0.25, // Width of the button
                  //           decoration: BoxDecoration(
                  //             gradient: LinearGradient(
                  //               colors: [
                  //                 Color(0xffFEDC3F),
                  //                 Color(0xffFE8900),
                  //               ],
                  //               begin: Alignment.centerLeft,
                  //               end: Alignment.centerRight,
                  //             ),
                  //             borderRadius: BorderRadius.circular(10),
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // );
                },
                child: Container(
                  // "Verify" button design
                  child: Center(
                    child: Text("Verify",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        )),
                  ),
                  height: SizeUtils.height * 0.04, // Height of button
                  width: SizeUtils.width * 0.27, // Width of the button
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xffFEDC3F),
                        Color(0xffFE8900),
                      ], // Gradient colors
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
