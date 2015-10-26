<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="/static/stylesheet.css" />

    <title>calender</title>
</head>
<body>

 <div id = "input">
	 <form action ="/search" method = "post">
	 <input type="text" name="year" pattern="[1-9]{4}" title="input only four digit, first digit not zero" placeholder= "Enter year" maxlength="255" />
     <input type="text" name="month" pattern="(0[1-9]|1[012])" title="input only  two digit and lass than 13" placeholder= "Enter month" maxlength="255"/>
</div>
 <div id = "gobtn">
     <input type="submit" name="search" value = 'go' />
	 <a href="/{{j_year}}/{{j_month}}" > </a>
	 </form>
  
	</div>

    <div class="container">
   <div>
            {{! calendar}}
            <p style="display:flexbox">
                <a href="/{{p_year}}/{{p_month}}" class="cal"> &lt;  Prev  </a>
                <a href="/{{n_year}}/{{n_month}}" class="cal">   Next  > </a>
            </p>

        </div>
   </div>
	
	
</body>
</html>