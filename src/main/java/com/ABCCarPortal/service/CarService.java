package com.ABCCarPortal.service;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.TreeSet;
import java.util.stream.Collectors;
import static java.util.stream.Collectors.collectingAndThen;
import static java.util.stream.Collectors.toCollection;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;

import com.ABCCarPortal.model.Car;
import com.ABCCarPortal.model.CarBidding;
import com.ABCCarPortal.model.User;
import com.ABCCarPortal.repository.BidRepository;
import com.ABCCarPortal.repository.CarRepository;

@Service
@Transactional
public class CarService {

	@Autowired
	private CarRepository carRepository;

	@Autowired
	private BidRepository bidRepository;
	

	public List<Car> getAllCars() {
		return carRepository.findAll();
	}

	public Car save(Car car) {
		return carRepository.save(car);
	}

	public Optional<Car> getCarInfo(long cid) {

		return carRepository.findById(cid);
	}
	public Car getCarDetails(long cid) {

		return carRepository.getCarDetails(cid);
	}
	
	public List<Car> findCarPosts(long uid){
		return carRepository.findBySellerId(uid);
	}
	
	public void deleteCar(long cid) {
		carRepository.deleteById(cid);
	}
	public String getCarDetailsById(String carId) {
		return carRepository.getCarDetailsById(carId);
	}
	public List<Car> search(String keyword) {
		return carRepository.search(keyword);
		
	}

	public CarBidding saveBid(CarBidding bid) {

		return bidRepository.save(bid);
	}

	public List<CarBidding> getAllBids() {

		List<CarBidding> allBid = bidRepository.findAll();

		List<CarBidding> sortedList = allBid.stream()
				.sorted(Comparator.comparingDouble(CarBidding::getBid).reversed()).collect(Collectors.toList());
		
		return sortedList;
	}
	
	public List<CarBidding> findUserBid(User user, Car car) {
		return bidRepository.findByUserAndCar(user, car);
	}
	
	public Optional<CarBidding> getBidInfo(long bid){
		return bidRepository.findById(bid);
	}
	
	public List<CarBidding> getUserBids(User user){
		return bidRepository.findByUser(user);
	}
	
	public void deleteBid(long bid) {
		bidRepository.deleteById(bid);
	}
	
	public List<Car> searchByBrand(String key) {
		return carRepository.searchByBrand(key);
	}
	
	public List<Car> searchByModel(String key) {
		return carRepository.searchByModel(key);
	}
	
	public List<Car> searchByPrice(String key) {
		return carRepository.searchByPrice(key);
	}
	
	public List<Car> searchByMake(String key) {
		return carRepository.searchByMake(key);
	}
	
	public List<Car> searchBySeller(String key) {
		return carRepository.searchBySeller(key);
	}

	public List<Car> searchByPriceRange(Long minimum, Long maximum) {
		return carRepository.searchByPriceRange(minimum, maximum);
	}
	
	public Long[] getBidId(Long cid) {
		return bidRepository.getBidId(cid);
	}
	
	public Long[] getBidIdByUser(Long uid) {
		return bidRepository.getBidIdByUser(uid);
	}
	
	public Long[] getCarId(Long uid) {
		return carRepository.getCarId(uid);
	}
}
