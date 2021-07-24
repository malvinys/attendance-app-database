/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MongoDB
 Source Server Version : 40406
 Source Host           : localhost:27017
 Source Schema         : attendance-app

 Target Server Type    : MongoDB
 Target Server Version : 40406
 File Encoding         : 65001

 Date: 24/07/2021 17:31:53
*/


// ----------------------------
// Collection structure for lookupactivities
// ----------------------------
db.getCollection("lookupactivities").drop();
db.createCollection("lookupactivities",{
    validator: {
        $jsonSchema: {
            properties: {
                name: {
                    bsonType: "string"
                },
                status: {
                    bsonType: "number"
                },
                createdBy: {
                    bsonType: "string"
                },
                createdAt: {
                    bsonType: "date"
                },
                updatedBy: {
                    bsonType: "string"
                },
                updatedAt: {
                    bsonType: "date"
                },
                deletedBy: {
                    bsonType: "string"
                },
                deletedAt: {
                    bsonType: "date"
                }
            },
            required: [
                "name",
                "status",
                "createdBy",
                "createdAt"
            ]
        }
    },
    validationLevel: "strict",
    validationAction: "error"
});

// ----------------------------
// Documents of lookupactivities
// ----------------------------
db.getCollection("lookupactivities").insert([ {
    _id: ObjectId("60eaa4b9eed4de2264002d58"),
    name: "Check-In",
    status: 1,
    createdBy: "1",
    createdAt: ISODate("2021-07-11T07:58:35.000Z")
} ]);
db.getCollection("lookupactivities").insert([ {
    _id: ObjectId("60eaa5aceed4de2264002d5e"),
    name: "Check-Out",
    status: 1,
    createdBy: "1",
    createdAt: ISODate("2021-07-11T07:58:35.000Z")
} ]);

// ----------------------------
// Collection structure for roles
// ----------------------------
db.getCollection("roles").drop();
db.createCollection("roles",{
    validator: {
        $jsonSchema: {
            properties: {
                name: {
                    bsonType: "string"
                },
                status: {
                    bsonType: "number"
                },
                createdBy: {
                    bsonType: "string"
                },
                createdAt: {
                    bsonType: "date"
                },
                updatedBy: {
                    bsonType: "string"
                },
                updatedAt: {
                    bsonType: "date"
                },
                deletedBy: {
                    bsonType: "string"
                },
                deletedAt: {
                    bsonType: "date"
                }
            },
            required: [
                "name",
                "status",
                "createdBy",
                "createdAt"
            ]
        }
    },
    validationLevel: "strict",
    validationAction: "error"
});

// ----------------------------
// Documents of roles
// ----------------------------
db.getCollection("roles").insert([ {
    _id: ObjectId("60fa827feed4de28c0003442"),
    name: "Super Admin",
    status: 1,
    createdBy: "1",
    createdAt: ISODate("2021-07-23T08:48:54.000Z")
} ]);
db.getCollection("roles").insert([ {
    _id: ObjectId("60fa82a3eed4de28c0003444"),
    name: "General User",
    status: 1,
    createdBy: "1",
    createdAt: ISODate("2021-07-23T08:48:54.000Z")
} ]);

// ----------------------------
// Collection structure for userattendances
// ----------------------------
db.getCollection("userattendances").drop();
db.createCollection("userattendances",{
    validator: {
        $jsonSchema: {
            properties: {
                userId: {
                    bsonType: "string"
                },
                lookupActivitiesId: {
                    bsonType: "string"
                },
                lookupActivitiesName: {
                    bsonType: "string"
                },
                pathPhoto: {
                    bsonType: "string"
                },
                latitude: {
                    bsonType: "string"
                },
                longitude: {
                    bsonType: "string"
                },
                status: {
                    bsonType: "number"
                },
                createdBy: {
                    bsonType: "string"
                },
                createdAt: {
                    bsonType: "date"
                }
            },
            required: [
                "userId",
                "lookupActivitiesId",
                "lookupActivitiesName",
                "pathPhoto",
                "latitude",
                "longitude",
                "status",
                "createdBy",
                "createdAt"
            ]
        }
    },
    validationLevel: "strict",
    validationAction: "error"
});

