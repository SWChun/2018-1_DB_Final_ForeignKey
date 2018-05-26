# 2018-1_DB_Final_ForeignKey

## Library Management System

Team Member: 21200758 SungWoo Chun, 21300461 SangHum Woo, 21400205 JinMo Kim, 21300649 JunYong Jang

## How to test our program ##

### Front-end testing ###
  Our program is web-based program, so you do not need to install anything for user-side testing.
  Just visit the following URL, and you will see our running program.
  http://119.202.32.238/db/2018-1_DB_Final_ForeignKey/index.html
  In case the website is not visitable because I have turn off the server computer, contact one of our team member, please.

### Back-end testing ###
If you want to test the program with local database, you must do the following three things:
  * install php and apache server and place the source code files in htdocs folder inside the server directory.
  * import library.sql file to build a new database in your mySQL
  * change the login information inside dbconfig.php. For example, the password is current set as the password to login into our own database, so you must change this to your own in order to test this program running on your own database.
  


### Major Test cases ###
<br>
Test cases are detailed description of how each of the attributes and data changes in each scenario.
<br>
#### Admin side ####
##### Managing User#####
When adding a new user, you can check whether the new user has been added in the userlist.<br>
<ul>
  <li>If you modify the user information, you can check that the user has been updated in the userlist as the admin has modified it.
  <li>If you delete the user information, you can check if the user is deleted from the userlist.
  <li>If the admin confirms a returned book from a user, the book is deleted from the rental status of the user, unless it has remaining overdue. Also, the user's borrowed book attribute is reduced by one and the quantity of the book is also increased by one.
</ul>
<br>
##### Managing Book #####
<ul>
  <li>If you add a new book, you can see the added book in the booklist.
  <li>When you update the contents of the book, you can check whether it is updated as admin input.
  <li>When deleting a book, make sure that the book is deleted from the booklist. Also the rental record containing the book should be deleted.
</ul>
	
#### User side ####
<ul>
<li>If you rent a book (if the total number of books borrowed is less than five or there is no overdue), the user borrowed book attribute will increase by one and the book borrowed by the user will appear on the user detail page. Also, the quantity of borrowed books is reduced by one.
<li>If a user who tries to borrow a new book has remaining overdue or borrowed more than five books, the borrow button is disabled. 
</ul>
