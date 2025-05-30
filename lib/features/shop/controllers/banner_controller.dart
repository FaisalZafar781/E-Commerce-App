import 'package:af_store/data/repositories/banner/banner_repository.dart';
import 'package:af_store/features/shop/models/banner_model.dart';
import 'package:af_store/utils/popups/loaders.dart';
import 'package:get/get.dart';

class BannerController extends GetxController {
  static BannerController get instance => Get.find();

  final carousalCurrentIndex = 0.obs;
  final isLoading = false.obs;
  final RxList<BannerModel> banners = <BannerModel>[].obs;

  @override
  void onInit() {
    fetchBanners();
    super.onInit();
  }

  //update page indicator
  void updatePageIndicator(index) {
    carousalCurrentIndex.value = index;
  }

  //Fetch Banners
  Future<void> fetchBanners() async {
    try {
      // show loader while loading
      isLoading.value = true;
      //fetch banners
      final bannerRepo = Get.put(BannerRepository());
      final banners = await bannerRepo.fetchBanners();

      //assign banners to the list
      this.banners.assignAll(banners);
    } catch (e) {
      FLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } finally {
      //remove loader
      isLoading.value = false;
    }
  }
}

# touched on 2025-05-28T23:02:28.413785Z
# touched on 2025-05-28T23:05:17.773905Z