//arjun
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sales_org/utils/size_utils.dart';

class IncorrectPasskeypage extends StatefulWidget {
  const IncorrectPasskeypage({super.key});

  @override
  State<IncorrectPasskeypage> createState() => _IncorrectPasskeypageState();
}

class _IncorrectPasskeypageState extends State<IncorrectPasskeypage>
    with SingleTickerProviderStateMixin {
  // Controllers for each pin digit input field
  TextEditingController firstPinDigit = TextEditingController();
  TextEditingController secondPinDigit = TextEditingController();
  TextEditingController thirdPinDigit = TextEditingController();
  TextEditingController fourthPinDigit = TextEditingController();

  final formKey = GlobalKey<FormState>(); // Form key for validation
  final correctPasskey = "2255"; // Correct passkey
  bool isPasskeyIncorrect = false; // Flag for incorrect passkey state

  late AnimationController _animationController; // Animation controller
  late Animation<Offset> _shakeAnimation; // Animation for shaking effect

  @override
  void initState() {
    super.initState();
    // Initialize animation controller with 500ms duration
    _animationController = AnimationController(
      vsync: this, // Uses SingleTickerProviderStateMixin for vsync
      duration: Duration(milliseconds: 500),
    );
    // Tween for subtle shake animation
    _shakeAnimation = Tween<Offset>(begin: Offset.zero, end: Offset(0.02, 0))
        .chain(CurveTween(curve: Curves.elasticIn)) // Smooth curve
        .animate(_animationController);
  }

  @override
  void dispose() {
    // Dispose controllers and animation controller
    _animationController.dispose();
    firstPinDigit.dispose();
    secondPinDigit.dispose();
    thirdPinDigit.dispose();
    fourthPinDigit.dispose();
    super.dispose();
  }

  // Method to validate the entered passkey
  void validatePasskey() {
    // Combine text from all four controllers
    String enteredPasskey =
        "${firstPinDigit.text}${secondPinDigit.text}${thirdPinDigit.text}${fourthPinDigit.text}";

    if (enteredPasskey == correctPasskey) {
      // If passkey is correct, reset incorrect flag and show success message
      setState(() {
        isPasskeyIncorrect = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Passkey Correct!"),
          backgroundColor: Colors.green,
        ),
      );
    } else {
      // If passkey is incorrect, show shake animation and error message
      setState(() {
        isPasskeyIncorrect = true;
      });
      _animationController.forward(from: 0).then((_) {
        _animationController.reverse();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Sets background color to black
      appBar: AppBar(
        backgroundColor: Colors.black, // AppBar with black background
        leading: Icon(
          Icons.arrow_back, // Back button icon
          color: Colors.white,
        ),
        centerTitle: true, // Centers the title
        title: Text(
          "Operations", // Title text
          style: TextStyle(
            color: Colors.white, // White color for text
            fontWeight: FontWeight.bold,
            fontSize: 18, // Font size
          ),
        ),
        actions: [
          Icon(
            Icons.notifications_outlined, // Notifications icon
            color: Colors.white,
          ),
          SizedBox(
            width: SizeUtils.width * 0.04,
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeUtils.width * 0.04,
            vertical: SizeUtils.height * 0.04), // Padding
        child: Form(
          key: formKey, // Assign form key
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Aligns children
            children: [
              Text(
                "Enter Passkey", // Main instruction text
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: SizeUtils.height * 0.02), // Adds vertical space
              Text(
                "Enter Your Four Digit PassKey", // Sub-instruction
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: SizeUtils.height * 0.015), // Adds vertical space
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: SizeUtils.width * 0.015),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end, // Align children
                  children: [
                    // Row for PIN input fields
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        for (var controller in [
                          firstPinDigit,
                          secondPinDigit,
                          thirdPinDigit,
                          fourthPinDigit
                        ])
                          SizedBox(
                            height: SizeUtils.height *
                                0.07, // Height of input field
                            width:
                                SizeUtils.width * 0.16, // Width of input field
                            child: TextFormField(
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              controller: controller, // Assign controller
                              textAlign: TextAlign.center, // Center-align text
                              keyboardType:
                                  TextInputType.number, // Numeric input
                              inputFormatters: [
                                FilteringTextInputFormatter
                                    .digitsOnly, // Allow digits only
                                LengthLimitingTextInputFormatter(
                                    1), // Limit input to 1 character
                              ],
                              decoration: InputDecoration(
                                fillColor:
                                    Color(0xFF2A2A2A), // Background color
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      10), // Rounded corners
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                    SizedBox(
                        height:
                            SizeUtils.height * 0.015), // Space below input row
                    Padding(
                      padding: EdgeInsets.only(
                          right: SizeUtils.width *
                              0.03), // Align "Forgot PassKey?"
                      child: Text(
                        "Forgot PassKey?", // Forgot passkey text
                        style: TextStyle(
                          color: Color(0xFFFCB205),
                          fontWeight: FontWeight.normal,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: SizeUtils.height * 0.02), // Adds vertical space
              isPasskeyIncorrect
                  ? SlideTransition(
                      position: _shakeAnimation, // Apply shake animation
                      child: Center(
                        child: Text(
                          "Incorrect Pin Entered", // Error message
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    )
                  : SizedBox(), // Empty widget if no error
              SizedBox(
                  height: SizeUtils.height * 0.03), // Space above submit button
              Center(
                child: GestureDetector(
                  onTap: validatePasskey, // Trigger passkey validation
                  child: Container(
                    height: SizeUtils.height * 0.04, // Height of button
                    width: SizeUtils.width * 0.25, // Width of button
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(10), // Rounded corners
                      gradient: LinearGradient(
                        colors: [
                          Color(0xffFEDC3F), // Start color
                          Color(0xffFE8900), // End color
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Submit", // Button text
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
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
