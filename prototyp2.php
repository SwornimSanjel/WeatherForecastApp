<?php
$serverName = "localhost";
$userName = "root";
$password = "";
$conn = mysqli_connect($serverName, $userName, $password);

$createDatabase = "CREATE DATABASE IF NOT EXISTS weather2";
if (mysqli_query($conn, $createDatabase)) {
    // echo "Database Created or already Exists <br>";
}
else{
    echo "Failed to create Database <br>" . mysqli_connect_error();
}

mysqli_select_db($conn, 'weather2');

$createTable = "CREATE TABLE IF NOT EXISTS weather (
    city VARCHAR(50) NOT NULL,
    temperature FLOAT NOT NULL,
    wind FLOAT NOT NULL,
    pressure FLOAT NOT NULL,
    humidity FLOAT NOT NULL,
    icon VARCHAR(15) NOT NULL,
    descriptions varchar(50) NOT NULL,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);";

if(mysqli_query($conn, $createTable)) {
    // echo "Table Created or Already Exists <br>";
}
else{
    // echo "Failed to create Database <br>" . mysqli_connect_error();
}

if(isset($_GET['q'])) {
    $cityName = $_GET['q'];
    // echo $cityName;
}
else {
    $cityName = "Tuscumbia";
}

$selectAllData = "SELECT * FROM weather WHERE City = '$cityName' AND timestamp > DATE_SUB(NOW(), INTERVAL 2 HOUR)";
$result = mysqli_query($conn, $selectAllData);

if(mysqli_num_rows($result) == 0) {
    $apiKey = "19f45209075346e5f495847f3e798ecc";
    $url = "https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$apiKey&units=metric";
    $response = file_get_contents($url);
    $data = json_decode($response, true);

    $humidity = $data['main']['humidity'];
    $wind = $data['wind']['speed'];
    $pressure = $data['main']['pressure'];
    $temperature = $data['main']['temp'];
    $icon = $data['weather'][0]['icon'];
    $descriptions = $data['weather'][0]['description'];


    $insertData = "INSERT INTO weather (city, temperature, wind, pressure, humidity, icon, descriptions)
        VALUES ('$cityName', '$temperature', '$wind', '$pressure', '$humidity', '$icon', '$descriptions')";
    
    if(mysqli_query($conn, $insertData)) {
        // echo "Data inserted Successfully";
    }
    else{
        // echo "Failed to insert Data" . mysqli_error($conn);
    }
}

$result = mysqli_query($conn, $selectAllData);
while ($row = mysqli_fetch_assoc($result)) {
    $rows[] = $row;
}

$json_data = json_encode($rows);
header('Content-Type: application/json');
echo $json_data;

?>