
import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class AllProductService {

  Future<List<ProductModel>> getAllproducts() async {
             
              List<dynamic> data = await Api().get(url: 'https://fakestoreapi.com/products');
             
                List<ProductModel> productLists = [];
                
                for (var i = 0; i < data.length; i++) {
                  productLists.add(ProductModel.fromJson(data[i]));
                }
                return productLists;
                } 

}