

function checkTextField(field) {
    if (!frm1.year.value)
    {
        alert ("Please Enter a year");
        return (false);
    }
    else if (!frm1.month.value)
    {
        alert("Please Enter a month");
        return (false);
    }
    return (true);

}

  