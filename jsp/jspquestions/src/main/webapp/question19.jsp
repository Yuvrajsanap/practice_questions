<!DOCTYPE html>
<html>
<head>
    <title>AJAX Example</title>
    <script>
        function fetchData() {
            var xhr = new XMLHttpRequest();
            xhr.open("GET", "fetchData.jsp", true);
            xhr.onreadystatechange = function () {
                if (xhr.readyState == 4 && xhr.status == 200) {
                    document.getElementById("result").innerHTML = xhr.responseText;
                }
            };
            xhr.send();
        }
    </script>
</head>
<body>
    <h1>AJAX Example</h1>
    <button onclick="fetchData()">Fetch Data</button>
    <div id="result"></div>
</body>
</html>
