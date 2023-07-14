package com.ABCCarPortal.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.ABCCarPortal.model.Car;

@Repository
public interface CarRepository extends JpaRepository<Car, Long>{

	List<Car> findBySellerId(Long uid);
	
	@Query(value = "SELECT c FROM Car c WHERE c.make LIKE '%' || :keyword || '%'"
			+ " OR c.model LIKE '%' || :keyword || '%'"
			+ " OR c.price LIKE '%' || :keyword || '%'"
			+ " OR c.registeration LIKE '%' || :keyword || '%'")
	public List<Car> search(@Param("keyword") String keyword);
	
	@Query(value = "SELECT * FROM car"
	 		+ " WHERE price > %:minimum% AND price < %:maximum%", nativeQuery = true)
	public List<Car> searchByPriceRange(@Param("minimum") Long minimum, @Param("maximum") Long maximum);
	
	@Query(value = "SELECT * FROM car"
	 		+ " WHERE name LIKE %:key%", nativeQuery = true)
	public List<Car> searchByBrand(@Param("key") String key);

	@Query(value = "SELECT * FROM car"
	 		+ " WHERE model LIKE %:key%", nativeQuery = true)
	public List<Car> searchByModel(@Param("key") String key);
	
	@Query(value = "SELECT * FROM car"
	 		+ " WHERE price LIKE %:key%", nativeQuery = true)
	public List<Car> searchByPrice(@Param("key") String key);
	
	@Query(value = "SELECT * FROM car"
	 		+ " WHERE make LIKE %:key%", nativeQuery = true)
	public List<Car> searchByMake(@Param("key") String key);
	
	@Query(value = "SELECT * FROM car"
			+ " JOIN user ON car.seller_id = user.id"
			+ " WHERE user.first_name LIKE %:key%"
	 		+ " OR user.last_name LIKE %:key%", nativeQuery = true)
	public List<Car> searchBySeller(@Param("key") String key);
	
	@Query(value = "SELECT * FROM car"
			+ " WHERE id LIKE %:cid%", nativeQuery = true)
	public Car getCarDetails(@Param("cid") Long cid);
	
	@Query(value = "SELECT id, description, make, model, name, photo_image_path, photos, post_date, price, registeration, seller_id, status FROM car"
			+ " WHERE id = :carId", nativeQuery = true)
	public String getCarDetailsById(@Param("carId") String carId);
	

	@Query(value = "SELECT id FROM car"
	 		+ " WHERE seller_id = :uid", nativeQuery = true)
	public Long[] getCarId(@Param("uid") Long uid);
	
}
