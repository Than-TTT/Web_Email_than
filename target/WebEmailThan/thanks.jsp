<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/survey.css" type="text/css" />
  </head>

  <body>
    <div class="container">
      <legend>Thanks for joining our email list</legend>

      <p>Here is the information that you entered:</p>

      <div class="row">
        <label>Email:</label>
        <span>${user.email}</span><br />
      </div>
      <div class="row">
        <div class="row">
          <label>First Name:</label>
          <span>${user.firstName}</span><br />
        </div>
      </div>
      <div class="row">
        <label>Last Name:</label>
        <span>${user.lastName}</span><br />
      </div>
      <p>
        To enter another email address, click on the Back button in your browser
        or the Return button shown below.
      </p>

      <form action="" method="get">
        <input type="hidden" name="action" value="join" />
        <div class="row">
          <input type="submit" value="Return" />
        </div>
      </form>
    </div>
  </body>
</html>
