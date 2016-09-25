package scartPackage;

import java.util.HashMap;

public class Scart {
	HashMap <String, Integer> cartItems;
	public Scart(){
		cartItems = new HashMap<>();
	}
	public HashMap getCartItems(){
		return cartItems;
	}
	public void addToCart(String itemId, int price){
		cartItems.put(itemId, price);
	}
}