// ----------------------------
// Documents of userattendances
// ----------------------------
db.getCollection("userattendances").insert([ {
    _id: ObjectId("60fb8c39b63db63238daf4e8"),
    userId: "60fa82d4eed4de28c0003445",
    lookupActivitiesId: "60eaa4b9eed4de2264002d58",
    lookupActivitiesName: "Check-In",
    pathPhoto: "/path/foto.jpg",
    latitude: "123456",
    longitude: "-123456",
    status: NumberInt("1"),
    createdBy: "60fa82d4eed4de28c0003445",
    createdAt: ISODate("2021-07-24T03:42:49.827Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("userattendances").insert([ {
    _id: ObjectId("60fb8c4b6282012eb0986e12"),
    userId: "60fa82d4eed4de28c0003445",
    lookupActivitiesId: "60eaa4b9eed4de2264002d58",
    lookupActivitiesName: "Check-In",
    pathPhoto: "/path/foto.jpg",
    latitude: "123456",
    longitude: "-123456",
    status: NumberInt("1"),
    createdBy: "60fa82d4eed4de28c0003445",
    createdAt: ISODate("2021-07-24T03:43:07.315Z"),
    __v: NumberInt("0")
} ]);

// ----------------------------
// Collection structure for users
// ----------------------------
db.getCollection("users").drop();
db.createCollection("users",{
    validator: {
        $jsonSchema: {
            properties: {
                email: {
                    bsonType: "string",
                    description: "Email of user",
                    maxLength: 100,
                    minLength: 10
                },
                password: {
                    bsonType: "string",
                    description: "Password of user"
                },
                name: {
                    bsonType: "string",
                    description: "Name of user"
                },
                rolesId: {
                    bsonType: "string",
                    description: "Role access of user"
                },
                rolesName: {
                    bsonType: "string",
                    description: "Role access name of user"
                },
                status: {
                    bsonType: "number",
                    description: "Status active of user"
                },
                createdBy: {
                    bsonType: "string",
                    description: "Created by of user"
                },
                createdAt: {
                    bsonType: "date",
                    description: "Created at of user"
                },
                updatedBy: {
                    bsonType: "string"
                },
                updatedAt: {
                    bsonType: "date"
                },
                deletedBy: {
                    bsonType: "string"
                },
                deletedAt: {
                    bsonType: "date"
                }
            },
            required: [
                "email",
                "password",
                "name",
                "rolesId",
                "rolesName",
                "status",
                "createdBy",
                "createdAt"
            ]
        }
    },
    validationLevel: "strict",
    validationAction: "error"
});

// ----------------------------
// Documents of users
// ----------------------------
db.getCollection("users").insert([ {
    _id: ObjectId("60eaa057eed4de2264002d57"),
    email: "administrator@attendanceapp.com",
    password: "$10$C05IHYeeoUoMY/Rf2N/MK.qGz6mZ0jg6JOddxHoBhFlnaRvvs.d8e",
    name: "Administrator",
    rolesId: "60fa827feed4de28c0003442",
    rolesName: "Super Admin",
    status: 1,
    createdBy: "1",
    createdAt: ISODate("2021-07-11T07:40:07.311Z")
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("60fa82d4eed4de28c0003445"),
    email: "malvinyosef@gmail.com",
    password: "$2b$10$C05IHYeeoUoMY/Rf2N/MK.qGz6mZ0jg6JOddxHoBhFlnaRvvs.d8e",
    name: "Malvin Yosef Saputra",
    rolesId: "60fa82a3eed4de28c0003444",
    rolesName: "General User",
    status: 1,
    createdBy: "1",
    createdAt: ISODate("2021-07-23T08:50:11.000Z")
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("60fbe2bb1ca24b3d0c66cbf3"),
    email: "malvinys2@gmail.com",
    password: "$2b$10$f4UdYDiE0bRkQ.U3ky5yxuLmgLejHdI4ArKOWDIiW/bvtJSpVWnDm",
    name: "Malvin Yosef 2",
    rolesId: "60fa82a3eed4de28c0003444",
    rolesName: "General User",
    status: NumberInt("0"),
    createdBy: "60eaa057eed4de2264002d57",
    createdAt: ISODate("2021-07-24T09:51:55.331Z"),
    __v: NumberInt("0"),
    updatedAt: ISODate("2021-07-24T10:02:24.44Z"),
    updatedBy: "60eaa057eed4de2264002d57",
    deletedAt: ISODate("2021-07-24T10:19:22.067Z"),
    deletedBy: "60eaa057eed4de2264002d57"
} ]);
