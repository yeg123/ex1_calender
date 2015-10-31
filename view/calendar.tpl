<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="/static/stylesheet.css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">
    <script type="text/javascript" src="static/JS1.js"></script>
    <title>calender</title>
</head>
<body>

 <div id = "input">
	 <form name="frm1" action ="/search" method = "post">
	 <input type="text" name="year" pattern="[1-9][0-9]{3}" title="input only four digit, first digit not zero" placeholder= "Enter year" maxlength="255" />
     <input type="text" name="month" pattern="(0[1-9]|1[012])" title="input only  two digit and lass than 13" placeholder= "Enter month" maxlength="255" />
</div>
 <div id = "gobtn">
   <input type="submit" class="btn btn-success" name="search" value = 'go' onclick="return checkTextField()"  /> 
	
	 <a href="/{{j_year}}/{{j_month}}" > </a>
	 </form>
  
	</div>

    <div class="container">
   <div>
            {{! calendar}}
            <p id ="p1">
                <a id="pr_m" href="/{{p_year}}/{{p_month}}" class="cal"> &lt;  Prev month </a>
                <a id="ne_m" href="/{{n_year}}/{{n_month}}" class="cal"> Next month  > </a>
            </p>

			<p id ="p2">
				<a id="pr_y" href="/{{minus_year}}/{{j_month}}" class="cal"> &lt; Prev year   </a>
                <a id="ne_y" href="/{{add_year}}/{{j_month}}" class="cal">   Next year > </a>
            </p>

			<p id ="p3">
				<a id="tod_y" href="/{{today_year}}/{{today_month}}" class="cal"> Today  </a>
            </p>

        </div>
   </div>
	
	
</body>
</html>