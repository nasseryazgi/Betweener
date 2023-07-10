import 'package:bootcamp_starter/core/util/assets.dart';
import 'package:bootcamp_starter/core/util/constants.dart';
import 'package:bootcamp_starter/core/util/styles.dart';
import 'package:bootcamp_starter/core/widgets/custom_labeled_textfield_widget.dart';
import 'package:bootcamp_starter/core/widgets/secondary_button_widget.dart';
import 'package:flutter/material.dart';


class EditProfieView extends StatelessWidget {
  static String id = '/EditProfieView';

  // in case of  old link should be pased
  // final Object object; // Replace `YourObject` with the actual object type
  // TextEditingController nameController;
  // TextEditingController EmailsController;

  // EditProfieView({Key? key, required this.object}) : super(key: key) {
  // nameController = TextEditingController(text: object.title); // Set the initial value
  // EmailsController = TextEditingController(text: object.link); // Set the initial value
  // }

  TextEditingController nameController = TextEditingController();  // old
  TextEditingController EmailsController = TextEditingController();  // old
  TextEditingController PhoneController = TextEditingController();  // old

  EditProfieView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Edit User Info ",
          style: Styles.textStyle14,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
          //replace with our own icon data.
        ),
        elevation: 0,
        backgroundColor: kLightPrimaryColor,
        // centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height -
                AppBar().preferredSize.height,
            child: Column(
              children: [
              Spacer(),
                CircleAvatar(
                  radius: 48,
                  backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/36562531?v=4'),
                  //   image here
                ),
                PrimaryLabeledTextFieldWidget(
                  controller: nameController,
                    hint: 'John dou',
                  label: 'Name',
                ),
                const SizedBox(
                  height: 14,
                ),
                PrimaryLabeledTextFieldWidget(
                  controller: EmailsController,
                  hint: 'example@gmail.com',
                  label: 'Email',
                ),

                const SizedBox(
                  height: 14,
                ),
                PrimaryLabeledTextFieldWidget(
                  controller: EmailsController,
                  hint: '+97000000000',
                  label: 'Phone',
                ),
                const SizedBox(
                  height: 49,
                ),
                SecondaryButtonWidget(onTap: () {}, text: 'SAVE' ,width: 138.0,),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
