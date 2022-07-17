import 'dart:io';

import 'package:challenge/gen/assets.gen.dart';
import 'package:challenge/src/bloc/main_bloc/main_bloc.dart';
import 'package:challenge/src/core/constants/routes_constants.dart';
import 'package:challenge/src/views/components/app_bar_component.dart';
import 'package:challenge/src/views/components/button_component.dart';
import 'package:challenge/src/views/components/snack_bar.dart';
import 'package:challenge/src/views/components/text_field_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/util/validators.dart';

bool _checkImagesExist(MainState state) =>
    (state.images != null && state.images!.isNotEmpty);

class MainDesktopView extends StatelessWidget {
  MainDesktopView({Key? key}) : super(key: key);
  final double _itemExtend = 200;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pointUrlController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final mainBloc = RepositoryProvider.of<MainBloc>(context);
    return Scaffold(
      appBar: appbar(
        'Desktop',
      ),
      body: BlocConsumer<MainBloc, MainState>(buildWhen: (previous, current) {
        if (!current.isReachedMaxSize) {
          return true;
        } else {
          return false;
        }
      }, builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    TextFieldComponent(
                        validator: emailValidator,
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        label: 'email'),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFieldComponent(
                        validator: urlValidator,
                        controller: _pointUrlController,
                        keyboardType: TextInputType.url,
                        label: 'pointUrl'),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              _PickedImageListWidget(),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    _UploadDataButtonWidget(
                      emailController: _emailController,
                      pointUrlController: _pointUrlController,
                      formKey: _formKey,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      flex: 1,
                      child: ButtonComponent(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        voidCallback: () async {
                          final ImagePicker picker = ImagePicker();
                          final List<XFile>? images =
                          await picker.pickMultiImage(
                            maxHeight: 480,
                            maxWidth: 640,
                            imageQuality: 50,
                          );
                          if (images != null) {
                            mainBloc.add(OnSelectMultipleImageEvent(images));
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text('انتخاب عکس از گالری'),
                              const SizedBox(
                                width: 8,
                              ),
                              Assets.images.gallery.image(height: 24, width: 24)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }, listener: (context, state) {
        if (state.isReachedMaxSize) {
          showSnackBar(context,'حجم عکس های انتخاب شده باید کمتر از 5 مگابایت باشد!');
        }
        if (state.wasUploadSuccessful) {
          _emailController.clear();
          _pointUrlController.clear();
          Navigator.pushNamed(context, kShowInfoScreenRoute);
        }
      }),
    );
  }
}

class _UploadDataButtonWidget extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController pointUrlController;
  final formKey;

  const _UploadDataButtonWidget({Key? key,
    required this.emailController,
    required this.pointUrlController,
  required this.formKey
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainBloc, MainState>(
      buildWhen: (previous, current) {
        if
            (current.isSendingData || !current.isSendingData) {
          return true;
        } else {
          return false;
        }
      },
      listener: (context, state) {},
      builder: (context, state) {

        return Visibility(
          visible: _checkImagesExist(state),
          child: Expanded(
            flex: 1,
            child: ButtonComponent(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      state.isSendingData
                          ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            color: Colors.white,
                            strokeWidth: 2,
                          ))
                          : const Text('آپلود عکس ها'),
                    ],
                  ),
                ),
                voidCallback: () {
                  context.read<MainBloc>().add(OnUploadMultipleImageEvent(
                      images: state.images!,
                      email: emailController.text,
                      pointUrl: pointUrlController.text,
                    formKey: formKey
                  ));
                }),
          ),
        );
      },
    );
  }
}

class _PickedImageListWidget extends StatelessWidget {
  const _PickedImageListWidget({Key? key}) : super(key: key);
  final double _itemExtend = 200;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        return Visibility(
          visible: _checkImagesExist(state),
          child: SizedBox(
            height:
            state.images != null ? (state.images!.length * _itemExtend) : 0,
            child: ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 8),
                itemExtent: _itemExtend,
                itemCount: state.images?.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 200,
                    width: double.infinity,
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      image: DecorationImage(
                        image: FileImage(File(state.images![index].path)),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }),
          ),
        );

      },
    );
  }
}

