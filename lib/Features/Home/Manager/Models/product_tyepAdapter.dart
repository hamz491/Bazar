import 'package:bazar/Features/Home/Manager/Models/product_model.dart';
import 'package:hive/hive.dart';

class product_typeAdapter extends TypeAdapter<product_model> {
  @override
  product_model read(BinaryReader reader) {
    return product_model(
      discountPercentage: reader.readDouble(),
      brand: reader.readString(),
      thumbnail: reader.readString(),
      images: reader.readList(),
      id: reader.readInt(),
      title: reader.readString(),
      price: reader.readInt(),
      description: reader.readString(),
      category: reader.readString(),
    );
  }

  @override
  int get typeId => 2;

  @override
  void write(BinaryWriter writer, product_model obj) {
    writer.writeDouble(obj.discountPercentage!);
    writer.writeString(obj.brand!);
    writer.writeString(obj.thumbnail!);
    writer.writeList(obj.images!);
    writer.writeInt(obj.id!);
    writer.writeString(obj.title!);
    writer.writeInt(obj.price!);
    writer.writeString(obj.description!);
    writer.writeString(obj.category!);
  }
}
