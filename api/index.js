var express = require("express");
var app = express(); 
var port = 8080;
var server = app.listen(8080, function(){
    console.log("Server jalan on port 8000");
});

var pegawai = {
    "pegawai" : [
        {
            "id" : 1 , 
            "nama" : "iwan",
            "tanggal_lahir" : "19022024",
            "jenis_kelamin" : "Laki - Laki",
        },
        {
            "id" : 2 , 
            "nama" : "Bagus",
            "tanggal_lahir" : "19102024",
            "jenis_kelamin" : "Laki - Laki",
        },
        {
            "id" : 3 , 
            "nama" : "Nanda",
            "tanggal_lahir" : "19102024",
            "jenis_kelamin" : "Perempuan",
        },
        {
            "id" : 4 , 
            "nama" : "Sari",
            "tanggal_lahir" : "19102024",
            "jenis_kelamin" : "Perempuan",
        },
    ]
};

app.get('/pegawai', function(req,res){
    res.send(pegawai);
});