/* proj09.java searches the  values in Java linked lists.
 *
 * Begun by: Dr. Adams, CS 214 at Calvin College.
 * Completed by: Shion Fukuzawa, CS 214 at Calvin College. 
 * Date: June 23, 2018
 */

import java.util.Iterator;
import java.util.LinkedList;
import java.util.Collections;

public class proj09 {

  public static void main(String [] args) {
    // define list1, list2, list3 here ...
    LinkedList<Integer> list1 = new LinkedList<Integer>();
    LinkedList<Integer> list2 = new LinkedList<Integer>();
    LinkedList<Integer> list3 = new LinkedList<Integer>();
    LinkedList<Integer> list4 = new LinkedList<Integer>();

    list1.add(99);    // 99, 88, 77, 66, 55
    list1.add(88);    // max is first
    list1.add(77);
    list1.add(66);  
    list1.add(55);
    System.out.println("Max of list1: " + Collections.max(list1));


    list2.add(55);    // 55, 66, 77, 88, 99
    list2.add(66);    // max is last
    list2.add(77);  
    list2.add(88);  
    list2.add(99);
    System.out.println("Max of list2: " + Collections.max(list2));

  
    list3.add(55);    // 55, 77, 99, 88, 66
    list3.add(77);    // max is in the middle
    list3.add(99);  
    list3.add(88);  
    list3.add(66);
    System.out.println("Max of list3: " + Collections.max(list3));

    list4.add(77);
    list4.add(55);
    list4.add(66);
    list4.add(88);
    list4.add(100);
    System.out.println("Max of list4: " + Collections.max(list4)); 

  
    print(list1); 
    print(list2); 
    print(list3);
    print(list4);

    System.out.println("Using search function to locate position of 99: ");
    System.out.print("list1's item 99 is at position: ");
    System.out.println(search(list1, 99));
    System.out.print("list2's item 99 is at position: ");
    System.out.println(search(list2, 99));
    System.out.print("list3's item 99 is at position: ");
    System.out.println(search(list3, 99));
    System.out.print("list4's item 99 is at position: ");
    System.out.println(search(list4, 99));


   // display maxima of the 3 lists...
  }

  /** print() displays a LinkedList on the console.
   *
   * @param: aList, a LinkedList<Integer>
   * 
   * Postcondition: the Integer values in aList
   *                 have been displayed to System.out,
   *                 separated by spaces.
   */
    public static void print(LinkedList<Integer> aList) {
	Iterator<Integer> listIterator = aList.iterator();
	while (listIterator.hasNext()){
	    System.out.print(listIterator.next() + " ");
	}
	System.out.print('\n');
   }

    // search() searches through list to find posisition of item
    //
    // @param: aList, a LinkedList<Integer>, and aValue, an Integer
    // Return: Position of item in list, an integer
    //

    
    public static int search(LinkedList<Integer> aList, Integer aValue){
	Iterator<Integer> listIterator = aList.iterator();
	int position = -1;
	int index = 0;
	while (listIterator.hasNext()){
	    if( aValue == listIterator.next()){
		 position = index;
		 return position;
	    }
	    index++;
	}
	return position;
    }  
}
