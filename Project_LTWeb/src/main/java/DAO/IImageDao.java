package DAO;

import java.util.List;

import Models.ImagesModel;
import Models.SizeModel;

public interface IImageDao {



	void edit(ImagesModel image);

	void delete(int id);

	ImagesModel get(int id);

	ImagesModel getName(String name);

	List<ImagesModel> getAll();

	List<ImagesModel> search(String keyword);

	ImagesModel findById(int id);

	void insert(ImagesModel image);
	
	List<ImagesModel> getAllProductId(int productId);

}
