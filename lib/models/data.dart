import '../db_images.dart';
import 'db_2_shop_model.dart';

List<Db2ShopModel> db2getCategory() {
  List<Db2ShopModel> popularArrayList = List<Db2ShopModel>();
  Db2ShopModel item1 = Db2ShopModel();
  item1.img = db2_mens;
  item1.name = "Mens";

  Db2ShopModel item2 = Db2ShopModel();
  item2.img = db2_women;
  item2.name = "Womens";

  Db2ShopModel item3 = Db2ShopModel();
  item3.img = db2_kids;
  item3.name = "Kids";

  Db2ShopModel item4 = Db2ShopModel();
  item4.img = db2_decor;
  item4.name = "Decor-items";

  Db2ShopModel item5 = Db2ShopModel();
  item5.img = db2_decor1;
  item5.name = "others";

  popularArrayList.add(item1);
  popularArrayList.add(item2);
  popularArrayList.add(item3);
  popularArrayList.add(item4);
  popularArrayList.add(item5);
  return popularArrayList;
}

List<Db2ShopModel> db2getFeatured() {
  List<Db2ShopModel> popularArrayList = List<Db2ShopModel>();
  Db2ShopModel item1 = Db2ShopModel();
  item1.img = db2_women;
  item1.name = "Black Jacket";

  Db2ShopModel item2 = Db2ShopModel();
  item2.img = db2_item1;
  item2.name = "Denim Jacket";

  Db2ShopModel item3 = Db2ShopModel();
  item3.img = db2_item3;
  item3.name = "Blazer";

  Db2ShopModel item4 = Db2ShopModel();
  item4.img = db2_item5;
  item4.name = "T-shirt";

  popularArrayList.add(item1);
  popularArrayList.add(item2);
  popularArrayList.add(item3);
  popularArrayList.add(item4);
  return popularArrayList;
}

List<Db2ShopModel> db2getProduct() {
  List<Db2ShopModel> popularArrayList = List<Db2ShopModel>();
  Db2ShopModel item1 = Db2ShopModel();
  item1.img = db2_item2;
  item1.name = "Sunglasses";

  Db2ShopModel item2 = Db2ShopModel();
  item2.img = db2_item4;
  item2.name = "Sweater";

  Db2ShopModel item3 = Db2ShopModel();
  item3.img = db2_mens;
  item3.name = "Shirt";

  Db2ShopModel item4 = Db2ShopModel();
  item4.img = db2_decor;
  item4.name = "Box";

  popularArrayList.add(item1);
  popularArrayList.add(item2);
  popularArrayList.add(item3);
  popularArrayList.add(item4);
  return popularArrayList;
}