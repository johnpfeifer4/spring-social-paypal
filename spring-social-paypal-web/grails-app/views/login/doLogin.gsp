<!doctype html>
<html lang="en" class="no-js">
  <head>
      <title>PayPal User Profile Data</title>
      <link rel="stylesheet" href="${request.contextPath}/css/style.css?v=2">
  </head>
  <body>
  <div id="paypalUserData">
      <h3>Full Name: ${paypalUser?.fullName}</h3>
      <h3>Status: ${paypalUser?.status}</h3>
      <h3>Email: ${paypalUser?.email}</h3>
      <h3>First Name: ${paypalUser?.firstName}</h3>
      <h3>Last Name: ${paypalUser?.lastName}</h3>
      <h3>Address 1: ${paypalUser?.address1}</h3>
      <h3>Address 2: ${paypalUser?.address2}</h3>
      <h3>City: ${paypalUser?.city}</h3>
      <h3>State: ${paypalUser?.state}</h3>
      <h3>Zip: ${paypalUser?.zip}</h3>
      <h3>Country: ${paypalUser?.country}</h3>
      <h3>Language: ${paypalUser?.language}</h3>
      <h3>Timezone: ${paypalUser?.timezone}</h3>
      <h3>Gender: ${paypalUser?.gender}</h3>
      <h3>Telephone Number: ${paypalUser?.telephoneNumber}</h3>
      <h3>DOB: ${paypalUser?.dob}</h3>

  </div>
  </body>
</html>