use modernartdb

movements
db.movements.insert([
{"movement":"Pluralism","image":"pluralism.jpg"},
{"movement":"Cubism","image":"cubism.jpg"},
{"movement":"Pop Art","image":"pop.jpg"},
{"movement":"Abstract Expressionism","image":"abstract.jpg"},
{"movement":"Surrealism","image":"surrealism.jpg"}])

artists
db.artists.insert([{"artist_fname":"Kenneth", "artist_lname":"Noland"},
{"artist_fname":"Ellsworth","artist_lname":"Kelly"},
{"artist_fname":"Pablo","artist_lname":"Picasso"},
{"artist_fname":"Fernand", "artist_lname":"Léger"},
{"artist_fname":"Andy","artist_lname":"Warhol"},
{"artist_fname":"Marcel", "artist_lname":"Duchamp"},
{"artist_fname":"Mark", "artist_lname":"Rothko"},
{"artist_fname":"Jackson","artist_lname":"Pollock"},
{"artist_fname":"René","artist_lname":"Magritte"},
{"artist_fname":"Man","artist_lname":"Ray"}
])

paintings
db.paintings.insert([{"title":"First","image":"first.jpg","year":"1958"},
{"title":"Red Blue","image":"blue.jpg","year":"1964"},
{"title":"The Three Dancers","image":"dancers.jpg","year":"1925"},
{"title":"Contrasts of Forms","image":"forms.jpg","year":"1913"},
{"title":"Shot Light Blue Marilyn", "image":"marilyn.jpg","year":"1964"},
{"title":"Fountian","image":"fountian.jpg","year":"1917"},
{"title":"No. 61", "image":"61.jpg","year":"1953"},
{"title":"The Flame", "image":"flame.jpg","year":"1937"},
{"title":"Natural Graces","image":"graces.jpg","year":"1963"},
{"title":"The Rope Dancer Accompanies Herself with Her Shadows","image":"shadows.jpg","year":"1916"}
])

db.movements.update({"_id":ObjectId("58ac7180b3248e0f045c0513")},{$set:{"artists":[ObjectId("58ac71b2b3248e0f045c0518"),ObjectId("58ac71b2b3248e0f045c0519")]}},{upsert:false,multi:true})
db.movements.update({"_id":ObjectId("58ac7180b3248e0f045c0514")},{$set:{"artists":[ObjectId("58ac71b2b3248e0f045c051a"),ObjectId("58ac71b2b3248e0f045c051b")]}},{upsert:false,multi:true})
db.movements.update({"_id":ObjectId("58ac7180b3248e0f045c0515")},{$set:{"artists":[ObjectId("58ac71b2b3248e0f045c051c"),ObjectId("58ac71b2b3248e0f045c051d")]}},{upsert:false,multi:true})
db.movements.update({"_id":ObjectId("58ac7180b3248e0f045c0516")},{$set:{"artists":[ObjectId("58ac71b2b3248e0f045c051e"),ObjectId("58ac71b2b3248e0f045c051f")]}},{upsert:false,multi:true})
db.movements.update({"_id":ObjectId("58ac7180b3248e0f045c0517")},{$set:{"artists":[ObjectId("58ac71b2b3248e0f045c0520"),ObjectId("58ac71b2b3248e0f045c0521")]}},{upsert:false,multi:true})

db.movements.update({"_id":ObjectId("58ac7180b3248e0f045c0513")},{$set:{"paintings":[ObjectId("58ac7931bf5c68adf8683be4"),ObjectId("58ac7931bf5c68adf8683be5")]}},{upsert:false,multi:true})
db.movements.update({"_id":ObjectId("58ac7180b3248e0f045c0514")},{$set:{"paintings":[ObjectId("58ac7931bf5c68adf8683be6"),ObjectId("58ac7931bf5c68adf8683be7")]}},{upsert:false,multi:true})
db.movements.update({"_id":ObjectId("58ac7180b3248e0f045c0515")},{$set:{"paintings":[ObjectId("58ac7931bf5c68adf8683be8"),ObjectId("58ac7931bf5c68adf8683be9")]}},{upsert:false,multi:true})
db.movements.update({"_id":ObjectId("58ac7180b3248e0f045c0516")},{$set:{"paintings":[ObjectId("58ac7931bf5c68adf8683bea"),ObjectId("58ac7931bf5c68adf8683beb")]}},{upsert:false,multi:true})
db.movements.update({"_id":ObjectId("58ac7180b3248e0f045c0517")},{$set:{"paintings":[ObjectId("58ac7931bf5c68adf8683bec"),ObjectId("58ac7931bf5c68adf8683bed")]}},{upsert:false,multi:true})




