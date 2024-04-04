import 'package:adopt_a_pet/data/models/attributes.dart';
import 'package:adopt_a_pet/data/models/breeds.dart';
import 'package:adopt_a_pet/data/models/pet.dart';
import 'package:adopt_a_pet/data/models/pet_type_enum.dart';
import 'package:adopt_a_pet/presentation/bloc/pet_info_screen_bloc.dart';
import 'package:adopt_a_pet/presentation/bloc/pet_screen_bloc.dart';
import 'package:adopt_a_pet/presentation/events/pet_info_screen/get_organazation_pet_info_screen_event.dart';
import 'package:adopt_a_pet/presentation/events/pet_screen/get_list_by_name_pet_screen_event.dart';
import 'package:adopt_a_pet/presentation/events/pet_screen/get_list_pet_screen_event.dart';
import 'package:adopt_a_pet/presentation/states/pet_info_screen/pet_info_screen_state.dart';
import 'package:adopt_a_pet/presentation/states/pet_screen/pet_screen_state.dart';
import 'package:adopt_a_pet/ui/views/pet_info_screen/organization_info.dart';
import 'package:adopt_a_pet/ui/views/pet_info_screen/pet_info_group/pet_info_group.dart';
import 'package:adopt_a_pet/ui/views/pet_screen/location_widget.dart';
import 'package:adopt_a_pet/ui/views/pet_screen/pet_grid/pet_grid.dart';
import 'package:adopt_a_pet/ui/views/pet_screen/pet_search_bar.dart';
import 'package:adopt_a_pet/ui/views/pet_screen/pet_type_list/pet_type_list.dart';
import 'package:adopt_a_pet/ui/widgets/text/body2_text.dart';
import 'package:adopt_a_pet/ui/widgets/text/h1_text.dart';
import 'package:adopt_a_pet/ui/widgets/text/h2_text.dart';
import 'package:adopt_a_pet/utils/data_loading_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../widgets/text/body3_text.dart';

class PetInfoScreen extends StatelessWidget {
  late PetInfoScreenBloc _petInfoScreenBloc;

  final Pet pet;
  final double imageHeight;

  PetInfoScreen({
    required this.pet,
  }) : imageHeight = pet.primaryPhotoCropped?.large == null ? 140 : 400;

  Widget _createOrganizationContent(
      BuildContext context, PetInfoScreenState state) {
    switch (state.organizationLoadingState) {
      case DataLoadingState.none:
        return _getClearContainer();
      case DataLoadingState.loading:
        return _getLoadingContent();
      case DataLoadingState.data:
        return _getDataContent(state, context);
      case DataLoadingState.error:
        return _getErrorContent();
      case DataLoadingState.empty:
        return _getEmptyContent();
    }
  }

  Widget _getDataContent(PetInfoScreenState state, BuildContext context) {
    return OrganizationInfo(
      organization: state.organization!,
      onPhoneTap: () => _launchPhoneApp(state.organization!.phone!),
      onEmailTap: () => _launchEmailApp(state.organization!.email!),
    );
  }

  Widget _getClearContainer() {
    return const SizedBox();
  }

  Widget _getLoadingContent() {
    return SizedBox(
      width: double.infinity,
      child: Center(
        child: LoadingAnimationWidget.discreteCircle(
          color: const Color(0xFF827397),
          secondRingColor: const Color(0xFFfde3f9),
          thirdRingColor: const Color(0xFFe8effa),
          size: 36,
        ),
      ),
    );
  }

  Widget _getErrorContent() {
    return const SizedBox();
  }

  Widget _getEmptyContent() {
    return const SizedBox();
  }

  @override
  Widget build(BuildContext context) {
    _petInfoScreenBloc = BlocProvider.of<PetInfoScreenBloc>(context);
    _petInfoScreenBloc
        .add(GetOrganizationPetScreenEvent(id: pet.organizationId));

    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<PetInfoScreenBloc, PetInfoScreenState>(
            builder: (context, state) {
          return Stack(
            alignment: Alignment.topCenter,
            children: [
              pet.primaryPhotoCropped?.large == null
                  ? SizedBox(
                      height: imageHeight,
                      child: const Icon(
                        Icons.image_not_supported_outlined,
                        color: Color(0x805F5B5B),
                        size: 48.0,
                      ),
                    )
                  : Image.network(
                      pet.primaryPhotoCropped!.large,
                      fit: BoxFit.cover,
                      height: imageHeight,
                      width: MediaQuery.of(context).size.width,
                    ),
              Padding(
                padding: EdgeInsets.only(top: imageHeight - 40),
                child: SizedBox.expand(
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 36,
                        left: 24,
                        right: 24,
                        bottom: 24,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          H1Text(
                            text: pet.name,
                            textColor: const Color(0xFF5F5B5B),
                          ),
                          pet.contact.address.city == null
                              ? const SizedBox()
                              : Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/vectors/ic_location.svg',
                                      ),
                                      Body3Text(
                                        text: pet.contact.address.city!,
                                        textColor: const Color(0x805F5B5B),
                                      ),
                                    ],
                                  ),
                                ),
                          const SizedBox(
                            height: 16,
                          ),
                          PetInfoGroup(
                            gender: pet.gender,
                            age: pet.age,
                            size: pet.size,
                            breed: pet.breeds.primary,
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          _createOrganizationContent(context, state),
                          pet.description == null
                              ? const SizedBox()
                              : Padding(
                                  padding: const EdgeInsets.only(top: 24),
                                  child: Body3Text(
                                    text: pet.description!,
                                    textColor: const Color(0xFFC2C2C2),
                                  ),
                                )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        }),
      ),
      backgroundColor: Colors.white,
    );
  }

  void _launchPhoneApp(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    if (!await launchUrl(launchUri)) {
      Fluttertoast.showToast(
        msg: phoneNumber,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.white54,
        textColor: Colors.black,
      );
    }
  }

  void _launchEmailApp(String email) async {
    final Uri launchUri = Uri(
      scheme: 'mailto',
      path: email,
    );
    if (!await launchUrl(launchUri)) {
      Fluttertoast.showToast(
        msg: email,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.white54,
        textColor: Colors.black,
      );
    }
  }
}
