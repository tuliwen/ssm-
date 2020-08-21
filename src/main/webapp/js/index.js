var a = true

function move(e) {
    if (a) {
        e.parentElement.className = 'fixbottom-up fixbottom border up'
        e.className = 'triangle-down'
    } else {
        e.parentElement.className = 'fixbottom-down fixbottom border up'
        e.className = 'triangle-up'
    }
    a = !a
}


function validate_required(field,alerttxt)
{
    with (field)
    {
        if (value==null||value=="")
        {alert(alerttxt);return false}
        else {return true}
    }
}

function validate_form(thisform)
{
    with (thisform)
    {
        if (validate_required(name,"标题不能为空!")==false)
        {name.focus();return false}
        else if (validate_required(creator,"作者不能为空!")==false)
        {creator.focus();return false}
        else if (validate_required(detail,"内容不能为空!")==false)
        {detail.focus();return false}
    }
}