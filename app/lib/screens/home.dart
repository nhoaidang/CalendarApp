

import 'package:flutter/material.dart';
import 'package:namdz/http/global.dart';
import 'package:namdz/screens/add.dart';
import 'package:namdz/screens/notification.dart';
import 'package:namdz/themedata/theme.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import '../../calendar_data.dart';
import 'Welcome/welcome_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text("Lịch Cá Nhân",style: headingStyle,),
          ),
          drawer: NavigationDrawer(),
          body: SfCalendar(
            view: CalendarView.month,
            cellBorderColor: Colors.transparent,
            dataSource: CalendarData(getCalender),
            monthViewSettings: MonthViewSettings(
              appointmentDisplayMode: MonthAppointmentDisplayMode.indicator,
              showAgenda: true,
            ),
            blackoutDates: [],
          ),
          
        ),
      ],
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildHeader(context),
            buildMenuItem(context),
          ],
        ),
      ),
  );

  Widget buildHeader(BuildContext context) => Container(
    color: Colors.blue.shade700,
    padding: EdgeInsets.only(
      top: MediaQuery.of(context).padding.top,
      
    ),
    child: Column(
      children: [
        CircleAvatar(
          radius: 52,
          backgroundImage: AssetImage("assets/avt.jpg"),
        ),
        SizedBox(height: 12,),
        Text("DangHoaiNam",
        style: TextStyle(fontSize: 28,color: Colors.white),
        ),
        Text("dhnam@ictu.edu.vn",
        style: TextStyle(fontSize: 16,color: Colors.white),
        )
      ],
    ),
  );
  Widget buildMenuItem(BuildContext context) => Container(
    padding: EdgeInsets.symmetric(vertical: 50,horizontal: 20),
    child: Wrap(
      children: [
        ListTile(
          leading: Icon(Icons.home_outlined),
          title: Text("Trang chủ"),
          onTap: () =>
           Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => HomePage() ,
             )
            ),
          ),
          ListTile(
          leading: Icon(Icons.add_outlined),
          title: Text("Thêm lịch"),
          onTap: () {
          Navigator.pop(context);

           Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => AddPage() ,
             )
            );
          }
          ),
          ListTile(
          leading: Icon(Icons.notifications_outlined),
          title: Text("Thông báo"),
          onTap: () {
          Navigator.pop(context);

           Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => NotificationPage() ,
             )
            );
          }
          ),
        Divider(color: Colors.black54),
        ListTile(
          leading: Icon(Icons.arrow_back),
          title: Text("Đăng xuất"),
          onTap: () => 
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => WelcomeScreen() ,
             )
            )
          ),
      ],
    ),
  );
}
