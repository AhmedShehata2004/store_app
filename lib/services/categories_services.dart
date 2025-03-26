
import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class CategoriesServices {
  

  Future<List<ProductModel>> getProductBYCategory( {required String category}) async {
             
              List<dynamic> data  = await Api().get(url:'https://fakestoreapi.com/products/category/$category');
             
                List<ProductModel> productLists = [];
                
                for (var i = 0; i < data.length; i++) {
                  productLists.add(ProductModel.fromJson(data[i]));
                }
                return productLists;
                }
              
   
  }
