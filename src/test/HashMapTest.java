package test;

import java.util.HashMap;

public class HashMapTest {
	public static void main(String[] args) {

		HashMap<String, Integer> chm = new HashMap<String, Integer>();

		// 값 입력
		chm.put("a", 0);
		chm.putIfAbsent("a", 1);
		chm.putIfAbsent("a", 2);
		chm.putIfAbsent("a", 3);
		chm.putIfAbsent("b", 2);
		chm.

		for (String key : chm.keySet()) {
			//System.out.println(chm.get(s)); // print -1, 0
			System.out.println("key = " + key + " value = " + chm.get(key)); // print -1, 0
		}
	}

}
