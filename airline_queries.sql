use airline;

# Query 1 find agents with markup greater than 3 percent
select AgentNo, CompanyName from Agent 
where Markup > 3;

#Query 2 find Count of Agnet booked and Customer Booked Tickets
select Type,count(Type) from Ticket
group by Type;

# Query 3 Find Customer Type and Date of Booking of each ticket
select CustType,DateOfBooking
from customer c , ticket t
where c.CustId = t.CustId;

# Query 4 Show aircraft id and Aircraft type where fare greater than average fare
select AirplaneId, AircraftType
from aeroplane
where Fare > (select avg(Fare) from aeroplane);

# Query 5 Show all airports in united states where country is United States and ordered in desceding order
SELECT Code, Name
FROM Airport
WHERE Country= 'United States'
ORDER BY Code Desc;

# Query 6 Show Cutomer Id and Count of Trips grouped by customer Id where trip count greater than 2 and ordered desc
SELECT custID, COUNT(*) AS trip_count
FROM Passenger
GROUP BY custID
HAVING trip_count > 2
ORDER BY trip_count DESC;


/*
Query to retrieve all the customers who have booked a ticket but have not yet traveled:
sql
Copy code
SELECT c.cust_id, c.cust_type
FROM Customer c
INNER JOIN Tickets t ON c.cust_id = t.custID
INNER JOIN Passenger p ON t.ticket_no = p.PNR
WHERE p.trip_count = 0;
Query to retrieve the details of all the passengers who have traveled on a specific route:
css
Copy code
SELECT p.PNR, p.trip_count, a.Origin, a.Destination
FROM Passenger p
INNER JOIN Tickets t ON p.PNR = t.ticket_no
INNER JOIN Route r ON t.custID = r.custID
INNER JOIN Aeroplane a ON r.Aeroplane_id = a.Aeroplane_id
WHERE a.Origin = 'Origin_Code' AND a.Destination = 'Destination_Code';
Query to retrieve the total number of tickets booked by each customer:
vbnet
Copy code
SELECT c.cust_id, COUNT(*) AS total_tickets_booked
FROM Customer c
INNER JOIN Tickets t ON c.cust_id = t.custID
GROUP BY c.cust_id;
Query to retrieve the details of all the tickets booked by a specific customer:
vbnet
Copy code
SELECT t.ticket_no, t.type, t.Date_of_booking, s.Seat_no, s.class, a.Origin, a.Destination
FROM Tickets t
INNER JOIN Customer c ON t.custID = c.cust_id
INNER JOIN Seat s ON t.ticket_no = s.ticket_no
INNER JOIN Aeroplane a ON s.aeroplaneid = a.Aeroplane_id
WHERE c.cust_id = 'customer_id';
Query to retrieve the details of all the agents who have booked tickets for customers and their total markup:
vbnet
Copy code
SELECT a.agent_no, a.Markup, a.companyname, COUNT(*) AS total_tickets_booked
FROM Agent a
INNER JOIN Customer c ON a.custID = c.cust_id
INNER JOIN Tickets t ON c.cust_id = t.custID
GROUP BY a.agent_no;
Query to retrieve the details of all the aeroplanes that have flown to a specific airport:
sql
Copy code
SELECT a.Aeroplane_id, a.Aircraft_type, r.Distance, r.Origin, r.Destination
FROM Aeroplane a
INNER JOIN Route r ON a.Aeroplane_id = r.Aeroplane_id
INNER JOIN Airport ap ON r.Destination = ap.Code
WHERE ap.Code = 'airport_code';
Query to retrieve the details of all the customers who have not booked any tickets:
sql
Copy code
SELECT c.cust_id, c.cust_type
FROM Customer c
LEFT JOIN Tickets t ON c.cust_id = t.custID
WHERE t.ticket_no IS NULL;
*/