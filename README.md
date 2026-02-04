# PC-Manager
📌 Project Overview
PC Manager is a desktop application developed in C# using Visual Studio, designed to manage a database of computer components. The application provides a centralized interface for organizing hardware parts by categories, managing suppliers, and tracking technical specifications.

🛠 Tech Stack
Language: C#

Framework: .NET (WinForms)

Database: Microsoft SQL Server

Tools: Visual Studio, SQL Server Management Studio (SSMS)

🚀 Key Features
Inventory Tracking: Full CRUD (Create, Read, Update, Delete) operations for computer parts (CPUs, GPUs, RAM, etc.).

Data Organization: Components are structured by Categories and Suppliers for better management.

Favorites System: Ability to bookmark specific parts for quick access.

Technical Specifications: Detailed storage of hardware attributes including name, price, and stock levels.

Utilities Class: Implementation of a custom Utilities class for:

Input validation and error handling.

Database connection management.

Safe data writing and retrieval (GetDataFromDb, WriteDataToDb).

UI helper functions (clearing text boxes, restricting input to numbers).

📊 Database Structure
The project uses a relational database with the following main tables:

PieseTbl (Components)

CategoriiTbl (Categories)

FurnizoriTbl (Suppliers)

FavoriteTbl (Favorites)

💻 Technical Implementation
Object-Oriented Programming (OOP): The project follows clean coding standards using classes and modular functions.

SQL Integration: Secure connection strings and optimized queries for real-time data synchronization between the UI and the SQL Server.

User Interface: A modern, color-themed dashboard designed for ease of use.

⚙️ How to Run
Clone the repository.

Set up the database using the provided .sql script (if available).

Update the connection string in the Utilities class to match your local SQL Server instance.

Open the .sln file in Visual Studio and run the project.
