import java.util.Arrays;
import java.util.Comparator;

class Product {
    int productId;
    String productName;
    String category;

    public Product(int productId, String productName, String category) {
        this.productId = productId;
        this.productName = productName;
        this.category = category;
    }

    public String toString() {
        return "[" + productId + ", " + productName + ", " + category + "]";
    }
}

public class ECommerceSearchExample {

    // Step 3: Linear Search
    public static Product linearSearch(Product[] products, String name) {
        for (Product product : products) {
            if (product.productName.equalsIgnoreCase(name)) {
                return product;
            }
        }
        return null;
    }

    // Step 3: Binary Search
    public static Product binarySearch(Product[] products, String name) {
        int left = 0;
        int right = products.length - 1;

        while (left <= right) {
            int mid = (left + right) / 2;
            int comparison = products[mid].productName.compareToIgnoreCase(name);

            if (comparison == 0) {
                return products[mid];
            } else if (comparison < 0) {
                left = mid + 1;
            } else {
                right = mid - 1;
            }
        }
        return null;
    }

    // Main method for testing
    public static void main(String[] args) {
        // Step 2: Setup Product array
        Product[] productList = {
            new Product(101, "Laptop", "Electronics"),
            new Product(102, "Shoes", "Footwear"),
            new Product(103, "Phone", "Electronics"),
            new Product(104, "Watch", "Accessories"),
            new Product(105, "Backpack", "Bags")
        };

        // Step 4: Sort array for binary search
        Product[] sortedProductList = Arrays.copyOf(productList, productList.length);
        Arrays.sort(sortedProductList, Comparator.comparing(p -> p.productName.toLowerCase()));

        // Perform Linear Search
        String searchTerm = "Phone";
        Product resultLinear = linearSearch(productList, searchTerm);
        System.out.println("Linear Search Result for '" + searchTerm + "': " + resultLinear);

        // Perform Binary Search
        Product resultBinary = binarySearch(sortedProductList, searchTerm);
        System.out.println("Binary Search Result for '" + searchTerm + "': " + resultBinary);

        
    }
}
