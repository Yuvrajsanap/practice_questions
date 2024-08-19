<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>File Upload</title>
</head>
<body>
    <h1>Upload File</h1>
    <form action="upload" method="post" enctype="multipart/form-data">
        Select file: <input type="file" name="file"><br>
        <input type="submit" value="Upload">
    </form>
</body>
</html>
