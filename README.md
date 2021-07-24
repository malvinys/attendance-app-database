# attendance-app-database
This project is a configuration for database Attendance App

# How to run 
1. You can install mongo via docker or manual installation from https://www.mongodb.com/try/download/community
2. Create database
    - Connect into mongo using GUI like `Compass`, i'm using `Navicat`
    - Create Database `attendance-app`
3. Create user mongo
    - Open terminal mongo, if you using windows open `mongo.exe` 
    - In terminal, run `use attendance-app`
    - And then, run 
      ```
        db.createUser({
          user: "adminattendance",
          pwd: "secret",
          roles:[{role: "readWrite" , db:"attendance-app"}]
        })
      ```
 4. Create collection
    - Open your GUI
    - Run collection `attendance-app.sql`
