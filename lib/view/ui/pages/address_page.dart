part of 'pages.dart';

class AddressPage extends StatefulWidget {
  static String idKey = "AddressPageKey";

  const AddressPage({super.key});

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    TextEditingController phoneNumberController = TextEditingController();
    TextEditingController addressController = TextEditingController();
    TextEditingController houseNumberController = TextEditingController();
    bool isLoading = false;

    return GeneralPage(
      title: "Address",
      subTitle: "Please Input your valid Address",
      backColor: Colors.white,
      onBackPressed: () {
        Navigator.pop(context);
      },
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 8),
            child: Text(
              "Phone Number",
              style: blackFontText22,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black),
            ),
            child: TextField(
              controller: phoneNumberController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyText,
                  hintText: 'Please input your phone number'),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 8),
            child: Text(
              "Address",
              style: blackFontText22,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black),
            ),
            child: TextField(
              controller: addressController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyText,
                  hintText: 'Please input your address'),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 8),
            child: Text(
              "House Number",
              style: blackFontText22,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black),
            ),
            child: TextField(
              controller: houseNumberController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyText,
                  hintText: 'Please input your house number'),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 8),
            child: Text(
              "City",
              style: blackFontText22,
            ),
          ),
          Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black),
              ),
              child: DropdownButton(
                  isExpanded: true,
                  underline: SizedBox(),
                  value: selectedValue,
                  items: [
                    DropdownMenuItem(child: Text('Tangerang'),value: "Tangerang",),
                    DropdownMenuItem(child: Text('Jakarta'),value: "Jakarta",),
                    DropdownMenuItem(child: Text('Bogor'),value: "Bogor",),
                    DropdownMenuItem(child: Text('Bekasi'),value: "Bekasi",),
                  ],
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue;
                    });
                  })),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: defaultMargin),
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: isLoading
                ? SpinKitFadingCircle(
                    size: 50,
                    color: mainColor,
                  )
                : ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: mainColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    )),
          ),
        ],
      ),
    );
  }
}
