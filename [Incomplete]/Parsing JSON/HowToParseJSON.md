Tutorials
=========

Parsing JSON is tricky, here is a brief introduction on how to parse JSON in swift

----

For this tutorial we will be using some sample JSON

```
[
    {
        "id" : 0,
        "user" : {
            "first_name" : "Jeff",
            "last_name" : "Chavez",
        },
        "motto" : "just do it"
    },
    {
        "id" : 1,
        "user" : {
            "first_name" : "Kevin",
            "last_name" : "Pham",
        },
        "motto" : "crave that mineral"
    },
    }
        "id" : 2,
        "user" : {
            "first_name" : "Brad"
            "last_name" : "Johsnon"
        },
        "motto" : "u mad bro?"
    }
]

```
Before we start parsing let's look at the JSON and break down it's structure


It looks like there are three dictionaries inside of an array.
Inside of each dictionary, there are three key-value pairs: `id`, `user`, and `motto`.
Inside of `user` there is another dictionary, with two key value pairs: `first_name`, and `last_name`.

Now that we have broken down the structure of this JSON, we can begin parsing. The first thing we want to do call the method 

```
class CFStaff {
    var id : String
    var firstName : String
    var lastName : String
    var motto : String
}
```

Note that our `user` class value is not a string like the others, rather a dictionary with string types. This is because the `first_name` and `last_name` properties are located inside of the `user` dictionary. 

Now we are ready to initialize the properties of our class. 

```
class CFStaff {
    var id : String
    var firstName : String
    var lastName : String
    var motto : String

    init (jsonDictionary: [String : String]) {
        self.id = jsonDictionary["id"] as String
        let user = jsonDictionary["user"] as [String : String]
        self.firstName = user["first_name"] as String
        self.lastName = user["last_name"] as String
        self.motto = jsonDictionary["motto"] as String
    }
}
```

Here we are initializing our `CFStaff` class with a dictionary of string types. Then we assign each property its corresponding value from `jsonDictionary`. Note how `first_name` and `last_name` are receiving values from the `user` dictionary, not `jsonDictionary` like the other properties.















