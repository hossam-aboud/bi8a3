import 'dart:developer';

import 'package:baqa3/layout/cubit/states.dart';
import 'package:baqa3/models/data/data_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Baqa3Cubit extends Cubit<Baqa3States> {
  Baqa3Cubit() : super(Baqa3InitialState());

  static Baqa3Cubit get(BuildContext context) => BlocProvider.of(context);

  List<DataModel> data = [];

  getData() {
    emit(Baqa3GetDataLoadingState());
    FirebaseFirestore.instance.collection('data').get().then(
      (value) {
        value.docs.forEach((element) {
          data.add(DataModel.formJSON(element.data()));
        });
        emit(Baqa3GetDataSuccessState());
      },
      onError: (error) {
        emit(Baqa3GetDataErrorState());
        log(error.toString());
      },
    );
  }
}
