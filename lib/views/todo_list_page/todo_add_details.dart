//for aju
import 'package:flutter/material.dart';
import 'package:sales_org/utils/size_utils.dart';

class TodoAddDetails extends StatefulWidget {
  const TodoAddDetails({super.key});

  @override
  State<TodoAddDetails> createState() => _TodoAddDetailsState();
}

class _TodoAddDetailsState extends State<TodoAddDetails> {
  TextEditingController date = TextEditingController();
  TextEditingController time = TextEditingController();
  TextEditingController subject = TextEditingController();
  TextEditingController priority = TextEditingController();

  bool isHigh = false;
  bool isMedium = false;
  bool isLow = false;
  String choosePriority = "Choose Priority";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "To Do List",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeUtils.width * 0.04,
            vertical: SizeUtils.height * 0.018),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.task_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(
                      width: SizeUtils.width * 0.01,
                    ),
                    Text(
                      "Save",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: SizeUtils.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //date picker
                Container(
                  height: SizeUtils.height * 0.05,
                  width: SizeUtils.width * 0.42,
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    controller: date,
                    readOnly: true,
                    decoration: InputDecoration(
                      hintText: 'Date:',
                      hintStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(),
                      suffixIcon: GestureDetector(
                        onTap: () async {
                          DateTime? endDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000), // Adjust as needed
                            lastDate: DateTime(2050), // Adjust as needed
                          );

                          if (endDate != null) {
                            // Format the selected date
                            String formattedDate =
                                "${endDate.day}-${endDate.month}-${endDate.year}";

                            // Assign the date to the controller
                            date.text = formattedDate;
                          }
                        },
                        child: Icon(
                          Icons.calendar_month_outlined,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xFF2A2A2A),
                      borderRadius: BorderRadius.circular(5)),
                ),
                Container(
                  height: SizeUtils.height * 0.05,
                  width: SizeUtils.width * 0.42,
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    controller: time,
                    readOnly: true,
                    decoration: InputDecoration(
                      hintText: 'Time:',
                      hintStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(),
                      suffixIcon: GestureDetector(
                        onTap: () async {
                          TimeOfDay? selectedTime = await showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.now(),
                          );

                          if (selectedTime != null) {
                            // Format the selected time in 12-hour format
                            final now = DateTime.now();
                            final formattedTime = TimeOfDay(
                              hour: selectedTime.hour,
                              minute: selectedTime.minute,
                            ).format(context);

                            // Assign the time to the controller
                            time.text = formattedTime;
                          }
                        },
                        child: Icon(
                          Icons.schedule_outlined,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xFF2A2A2A),
                      borderRadius: BorderRadius.circular(5)),
                )
              ],
            ),
            SizedBox(
              height: SizeUtils.height * 0.02,
            ),
            //choose priority
            Container(
              height: SizeUtils.height * 0.05,
              padding: EdgeInsets.symmetric(horizontal: SizeUtils.width * 0.03),
              decoration: BoxDecoration(
                color: Color(0xFF2A2A2A),
                borderRadius: BorderRadius.circular(8),
              ),
              child: PopupMenuButton<int>(
                offset: Offset(50, 0),
                color: Colors.grey[900], // Popup background
                onSelected: (value) {
                  // Handle selection
                  if (value == 1) {
                    setState(() {
                      choosePriority = 'High Priority';
                      isHigh = true;
                      isMedium = false;
                      isLow = false;
                    });
                  } else if (value == 2) {
                    setState(() {
                      choosePriority = 'Medium Priority';
                      isMedium = true;
                      isHigh = false;
                      isLow = false;
                    });
                  } else if (value == 3) {
                    setState(() {
                      choosePriority = 'Low Priority';
                      isLow = true;
                      isHigh = false;
                      isMedium = false;
                    });
                  }
                },
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 1,
                    child: Row(
                      children: [
                        Container(
                          width: SizeUtils.width * 0.05,
                          height: SizeUtils.height * 0.02,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(3)),
                        ),
                        SizedBox(width: SizeUtils.width * 0.02),
                        Text(
                          'High Priority',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Row(
                      children: [
                        Container(
                          width: SizeUtils.width * 0.05,
                          height: SizeUtils.height * 0.02,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(3)),
                        ),
                        SizedBox(width: SizeUtils.width * 0.02),
                        Text(
                          'Medium Priority',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    value: 3,
                    child: Row(
                      children: [
                        Container(
                          width: SizeUtils.width * 0.05,
                          height: SizeUtils.height * 0.02,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(3)),
                        ),
                        SizedBox(width: SizeUtils.width * 0.02),
                        Text(
                          'Low Priority',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${choosePriority}',
                      style: TextStyle(
                          color: isHigh
                              ? Colors.red
                              : isMedium
                                  ? Colors.orange
                                  : isLow
                                      ? Colors.green
                                      : Colors.white),
                    ),
                    const Icon(Icons.keyboard_arrow_down, color: Colors.white),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: SizeUtils.height * 0.04,
            ),
            Text(
              'Subject',
              style: TextStyle(
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.w500,
                  fontSize: 22),
            ),
            SizedBox(
              height: SizeUtils.height * 0.02,
            ),
            Divider(),
            SizedBox(
              height: SizeUtils.height * 0.02,
            ),
            TextField(
              style: const TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              decoration: const InputDecoration(
                hintText: 'Type here',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                border: InputBorder.none, // Removes default border
              ),
              maxLines: 4, // Allows multi-line input
            ),
          ],
        ),
      ),
    );
  }
}
