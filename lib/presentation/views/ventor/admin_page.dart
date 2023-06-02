import 'dart:developer';
import 'dart:io';
import 'package:ecommerce/application/ventor/ventor_bloc.dart';
import 'package:ecommerce/infrastructure/repository/firebase_add.dart';
import 'package:ecommerce/presentation/core/constants/constants.dart';
import 'package:ecommerce/presentation/views/ventor/home.dart';
import 'package:ecommerce/presentation/views/widgets/appbarwidget.dart';
import 'package:ecommerce/presentation/views/widgets/button_widget.dart';
import 'package:ecommerce/presentation/views/widgets/outlined_button.dart';
import 'package:ecommerce/presentation/views/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:image_picker/image_picker.dart';

import 'widgets/category_dropdown.dart';

class ProductAddPage extends StatelessWidget {
  ProductAddPage({super.key});
  final _descriptionController = TextEditingController();
  final _nameController = TextEditingController();
  final _discountController = TextEditingController();
  final _priceController = TextEditingController();
  final _quantityController = TextEditingController();
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
              CustomTextField(
                  prefixIcon: Icons.numbers_outlined,
                  controller: _quantityController,
                  placeholderText: 'quantity'),
              Row(
                children: [
                  CustomDropDown(
                      brandValue: categoryValue,
                      brands: categoryData,
                      text: 'Select category'),
                  AppConstants.width10,
                  CustomDropDown(
                      brandValue: brandValue,
                      brands: brands,
                      text: 'Select brand'),
                ],
              ),
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

  void onSubmit(BuildContext context) {
    final isEmptyField = image.value.isEmpty ||
        _quantityController.text.isEmpty ||
        categoryValue.value == null ||
        brandValue.value == null ||
        _nameController.text.isEmpty ||
        shoeSize.isEmpty ||
        _priceController.text.isEmpty;

    if (isEmptyField) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Field cannot be empty')),
      );
    } else {
      final discount = _discountController.text.isEmpty
          ? 0
          : int.parse(_discountController.text);
      final price = int.parse(_priceController.text);

      context.read<VentorBloc>().add(VentorEvent.addProduct(
            quantity: int.parse(_quantityController.text),
            discount: discount,
            size: selectedSize,
            description: _descriptionController.text,
            image: image.value,
            productName: _nameController.text,
            price: price,
            category: categoryValue.value!,
            brand: brandValue.value!,
          ));
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => VentorHome(),
          ),
          (route) => false);
    }
  }

  Future pickImage() async {
    try {
      final selectedImage =
          await ImagePicker().pickImage(source: ImageSource.gallery);
      if (selectedImage == null) return;
      final imageTemp = (File(selectedImage.path));
      image.value.add(imageTemp);
      image.notifyListeners();
    } on PlatformException catch (e) {
      log('Failed to pick image: $e');
    }
  }
}



// enum Category { men, women, kids, uniSex }

// class CategoryType {
//   final String category;
//   final Category type;

//   CategoryType(this.category, this.type);
// }
