<!doctype html>
<html lang="en" class="no-js">
  <head>
      <title>PayPal User Profile Data</title>
      <link rel="stylesheet" href="${request.contextPath}/css/style.css?v=2">
  </head>
  <body>
  <div id="paypalUserData">
      <h3>Email: ${paypalUser?.email}</h3>
      <h3>Full Name: ${paypalUser?.fullName}</h3>
      <h3>Status: ${paypalUser?.status}</h3>
  </div>
  </body>
</html>