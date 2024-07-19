import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:techno3adalaa/Edaret_3l3aml/A3mal_Elmaktb/A3mal_Elmaktb.dart';
import 'package:techno3adalaa/Edaret_3l3aml/A3mal_Elmaktb/Allworksv2.dart';
import 'package:techno3adalaa/Egra2at_edarya.dart';
import 'package:techno3adalaa/Malia_page.dart';
import 'package:techno3adalaa/Masaref_edarya.dart';
import 'package:techno3adalaa/Mostagadat.dart';
import 'package:techno3adalaa/Optionspage.dart';
import 'package:techno3adalaa/Ta72e2.dart';
import 'package:techno3adalaa/Ta7sel_Amwal.dart';
import 'package:techno3adalaa/afterlogin.dart';
import 'package:techno3adalaa/phoneauth.dart';
import 'package:techno3adalaa/profile.dart';
import 'package:techno3adalaa/rosom.dart';
import 'package:techno3adalaa/mowakeldetails.dart';
import 'A3maly.dart';
import 'Case_Details.dart';
import 'Edaret_3l3aml/A3mal_7alia.dart';
import 'Edaret_3l3aml/A3mal_Elmaktb/Egra2at.dart';
import 'Edaret_3l3aml/A3mal_Elmaktb/Galasat_5obra2.dart';
import 'Edaret_3l3aml/A3mal_Elmaktb/Galasat_Ma7kma.dart';
import 'Edaret_3l3aml/A3mal_Elmaktb/Ta72e2.dart';
import 'Edaret_3l3aml/A3mal_Montahya.dart';
import 'Edaret_3l3aml/Allworks.dart';
import 'Group/Create_Group.dart';
import 'Group/Edareat_3ml_group.dart';
import 'Edaret_3l3aml/Egra2at.dart';
import 'Edaret_3l3aml/Galasat_5obra2.dart';
import 'Edaret_3l3aml/3ml.dart';
import 'Edaret_3l3aml/Galasat_Ma7kma.dart';
import 'Edaret_3l3aml/Ta47eel_3ml.dart';
import 'Edaret_3l3aml/Ta72e2.dart';
import 'Edaret_3l3aml/Tar7eel/Tar7eel_5obraa.dart';
import 'Edaret_3l3aml/Tar7eel/Tar7eel_egra2at.dart';
import 'Edaret_3l3aml/Tar7eel/Tar7eel_galasat.dart';
import 'Edaret_3l3aml/Tar7eel/Tar7eel_ta72e2.dart';
import 'Edaret_3ml.dart';
import 'Elqadya_details.dart';
import 'Galasat.dart';
import 'Group/ManageGroup.dart';
import 'Group/Tawzee3.dart';
import 'Group/Tawzee3_3ml.dart';
import 'Login_Page.dart';
import 'Mostanadat.dart';
import 'Mowakel_Pages/7agz_maw3ed.dart';
import 'Mowakel_Pages/Case_details.dart';
import 'Mowakel_Pages/Docs_ofCase.dart';
import 'Mowakel_Pages/Malia_Mowakel.dart';
import 'Mowakel_Pages/NextGalsa.dart';
import 'Mowakel_Pages/Option_choose.dart';
import 'Mowakel_Pages/cases.dart';
import 'Mowakleny.dart';
import 'Signup.dart';
import 'Ta72e2_details.dart';
import 'fat7malaf.dart';
import 'ui/bottombar.dart';
import 'galasat_5obra2.dart';
import 'otp.dart';



