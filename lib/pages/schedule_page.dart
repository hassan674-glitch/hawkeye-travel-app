import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:travel_app/config/AppColors.dart';
import 'package:travel_app/config/assets.dart';
import 'package:travel_app/config/size.dart';
import 'package:travel_app/pages/travel_arrangemnt.dart';



class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  _SchedulePageState createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {

  DateRangePickerController _controller = DateRangePickerController();
  List<DateTime> _selectedDates = [];
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      if (args.value is List<DateTime>) {
        _selectedDates = args.value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        leading: Container(
          margin: EdgeInsets.only(top: getProportionateScreenHeight(25)),
          child: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {},
          ),
        ),
        title: Container(
          margin: EdgeInsets.only(top: getProportionateScreenHeight(30)),
          child: Text(
            'New Plan',
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: getProportionateScreenHeight(20),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                width: getProportionateScreenWidth(360),
                height: getProportionateScreenHeight(760),
                padding: EdgeInsets.only(
                    top: getProportionateScreenHeight(31),
                    left: getProportionateScreenWidth(25),right: getProportionateScreenWidth(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: getProportionateScreenWidth(350),
                      height: getProportionateScreenHeight(92),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        image: const DecorationImage(
                          image: AssetImage(ImageAssets.river),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: getProportionateScreenHeight(10),
                            left: getProportionateScreenWidth(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Nordic Cottage',
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 16,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),

                                Text(
                                  'Nordic Cottage',
                                  style: GoogleFonts.andika(
                                    color: Colors.white,
                                    fontSize: 21,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(38)),
                    Text(
                      'Select dates',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // SizedBox(height: getProportionateScreenHeight()),
                    SfDateRangePicker(
                      headerStyle: const DateRangePickerHeaderStyle(
                        backgroundColor: AppColors.mainColor,
                          textStyle:TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          )
                      ),
                      backgroundColor: AppColors.mainColor,
                      onSelectionChanged: _onSelectionChanged,
                      selectionMode: DateRangePickerSelectionMode.range,
                      selectionColor: Colors.blue,
                      startRangeSelectionColor: Colors.blue,
                      endRangeSelectionColor: Colors.blue,
                      rangeSelectionColor: Colors.blue.withOpacity(0.5),
                      controller: _controller,
                    ),
                    // TableCalendar(
                    //   locale: "en_US",
                    //   rowHeight: getProportionateScreenHeight(35),
                    //   focusedDay: today,
                    //   headerStyle: const HeaderStyle(
                    //     titleTextStyle: TextStyle(
                    //       fontSize: 14
                    //     ),
                    //     headerMargin: EdgeInsets.only(left: 120),
                    //     formatButtonVisible: false,
                    //     titleCentered: true,
                    //   ),
                    //   selectedDayPredicate: (day)=>isSameDay(day, today),
                    //   firstDay:  DateTime.utc(2010,1,3),
                    //   lastDay: DateTime.utc(2030 ,3 ,14),
                    //   onDaySelected: _onDaySelected,
                    //   calendarStyle: const CalendarStyle(
                    //     todayDecoration: BoxDecoration(
                    //       color: AppColors.primaryColor,
                    //       shape: BoxShape.circle
                    //     ),
                    //     selectedDecoration: BoxDecoration(
                    //       color: AppColors.primaryColor,
                    //       shape: BoxShape.circle,
                    //     ),
                    //   ),
                    // ),
                   SizedBox(height: getProportionateScreenHeight(20),),
                    Text(
                      'Select dates',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(10)),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(getProportionateScreenHeight(26))
                              ),
                              hintText: 'Query journey',
                            ),
                          ),
                        ),
                        SizedBox(width:getProportionateScreenWidth(8)),
                       CircleAvatar(
                           radius: 25,
                           backgroundColor: AppColors.primaryColor,
                           child: SvgPicture.asset(SvgAssets.send)),
                      ],
                    ),
                     SizedBox(height:getProportionateScreenHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Send to your email',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                          ),
                        ),
                        Switch(
                          activeColor: AppColors.primaryColor,
                          value: true,
                          onChanged: (value) {
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: getProportionateScreenHeight(32),),
                    SizedBox(
                      width: double.infinity,
                      height: getProportionateScreenHeight(50),
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(const TravelArrangementPage());
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(36),
                          ),
                        ),
                        child: Text(
                          'Next step',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
