import 'package:bootcamp_starter/core/util/assets.dart';
import 'package:bootcamp_starter/core/util/constants.dart';
import 'package:bootcamp_starter/core/util/styles.dart';
import 'package:bootcamp_starter/core/widgets/custom_labeled_textfield_widget.dart';
import 'package:bootcamp_starter/core/widgets/secondary_button_widget.dart';
import 'package:flutter/material.dart';


class NewLinkView extends StatelessWidget {
  static String id = '/newLinkView';

  TextEditingController titleController = TextEditingController();
  TextEditingController linkController = TextEditingController();

  NewLinkView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "New Link ",
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
                const SizedBox(
                  height: 70,
                ),
                const SizedBox(
                  height: 24,
                ),
                PrimaryLabeledTextFieldWidget(
                  controller: titleController,
                  hint: 'snapshat',
                  label: 'title',
                ),
                const SizedBox(
                  height: 14,
                ),
                PrimaryLabeledTextFieldWidget(
                  controller: linkController,
                  hint: 'http:\\www.Example.com',
                  label: 'link',
                ),
                const SizedBox(
                  height: 54,
                ),
                SecondaryButtonWidget(onTap: () {}, text: 'ADD' ,width: 138.0,),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