void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.black,
  ));
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  final colorText = const Color(0xFF4A8FE3);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;
    return new MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(fontFamily: 'NeoSansArabic'),
      title: 'TARIF',
      home: new Login(),
      routes: <String, WidgetBuilder>{
        '/Login': (BuildContext context) => new Login(),
        '/optionspage': (BuildContext context) => new Optionspage(),
        '/afterlogin': (BuildContext context) => new  Afterlogin(),
        '/Egra2at': (BuildContext context) => new  Egra2at(),
        '/Malia': (BuildContext context) => new  Malia_page(),
        '/Masaref': (BuildContext context) => new  Masaref_edarya(),
        '/Rosoom': (BuildContext context) => new  Rosoom(),
        '/Ta7sel': (BuildContext context) => new  Ta7seel(),
        '/Ta72e2': (BuildContext context) => new  Ta72e2(),
        '/Signup': (BuildContext context) => new  Signup(),
        '/otp': (BuildContext context) => new  otp(),
        '/Mowakleny': (BuildContext context) => new  Mowaklenypage(),
        '/phoneauth': (BuildContext context) => new  phoneauth(),
        '/galasat': (BuildContext context) => new  Galasat(),
        '/galasat5obraa': (BuildContext context) => new  Galasat5obraa(),
        '/profile': (BuildContext context) => new  profile(),
        '/Mowaklenydetails': (BuildContext context) => new  Mowaklenydetails(),
        '/Mostagadat': (BuildContext context) => new  Mostagadat(),
        '/Fat7Malaf': (BuildContext context) => new  Fat7Malaf(),
        '/Ta72e2Details': (BuildContext context) => new  Ta72e2Details(),
        '/El2adyaDetails': (BuildContext context) => new  El2adyaDetails(),
        '/Edaret3ml': (BuildContext context) => new  Edaret3ml(),
        '/A3maly': (BuildContext context) => new  A3maly(),
        '/GalasatMa7kma': (BuildContext context) => new  GalasatMa7kma(),
        '/Galasat5obra2': (BuildContext context) => new  Galasat5obra2(),
        '/Tar7eel3ml': (BuildContext context) => new  Tar7eel3ml(),
        '/Tar7eelGalasat': (BuildContext context) => new  Tar7eelGalasat(),
        '/Tar7eel5obraa': (BuildContext context) => new  Tar7eel5obraa(),
        '/Tar7eelTa72e2': (BuildContext context) => new  Tar7eelTa72e2(),
        '/Tar7eelEgra2at': (BuildContext context) => new  Tar7eelEgra2at(),
        '/Egra2att': (BuildContext context) => new  Egra2att(),
        '/Ta72e22': (BuildContext context) => new  Ta72e22(),
        '/A3malElmaktb': (BuildContext context) => new  A3malElmaktb(),
        '/Egra2att_A3mal': (BuildContext context) => new  Egra2at_A3mal(),
        '/Ta72e22_A3mal': (BuildContext context) => new  Ta72e22_A3mal(),
        '/GalasatMa7kma_A3mal': (BuildContext context) => new  GalasatMa7kma_A3mal(),
        '/Galasat5obra2_A3mal': (BuildContext context) => new  Galasat5obra2_A3mal(),
        '/Allworks': (BuildContext context) => new  Allworks(),
        '/Allworksv2': (BuildContext context) => new  Allworksv2(),
        '/CreateGroup': (BuildContext context) => new  CreateGroup(),
        '/Edaret3ml_Group': (BuildContext context) => new  Edaret3ml_Group(),
        '/Tawzee3_3ml': (BuildContext context) => new  Tawzee3_3ml(),
        '/A3mal7alia': (BuildContext context) => new  A3mal7alia(),
        '/3ml': (BuildContext context) => new  A3ml(),
        '/Tawzee3': (BuildContext context) => new  Tawzee3(),
        '/Managegroup': (BuildContext context) => new  ManageGroup(),
        '/A3malMontahya': (BuildContext context) => new  A3malMontahya(),
        '/CaseDetails,': (BuildContext context) => new  CaseDetails(),
        '/OptionChoose,': (BuildContext context) => new  OptionChoose(),
        '/Cases,': (BuildContext context) => new  Cases(),
        '/CaseDetailss,': (BuildContext context) => new  CaseDetailss(),
        '/Nextgalsa,': (BuildContext context) => new  Nextgalsa(),
        '/DocsOfcase,': (BuildContext context) => new  DocsOfcase(),
        '/MaliaMowakel,': (BuildContext context) => new  MaliaMowakel(),
        '/Hagz,': (BuildContext context) => new  Hagz(),
        '/Mostanadat,': (BuildContext context) => new  Mostanadat(),




      },
    );
  }
}