db.artists.update({"_id":ObjectId("58ac71b2b3248e0f045c0518")},{$set:{"movements":[ObjectId("58ac7180b3248e0f045c0513")]}},{upsert:false, multi:true})
db.artists.update({"_id":ObjectId("58ac71b2b3248e0f045c0519")},{$set:{"movements":[ObjectId("58ac7180b3248e0f045c0513")]}},{upsert:false, multi:true})

db.artists.update({"_id":ObjectId("58ac71b2b3248e0f045c051a")},{$set:{"movements":[ObjectId("58ac7180b3248e0f045c0514")]}},{upsert:false, multi:true})
db.artists.update({"_id":ObjectId("58ac71b2b3248e0f045c051b")},{$set:{"movements":[ObjectId("58ac7180b3248e0f045c0514")]}},{upsert:false, multi:true})

db.artists.update({"_id":ObjectId("58ac71b2b3248e0f045c051c")},{$set:{"movements":[ObjectId("58ac7180b3248e0f045c0515")]}},{upsert:false, multi:true})
db.artists.update({"_id":ObjectId("58ac71b2b3248e0f045c051d")},{$set:{"movements":[ObjectId("58ac7180b3248e0f045c0515")]}},{upsert:false, multi:true})

db.artists.update({"_id":ObjectId("58ac71b2b3248e0f045c051e")},{$set:{"movements":[ObjectId("58ac7180b3248e0f045c0516")]}},{upsert:false, multi:true})
db.artists.update({"_id":ObjectId("58ac71b2b3248e0f045c051f")},{$set:{"movements":[ObjectId("58ac7180b3248e0f045c0516")]}},{upsert:false, multi:true})

db.artists.update({"_id":ObjectId("58ac71b2b3248e0f045c0520")},{$set:{"movements":[ObjectId("58ac7180b3248e0f045c0517")]}},{upsert:false, multi:true})
db.artists.update({"_id":ObjectId("58ac71b2b3248e0f045c0521")},{$set:{"movements":[ObjectId("58ac7180b3248e0f045c0517")]}},{upsert:false, multi:true})

db.paintings.update({"_id":ObjectId("58ac7931bf5c68adf8683be4")},{$set:{"artists":[ObjectId("58ac71b2b3248e0f045c0518")]}},{upsert:false,multi:true})
db.paintings.update({"_id":ObjectId("58ac7931bf5c68adf8683be5")},{$set:{"artists":[ObjectId("58ac71b2b3248e0f045c0519")]}},{upsert:false,multi:true})
db.paintings.update({"_id":ObjectId("58ac7931bf5c68adf8683be6")},{$set:{"artists":[ObjectId("58ac71b2b3248e0f045c051a")]}},{upsert:false,multi:true})
db.paintings.update({"_id":ObjectId("58ac7931bf5c68adf8683be7")},{$set:{"artists":[ObjectId("58ac71b2b3248e0f045c051b")]}},{upsert:false,multi:true})
db.paintings.update({"_id":ObjectId("58ac7931bf5c68adf8683be8")},{$set:{"artists":[ObjectId("58ac71b2b3248e0f045c051c")]}},{upsert:false,multi:true})
db.paintings.update({"_id":ObjectId("58ac7931bf5c68adf8683be9")},{$set:{"artists":[ObjectId("58ac71b2b3248e0f045c051d")]}},{upsert:false,multi:true})
db.paintings.update({"_id":ObjectId("58ac7931bf5c68adf8683bea")},{$set:{"artists":[ObjectId("58ac71b2b3248e0f045c051e")]}},{upsert:false,multi:true})
db.paintings.update({"_id":ObjectId("58ac7931bf5c68adf8683beb")},{$set:{"artists":[ObjectId("58ac71b2b3248e0f045c051f")]}},{upsert:false,multi:true})
db.paintings.update({"_id":ObjectId("58ac7931bf5c68adf8683bec")},{$set:{"artists":[ObjectId("58ac71b2b3248e0f045c0520")]}},{upsert:false,multi:true})
db.paintings.update({"_id":ObjectId("58ac7931bf5c68adf8683bed")},{$set:{"artists":[ObjectId("58ac71b2b3248e0f045c0521")]}},{upsert:false,multi:true})


