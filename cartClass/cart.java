import java.util.HashMap;

public class cart {
	HashMap <String, Integer> cartItems;
	public cart(){
		cartItems = new HashMap<>();
	}
	public HashMap getCartItems(){
		return cartItems;
	}
	public void addToCart(String itemId, int price){
		cartItems.put(itemId, price);
	}
}