/*Create the following tables : 
Book(accession-no, title, publisher, year, date-of-purchase, status) 
Book-Place(accession-no, rack-id, rack-position) 
Member(member-id, name, number-of-books-issued, max-limit, status) 
Book-issue(accession-no, member-id, date-of-issue) 
(a) Insert  values that  to accept the data from the user with appropriate validation checks. 
(b) Write a PL/SQL procedure to issue the book. 
Write a trigger to set the status of a book neither to "lost" which is neither issued nor in the library.*/