-- =========================================
-- PHOTOGRAPHY BUSINESS ANALYSIS QUERIES
-- =========================================

-- 1. Total Revenue
SELECT 
    SUM(TotalAmount) AS TotalRevenue
FROM Orders;


-- 2. Total Bookings
SELECT 
    COUNT(*) AS TotalBookings
FROM Bookings;


-- 3. Average Booking Value
SELECT 
    AVG(TotalAmount) AS AvgBookingValue
FROM Orders;


-- 4. Revenue by City
SELECT 
    b.Location,
    SUM(o.TotalAmount) AS TotalRevenue
FROM Orders o
JOIN Bookings b ON o.BookingID = b.BookingID
GROUP BY b.Location
ORDER BY TotalRevenue DESC;


-- 5. Bookings by Session Type
SELECT 
    s.SessionType,
    COUNT(*) AS TotalBookings
FROM Bookings b
JOIN Sessions s ON b.SessionID = s.SessionID
GROUP BY s.SessionType
ORDER BY TotalBookings DESC;


-- 6. Revenue by Session Type
SELECT 
    s.SessionType,
    SUM(o.TotalAmount) AS TotalRevenue
FROM Orders o
JOIN Bookings b ON o.BookingID = b.BookingID
JOIN Sessions s ON b.SessionID = s.SessionID
GROUP BY s.SessionType
ORDER BY TotalRevenue DESC;


-- 7. Top Customers by Spending
SELECT 
    c.FirstName,
    c.LastName,
    SUM(o.TotalAmount) AS TotalSpent
FROM Clients c
JOIN Bookings b ON c.ClientID = b.ClientID
JOIN Orders o ON b.BookingID = o.BookingID
GROUP BY c.FirstName, c.LastName
ORDER BY TotalSpent DESC;


-- 8. Monthly Booking Trends
SELECT 
    FORMAT(BookingDate, 'yyyy-MM') AS Month,
    COUNT(*) AS TotalBookings
FROM Bookings
GROUP BY FORMAT(BookingDate, 'yyyy-MM')
ORDER BY Month;


-- 9. Monthly Revenue Trend
SELECT 
    FORMAT(o.OrderDate, 'yyyy-MM') AS Month,
    SUM(o.TotalAmount) AS Revenue
FROM Orders o
GROUP BY FORMAT(o.OrderDate, 'yyyy-MM')
ORDER BY Month;


-- 10. Photographer Performance
SELECT 
    p.FirstName,
    p.LastName,
    COUNT(b.BookingID) AS TotalSessions,
    SUM(o.TotalAmount) AS TotalRevenue
FROM Photographers p
JOIN Bookings b ON p.PhotographerID = b.PhotographerID
LEFT JOIN Orders o ON b.BookingID = o.BookingID
GROUP BY p.FirstName, p.LastName
ORDER BY TotalRevenue DESC;
