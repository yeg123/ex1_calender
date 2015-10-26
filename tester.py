from bottle import route, error, run, template, static_file, get, request , redirect
import calendar
import datetime
import os

PORT = int(os.environ.get("PORT", 5000))
c = calendar.HTMLCalendar()
now = datetime.datetime.now()

c.setfirstweekday(calendar.SUNDAY)

def cal(year, month):
    return {
            'n_year': year + month // 12,
            'n_month': month %12 + 1,
            'p_year': year - (month ==1) ,
            'p_month': month % 13 -1 or 12,
            'j_year': year,
            'j_month': month,
            }


@route('/static/<filename>')
def server_static(filename):
    return static_file(filename, root ='./static')
    
@route('/')
@route('/<year>/<month>')
def render_calendar(year=now.year, month=now.month):
   
     year = int (year)
     month = int (month)
     return template('view\calendar', calendar = c.formatmonth(year,month),
                    **cal(year, month))


@route('/search', method=['GET', 'POST'])
def search():
    _year = int(request.forms['year'])
    _month = int(request.forms['month'])
    return template('view\calendar', calendar = c.formatmonth(_year,_month),
                    **cal(_year, _month))

@error(404)
def error404(error):
     return 'Nothing here'
        
bottle.run(host='0.0.0.0', port=PORT, debug=False)