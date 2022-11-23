import 'package:airplane/models/destination_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DestinationService {
  CollectionReference _destinationRef =
      FirebaseFirestore.instance.collection('destinations');

  Future<List<DestinationModel>> fetchDestinations() async {
    try {
      QuerySnapshot result = await _destinationRef.get();

      List<DestinationModel> destinations = result.docs.map(
        (item) {
          return DestinationModel.fromJson(
            item.id,
            item.data() as Map<String, dynamic>,
          );
        },
      ).toList();
      return destinations;
    } catch (e) {
      rethrow;
    }
  }
}
