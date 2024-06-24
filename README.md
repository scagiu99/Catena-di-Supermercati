# Catena di Supermercati - progetto Basi di Dati e Web
Project for the University Bachelor Degree Course of Basi di dati e web (A.A. 2019-2020)

The aim of the project is to design:

• an Entity-Relationship scheme and its E-R restructured equivalent

• the SQL database

• the PHP website to interact with the database

### APPLICATION DOMAIN DESCRIPTION

The aim of this project is the creation of a simplified version for the management of a chain of supermarkets belonging to the same city. They affect all aspects of the management of this type of activity: purchasing, sales, relationships with customers, relationships with suppliers, organization of personnel.

For each supermarket in the chain, the address, ordinary and extraordinary opening hours are of interest. Each supermarket in the chain is structured into a series of departments plus checkouts. Each department has a name, a manager and a series of employees, each with a specific job. For each employee we want to store all the main personal data (name, address, telephone number, tax code, date of birth, e-mail, ...) as well as the date of hiring. Each employee works in a specific department and has a particular level (which determines their salary together with their length of service).

The supermarket offers a series of products for sale of which we want to memorize the name, category, retail price, expiry date, department in which it is put on sale, quantity of product present in the warehouse and minimum threshold (determined by experience) above under which the product must be reordered. Each product is also assigned an internal code. Some products are not purchased directly from suppliers, but "assembled" or "prepared" directly in the supermarket from a series of raw materials (which in turn are products prepared in the supermarket or available in the warehouse). For these "assembled" products we also want to know all the component "ingredient" products and the quantity of them necessary for their preparation.

The database contains a list of suppliers to which the supermarket refers. For each supplier we want to know the company name, VAT number, the payment method requested (e.g. bank transfer within 60 days), as well as the address and telephone number and e-mail. Each supplier can supply, at a particular price, one or more of the products sold by the supermarket, identifying them with an internal code (different from the one used by the supermarket warehouse) to be indicated in orders. For each product replenished, the supplier also indicates an estimate of the average time needed for delivery.

Customers of the supermarket chain, at their discretion, can join the loyalty program, in which case they come into possession of a loyalty card that allows them to accumulate points with purchases and obtain discounts or gifts. Customers with a card are registered in the database with their personal data and card number, and each of them is associated with the number of points currently accumulated. For each prize in the catalogue, we want to know the number of points needed to obtain it for free. Points are obtained by purchasing particular products. We are therefore interested in maintaining a list of products, which may vary over time, which participate in the collection of points, together with the number of points obtainable with their purchase. Every time the customer collects a prize, the corresponding points are deducted from his card.

The cash registers in our supermarket are directly interfaced with the database. Every time a product is sold, the database records the sales data (receipt number, product sold, price at which it was sold) together with the code of the customer to whom it was sold, if this is the holder of a card . At the same time, the availability of the product in stock and the number of customer points are updated (if the product in question was entitled to collection points).
