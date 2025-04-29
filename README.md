# 🍕 Food Delivery Web Management - "Pizzeria"

## 📄 **Description**

This project models the database for a web platform that enables customers to place online food delivery orders through **"QuickBite"**.

It handles data related to clients, orders, products, stores, and employees.

---

## 🧑‍🤝‍🧑 **Clients**

Each client record includes:
- First name
- Last name
- Address
- Postal code
- Locality (linked to a separate table)
- Province (linked to a separate table)
- Phone number

> 📌 Localities and provinces are stored in separate tables. A locality belongs to exactly one province, while a province can contain multiple localities.

---

## 🌍 **Locations**

- **Locality:** Each has a unique ID and name, and belongs to one province.
- **Province:** Each has a unique ID and name.

---

## 🛒 **Orders**

Each order record includes:
- Unique ID
- Date and time
- Whether the order is for delivery or store pickup
- Total price
- Quantity of each product type
- Associated client
- Store that manages the order
- (If delivery) Employee responsible for delivery and delivery timestamp

> 📌 One client can place multiple orders, but each order is made by only one client.

---

## 🍔 **Products**

Products can be:
- Pizzas
- Burgers
- Drinks

Each product includes:
- Name
- Description
- Image
- Price
- Type: `Pizza`, `Burger`, or `Drink`

---

## 🧾 **Categories (for Pizzas)**

- Each pizza belongs to **one** category.
- Each category can include **many** pizzas.
- Categories may change names throughout the year.

Each category includes:
- Unique ID
- Name

---

## 🏬 **Stores**

Each store record includes:
- Address
- Postal code
- Locality (linked to locality table)
- Province (linked through locality)

> 📌 One store can handle many orders, but each order is managed by a single store.

---

## 👨‍🍳 **Employees**

Each employee record includes:
- First name
- Last name
- NIF (Tax Identification Number)
- Phone number
- Role: `Cook` or `Delivery`
- Associated store

> 📌 One store can employ multiple workers, but each employee works in only one store.  
> For delivery orders, the delivery employee and delivery timestamp are stored.

---

## 🗄️ **Database Management**

- **Database system:** MySQL 8  
- **GUI client:** DBeaver 25.09.3

### 🛠️ **Connection Parameters**

- **Host:** `localhost`
- **Port:** `3306` (default MySQL port)
- **User:** `your_user`
- **Password:** `your_password`
- **Database name:** `pizzeria`

> 💡 Use DBeaver or any preferred SQL client to explore, manage, and query the database structure.
