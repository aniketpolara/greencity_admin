import 'package:flutter/material.dart';
import 'package:greencity/common/containers.dart';
import 'package:greencity/common/text.dart';
import 'package:greencity/common/textfields.dart';
import 'package:greencity/network/data/data.dart';
import 'package:greencity/screens/facilities/facilities_widgets.dart';
import 'package:greencity/utils/colors.dart';
import 'package:greencity/utils/images.dart';
import 'package:hexcolor/hexcolor.dart';

class FacilitiesPage extends StatefulWidget {
  const FacilitiesPage({super.key});

  @override
  State<FacilitiesPage> createState() => _FacilitiesPageState();
}

class _FacilitiesPageState extends State<FacilitiesPage> {
  TextEditingController controllerSearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: colorGradiant1,
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: const Image(
          image: AssetImage(imgAppbar),
          fit: BoxFit.cover,
        ),
        elevation: 2,
        title: text(color: Colors.white, text: 'Facilities', fontsize: 24),
      ),
      body: membercontainer(
        paddingLeft: 20,
        paddingtop: 20,
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                text(
                    text: 'Have a burning question ? 🔥',
                    fontsize: 19,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold)
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.only(right: 20),
              child: SizedBox(
                child: textFields(
                  suffixIcon: const Icon(
                    Icons.search,
                    color: Colors.black38,
                  ),
                  controller: controllerSearch,
                  hintText: 'Search for topics or queations...',
                  color: colorCard,
                  //w: MediaQuery.of(context).size.width * 0.85,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                text(
                    text: 'Frequently Asked',
                    fontsize: 15,
                    fontWeight: FontWeight.bold)
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 150,
              child: Expanded(
                child: ListView.builder(
                  itemCount: gradiantContainerData.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    gradiantContainerData[index]['pageName']));
                      },
                      child: gradiantContainer(
                          color1:
                              HexColor(gradiantContainerData[index]['color1']),
                          color2:
                              HexColor(gradiantContainerData[index]['color2']),
                          w: 100,
                          child: text(
                              color: white,
                              text: gradiantContainerData[index]['name'],
                              fontWeight: FontWeight.w500,
                              fontsize: 19)),
                    );
                  },
                  // children: [
                  //   //5469ec    7fa0ff
                  //   //7350e6    ad81ff
                  //   //fc5096    fd7dc
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.grey,
              indent: 10,
              endIndent: 30,
              thickness: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                text(text: 'Topics', fontsize: 15, fontWeight: FontWeight.bold)
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: facilities.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    color: colorCard,
                    margin:
                        const EdgeInsets.only(right: 25, bottom: 18, left: 5),
                    // color: Colors.pink,
                    elevation: 2,
                    child: ListTile(
                        leading: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                facilities[index]['image'],
                              ),
                            ),
                          ),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        facilities[index]['pageName']));
                          },
                          icon: const Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 25,
                            // color: colorSelected,
                          ),
                        ),
                        title: text(
                            text: facilities[index]['name'],
                            fontWeight: FontWeight.w600),
                        subtitle: text(text: facilities[index]['price'])),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
