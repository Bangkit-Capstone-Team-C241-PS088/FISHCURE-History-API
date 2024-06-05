# Guide menggunakan API History Manager 📑:

Still Working In Progress...

Base url : wait for deployment

---

## Save History - Method : POST

url

```
/saveHistory
```

request payload data :

```
{
    "email" : "[user email]",
    "desease_id" : "[id penyakit]"
    "akurasi" : "[akurasi scan]"
}
```

### list response dari server :

- ketika berhasil :

```
{
    "status": "success",
    "message": "Data berhasil ditambahkan",
    "data": {
        "data": {
            "email": "[user email]",
            "date_time": "[date time scan diambil]",
            "desease_id": "[id penyakit]",
            "akurasi": "[akurasi scan]"
        }
    }
}
```

---

## GET History - Method : GET

url + query

```
/getHistory?email=[user email]&dateTime=[date time scan diambil]
```

### list response dari server :

- ketika berhasil :

```
{
    "status": "success",
    "message": "Data history didapatkan",
    "data": {
        "data": {
            "email": "[user email]",
            "date_time": "[date time scan diambil]",
            "desease_id": "[id penyakit]",
            "akurasi": "[akurasi scan]"
        }
    }
}
```

- ketika data history tidak ditemukan :

```
{
    "status": "failed",
    "message": "Data history tidak ditemukan"
}
```

---

## GET ALL History - Method : GET

url + query

```
/getHistory?email=[user email]
```

### list response dari server :

- ketika berhasil :

```
{
    "status": "success",
    "message": "Data history didapatkan",
    "data": {
        "data": [
            {
                "email": "[user email]",
                "date_time": "[date time scan diambil]",
                "desease_id": "[id penyakit]",
                "akurasi": "[akurasi scan]"
            },
            {
                "email": "[user email]",
                "date_time": "[date time scan diambil]",
                "desease_id": "[id penyakit]",
                "akurasi": "[akurasi scan]"
            },
            {
                "email": "[user email]",
                "date_time": "[date time scan diambil]",
                "desease_id": "[id penyakit]",
                "akurasi": "[akurasi scan]"
            }
        ]
    }
}
```

- ketika data history tidak ditemukan :

```
{
    "status": "failed",
    "message": "Data history tidak ditemukan"
}
```

---