db.artists.update({"_id":ObjectId("58ac71b2b3248e0f045c0518")},{$set:{"paintings":[ObjectId("58ac7931bf5c68adf8683be4")]}},{upsert:false,multi:true})
db.artists.update({"_id":ObjectId("58ac71b2b3248e0f045c0519")},{$set:{"paintings":[ObjectId("58ac7931bf5c68adf8683be5")]}},{upsert:false,multi:true})
db.artists.update({"_id":ObjectId("58ac71b2b3248e0f045c051a")},{$set:{"paintings":[ObjectId("58ac7931bf5c68adf8683be6")]}},{upsert:false,multi:true})
db.artists.update({"_id":ObjectId("58ac71b2b3248e0f045c051b")},{$set:{"paintings":[ObjectId("58ac7931bf5c68adf8683be7")]}},{upsert:false,multi:true})
db.artists.update({"_id":ObjectId("58ac71b2b3248e0f045c051c")},{$set:{"paintings":[ObjectId("58ac7931bf5c68adf8683be8")]}},{upsert:false,multi:true})
db.artists.update({"_id":ObjectId("58ac71b2b3248e0f045c051d")},{$set:{"paintings":[ObjectId("58ac7931bf5c68adf8683be9")]}},{upsert:false,multi:true})
db.artists.update({"_id":ObjectId("58ac71b2b3248e0f045c051e")},{$set:{"paintings":[ObjectId("58ac7931bf5c68adf8683bea")]}},{upsert:false,multi:true})
db.artists.update({"_id":ObjectId("58ac71b2b3248e0f045c051f")},{$set:{"paintings":[ObjectId("58ac7931bf5c68adf8683beb")]}},{upsert:false,multi:true})
db.artists.update({"_id":ObjectId("58ac71b2b3248e0f045c0520")},{$set:{"paintings":[ObjectId("58ac7931bf5c68adf8683bec")]}},{upsert:false,multi:true})
db.artists.update({"_id":ObjectId("58ac71b2b3248e0f045c0521")},{$set:{"paintings":[ObjectId("58ac7931bf5c68adf8683bed")]}},{upsert:false,multi:true})


db.paintings.update({"_id":ObjectId("58ac7931bf5c68adf8683be4")},{$set:{"movements":[ObjectId("58ac7180b3248e0f045c0513")]}},{upsert:false,multi:true})
db.paintings.update({"_id":ObjectId("58ac7931bf5c68adf8683be5")},{$set:{"movements":[ObjectId("58ac7180b3248e0f045c0513")]}},{upsert:false,multi:true})
db.paintings.update({"_id":ObjectId("58ac7931bf5c68adf8683be6")},{$set:{"movements":[ObjectId("58ac7180b3248e0f045c0514")]}},{upsert:false,multi:true})
db.paintings.update({"_id":ObjectId("58ac7931bf5c68adf8683be7")},{$set:{"movements":[ObjectId("58ac7180b3248e0f045c0514")]}},{upsert:false,multi:true})
db.paintings.update({"_id":ObjectId("58ac7931bf5c68adf8683be8")},{$set:{"movements":[ObjectId("58ac7180b3248e0f045c0515")]}},{upsert:false,multi:true})
db.paintings.update({"_id":ObjectId("58ac7931bf5c68adf8683be9")},{$set:{"movements":[ObjectId("58ac7180b3248e0f045c0515")]}},{upsert:false,multi:true})
db.paintings.update({"_id":ObjectId("58ac7931bf5c68adf8683bea")},{$set:{"movements":[ObjectId("58ac7180b3248e0f045c0516")]}},{upsert:false,multi:true})
db.paintings.update({"_id":ObjectId("58ac7931bf5c68adf8683beb")},{$set:{"movements":[ObjectId("58ac7180b3248e0f045c0516")]}},{upsert:false,multi:true})
db.paintings.update({"_id":ObjectId("58ac7931bf5c68adf8683bec")},{$set:{"movements":[ObjectId("58ac7180b3248e0f045c0517")]}},{upsert:false,multi:true})
db.paintings.update({"_id":ObjectId("58ac7931bf5c68adf8683bed")},{$set:{"movements":[ObjectId("58ac7180b3248e0f045c0517")]}},{upsert:false,multi:true})