// deekshith

import 'package:flutter/material.dart';
import 'package:sales_org/utils/size_utils.dart';

class SocialmediaDeclarationformMainpage extends StatefulWidget {
  const SocialmediaDeclarationformMainpage({super.key});

  @override
  State<SocialmediaDeclarationformMainpage> createState() =>
      _SocialmediaDeclarationformMainpageState();
}

class _SocialmediaDeclarationformMainpageState
    extends State<SocialmediaDeclarationformMainpage> {
  bool isChecked =
      false; // Tracks whether the acknowledgment checkbox is selected.

  // Function to handle form submission.
  void handleSubmit() {
    if (isChecked) {
      // If checkbox is selected, show a success dialog.
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Submitted"),
          content: Text("Your acknowledgment has been submitted."),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), // Close the dialog.
              child: Text("OK"),
            ),
          ],
        ),
      );
    } else {
      // If checkbox is not selected, show a warning dialog.
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Warning"),
          content: Text("Please acknowledge the terms before submitting."),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), // Close the dialog.
              child: Text("OK"),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Sets the background color of the screen.
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black, // Matches the overall theme.
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {}, // Add navigation logic here.
        ),
        title: Text(
          'Social Media Declaration',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search_outlined,
              color: Colors.white,
              size: 28,
            ),
            onPressed: () {}, // Add search functionality here.
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeUtils.width * 0.02,
              vertical: SizeUtils.height * 0.01),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height:
                    SizeUtils.height * 0.01, // Spacer for layout adjustment.
              ),
              // My Submissions section.
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: SizeUtils.width * 0.03,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My Submissions",
                      style: TextStyle(color: Color(0xffFFB300), fontSize: 17),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Color(0xffFFB300),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10), // Rounded corners.
                  border: Border.all(color: Color(0xffFFB300), width: 2),
                ),
                height: SizeUtils.height * 0.06, // Sets height dynamically.
                width: SizeUtils.width * 1, // Takes full width.
              ),
              SizedBox(
                height:
                    SizeUtils.height * 0.02, // Spacer for layout adjustment.
              ),
              // Form header.
              Center(
                child: Text(
                  "Form",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 19,
                  ),
                ),
              ),
              SizedBox(
                height:
                    SizeUtils.height * 0.01, // Spacer for layout adjustment.
              ),
              // Form fields for various input.
              buildFormField("Employee ID", "Employee ID"),
              buildFormField("Department/Team", "Department/Team"),
              buildFormField("Position", "Position"),
              buildFormField("Platform", "Platform"),
              buildFormField("Accounts Username", "Username"),
              buildFormField("Profile URL", "Profile URL"),
              buildFormField(
                  "Is this account primarily used for company business?",
                  "Choose"),
              buildFormField(
                  "Do you agree to allow the company to monitor this account for business-related content?",
                  "Choose"),
              SizedBox(
                height:
                    SizeUtils.height * 0.01, // Spacer for layout adjustment.
              ),
              // Acknowledgment section.
              Text(
                "Acknowledgment",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height:
                    SizeUtils.height * 0.01, // Spacer for layout adjustment.
              ),
              Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value ?? false; // Update state on toggle.
                      });
                    },
                    activeColor: Colors.orange, // Highlight color.
                  ),
                  Expanded(
                    child: Text(
                      "I acknowledge that this information will be used for official purposes and I agree to comply with the company's social media policies.",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height:
                    SizeUtils.height * 0.03, // Spacer for layout adjustment.
              ),
              // Buttons for Clear and Submit.
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Add logic to clear the form fields.
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          "Clear",
                          style: TextStyle(color: Colors.amber),
                        ),
                      ),
                      height: SizeUtils.height * 0.04,
                      width: SizeUtils.width * 0.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xffFFB300), width: 2),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: SizeUtils.width * 0.10, // Spacer between buttons.
                  ),
                  GestureDetector(
                    onTap: handleSubmit, // Calls the submission logic.
                    child: Container(
                      child: Center(
                        child: Text(
                          "Submit",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      height: SizeUtils.height * 0.04,
                      width: SizeUtils.width * 0.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffFEDC3F), // Gradient start color.
                            Color(0xffFE8900), // Gradient end color.
                          ],
                          begin: Alignment.centerLeft, // Gradient start point.
                          end: Alignment.centerRight, // Gradient end point.
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget to create form fields dynamically.
  Widget buildFormField(String label, String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: SizeUtils.height * 0.02, // Spacer for layout adjustment.
        ),
        SizedBox(
          height: SizeUtils.height * 0.050, // Sets height dynamically.
          child: TextFormField(
            decoration: InputDecoration(
              suffixIcon: IconButton(
                color: Colors.white,
                onPressed: () {}, // Add logic for dropdown or action.
                icon: Icon(Icons.keyboard_arrow_down_sharp),
              ),
              fillColor: Color(0xff2A2A2A), // Background color for the field.
              filled: true,
              hintText: hint, // Hint text for the input.
              hintStyle: TextStyle(color: Colors.white),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10), // Rounded corners.
              ),
            ),
          ),
        ),
        SizedBox(
          height: SizeUtils.height * 0.01, // Spacer for layout adjustment.
        ),
      ],
    );
  }
}
