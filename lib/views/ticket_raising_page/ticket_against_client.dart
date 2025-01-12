//deekshith
import 'package:flutter/material.dart';
import 'package:sales_org/utils/size_utils.dart';

// Main widget for the "Ticket Against Client" screen.
class TicketAgainstClient extends StatelessWidget {
  const TicketAgainstClient({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Background color of the screen.
      appBar: AppBar(
        // AppBar with back button, title, and notification icon.
        leading: IconButton(
          onPressed: () {}, // Action for the back button.
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        centerTitle: true, // Centers the title in the AppBar.
        actions: [
          IconButton(
            // Notification icon with no action implemented.
            icon: Icon(
              Icons.notifications_outlined,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.black, // AppBar background color.
        title: Text(
          "Ticket Raise",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          // Padding around the entire content.
          padding: EdgeInsets.symmetric(
            vertical: SizeUtils.height * 0.01, // Dynamic vertical padding.
            horizontal: SizeUtils.width * 0.02, // Dynamic horizontal padding.
          ),
          child: Column(
            children: [
              SizedBox(
                height: SizeUtils.height * 0.022, // Spacer for layout.
              ),
              Center(
                // Center-aligned title text.
                child: Text(
                  "Against Client Name",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: SizeUtils.height * 0.022, // Spacer for layout.
              ),
              Container(
                // Container for the main ticket details.
                padding: EdgeInsets.symmetric(
                  vertical: SizeUtils.height * 0.012, // Dynamic padding.
                  horizontal: SizeUtils.width * 0.03,
                ),
                decoration: BoxDecoration(
                  color: Color(0xff2A2A2A), // Dark gray background color.
                  borderRadius: BorderRadius.circular(10), // Rounded corners.
                ),
                height: SizeUtils.height * 0.6, // Dynamic container height.
                width: SizeUtils.width * 0.9, // Dynamic container width.
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align to start.
                  children: [
                    // Row displaying "From" label and date.
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "From",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          "20/12/2024", // Placeholder date.
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeUtils.height * 0.022, // Spacer for layout.
                    ),
                    Text(
                      // Text displaying sender's name.
                      "Paul Walker",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      // Text displaying designation.
                      "Designation",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: SizeUtils.height * 0.02, // Spacer before "To".
                    ),
                    Text(
                      "To", // Label for recipient.
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(
                      height: SizeUtils.height * 0.01, // Spacer below "To".
                    ),
                    Text(
                      // Placeholder recipient name.
                      "Client Name",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: SizeUtils.height * 0.02, // Spacer for layout.
                    ),
                    Text(
                      // Placeholder text field label.
                      "Ticket Name",
                      style: TextStyle(
                        color: Colors.white.withAlpha(100),
                        fontSize: 14,
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(), // Empty text field.
                    ),
                    SizedBox(
                      height: SizeUtils.height * 0.01, // Spacer for layout.
                    ),
                    Text(
                      // Placeholder text field label for details.
                      "Enter the Details",
                      style: TextStyle(
                        color: Colors.white.withAlpha(100),
                        fontSize: 14,
                      ),
                    ),
                    Spacer(), // Pushes content up to make space for the attachment button.
                    Center(
                      child: InkWell(
                        onTap: () {
                          // Navigate to the attachment screen.
                        },
                        child: Container(
                          // Attachment button.
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: SizeUtils.height * 0.04, // Dynamic height.
                          width: SizeUtils.width * 0.3, // Dynamic width.
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.attach_file_outlined, // Attachment icon.
                                size: 15,
                                color: Colors.white,
                              ),
                              Text(
                                " Add Attachment", // Attachment button text.
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height:
                    SizeUtils.height * 0.03, // Spacer before the submit button.
              ),
              Container(
                // Submit button.
                height: SizeUtils.height * 0.04, // Dynamic button height.
                width: SizeUtils.width * 0.3, // Dynamic button width.
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffFEDC3F), // Gradient start color.
                      Color(0xffFE8900), // Gradient end color.
                    ],
                    begin: Alignment.centerLeft, // Gradient direction.
                    end: Alignment.centerRight,
                  ),
                  borderRadius:
                      BorderRadius.circular(10), // Rounded button corners.
                ),
                child: Center(
                  child: Text(
                    "Submit", // Submit button label.
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
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
