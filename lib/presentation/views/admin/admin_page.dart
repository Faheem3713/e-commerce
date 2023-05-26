import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:ecommerce/infrastructure/repository/firebase_add.dart';
import 'package:ecommerce/presentation/core/constants/constants.dart';
import 'package:ecommerce/presentation/core/theme/app_color.dart';
import 'package:ecommerce/presentation/views/widgets/appbarwidget.dart';
import 'package:ecommerce/presentation/views/widgets/button_widget.dart';
import 'package:ecommerce/presentation/views/widgets/outlined_button.dart';
import 'package:ecommerce/presentation/views/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:image_picker/image_picker.dart';

class AdminPage extends StatelessWidget {
  AdminPage({super.key});
  final _descriptionController = TextEditingController();
  final _nameController = TextEditingController();
  final _discountController = TextEditingController();
  final _priceController = TextEditingController();
  List<String> categoryData = ['Men', 'Women', 'Kids', 'Unisex'];
  List<String> brands = ['Nike', 'Adidas', 'Puma', 'Reebok'];
  List<int> shoeSize = [30, 31, 32, 33, 34, 35, 36, 37];
  ValueNotifier<String?> categoryValue = ValueNotifier(null);
  ValueNotifier<String?> brandValue = ValueNotifier(null);
  ValueNotifier<List<File>> image = ValueNotifier([]);
  final formKey = GlobalKey<FormState>();
  List<int> selectedSize = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const AppBarWidget(isIcon: false),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: ListView(
            children: [
              CircleAvatar(
                radius: 45,
                child: IconButton(
                    onPressed: () async {
                      await pickImage();
                    },
                    icon: const Icon(Icons.add)),
              ),
              ValueListenableBuilder(
                  valueListenable: image,
                  builder: (context, img, _) {
                    return SizedBox(
                      height: 80,
                      child: ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Image.file(
                                img[index],
                                height: 60,
                                width: 60,
                              ),
                          separatorBuilder: (context, index) =>
                              AppConstants.width10,
                          itemCount: img.length),
                    );
                  }),
              CustomTextField(
                controller: _nameController,
                placeholderText: 'Product name',
                prefixIcon: Icons.production_quantity_limits,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: [
                    Expanded(
                      child: CustomTextField(
                        prefixIcon: Icons.currency_rupee,
                        controller: _priceController,
                        placeholderText: 'Price',
                        keyBoardType: TextInputType.phone,
                      ),
                    ),
                    AppConstants.width5,
                    Expanded(
                      child: CustomTextField(
                        prefixIcon: Icons.currency_rupee,
                        controller: _discountController,
                        placeholderText: 'Discount price',
                        keyBoardType: TextInputType.phone,
                      ),
                    ),
                  ],
                ),
              ),
              CustomDropDown(
                  brandValue: categoryValue,
                  brands: categoryData,
                  text: 'Select category'),
              CustomDropDown(
                  brandValue: brandValue, brands: brands, text: 'Select brand'),
              CustomOutlinedbutton(
                text: 'Available size',
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Size'),
                      content: Wrap(
                        children: shoeSize.map((e) => sizeChip(e)).toList(),
                      ),
                    ),
                  );
                },
              ),
              CustomTextField(
                  prefixIcon: Icons.description,
                  controller: _descriptionController,
                  placeholderText: 'Description'),
              ButtonWidget(
                  text: 'Submit',
                  onPressed: () {
                    onSubmit(context);
                  },
                  width: double.infinity)
            ],
          ),
        ),
      ),
    );
  }

  Widget sizeChip(int size) {
    final ValueNotifier<bool> selectedValue = ValueNotifier(false);

    return ValueListenableBuilder(
        valueListenable: selectedValue,
        builder: (context, data, _) {
          return ChoiceChip(
            padding: AppConstants.padding5,
            label: Text(size.toString()),
            selected: selectedSize.contains(size),
            onSelected: (value) {
              selectedValue.value = !selectedValue.value;
              value == true
                  ? selectedSize.add(size)
                  : selectedSize.remove(size);
            },
          );
        });
  }

  onSubmit(BuildContext context) {
    if (image.value.isEmpty ||
        categoryValue.value == null ||
        brandValue.value == null ||
        _nameController.text.isEmpty ||
        shoeSize.isEmpty ||
        _priceController.text.isEmpty) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Field cannot be empty')));
    } else {
      AdminManage.instance
          .addProduct(
            discount: _discountController.text.isEmpty
                ? 0
                : int.parse(_discountController.text),
            size: selectedSize,
            description: _descriptionController.text,
            image: image.value,
            productName: _nameController.text,
            price: int.parse(_priceController.text),
            category: categoryValue.value!,
            brand: brandValue.value!,
          )
          .then((value) => Navigator.pop(context));
    }
  }

  Future pickImage() async {
    try {
      final _image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (_image == null) return;
      final imageTemp = (File(_image.path));
      image.value.add(imageTemp);
      image.notifyListeners();
    } on PlatformException catch (e) {
      log('Failed to pick image: $e');
    }
  }
}

class CustomDropDown extends StatelessWidget {
  const CustomDropDown({
    super.key,
    required this.brandValue,
    required this.brands,
    required this.text,
  });

  final ValueNotifier<String?> brandValue;
  final List<String> brands;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: brandValue,
        builder: (context, selectedBrandValue, _) {
          return DropdownButton(
            isExpanded: true,
            value: selectedBrandValue,
            hint: Text(text),
            items: brands
                .map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    ))
                .toList(),
            onChanged: (value) {
              brandValue.value = value;
            },
          );
        });
  }
}



// enum Category { men, women, kids, uniSex }

// class CategoryType {
//   final String category;
//   final Category type;

//   CategoryType(this.category, this.type);
// }
