package reusable.java;

import java.util.HashMap;
import java.util.Map;

public class JavaUtils {
	
	public static Map<String, String> getMapData() {
		Map<String, String> map = new HashMap<>();
		map.put("IN", "India");
		map.put("US", "United States");
		return map;
	}

}
