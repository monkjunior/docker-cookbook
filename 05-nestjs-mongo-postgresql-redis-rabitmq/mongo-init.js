db.createUser(
    {
        user: "superfanz",
        pwd: "superfanz2019",
        roles: [
            {
                role: "readWrite",
                db: "superfanz"
            }
        ]
    }
);
