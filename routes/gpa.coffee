gpaFormString = '<form method="post" action="/gpa">\n
    <label>Class 1</label>\n
    <select>\n
        <option value=4.0>A</option>\n
        <option value=3.7>A-</option>\n
        <option value=3.3>B+</option>\n
        <option value=3.0>B</option>\n
        <option value=2.7>B-</option>\n
        <option value=2.3>C+</option>\n
        <option value=2.0>C</option>\n
        <option value=1.7>C-</option>\n
        <option value=1.3>D+</option>\n
        <option value=1.0>D</option>\n
        <option value=0.7>D-</option>\n
        <option value=0.0>F</option>\n
    </select>\n
    <select>\n
        <option value=5>5 Credits</option>\n
        <option value=4>4 Credits</option>\n
        <option value=3>3 Credits</option>\n
        <option value=2>2 Credits</option>\n
        <option value=1>1 Credits</option>\n
    </select>\n
    <br/>\n
    <label>Class 2</label>\n
    <select>\n
        <option value=4.0>A</option>\n
        <option value=3.7>A-</option>\n
        <option value=3.3>B+</option>\n
        <option value=3.0>B</option>\n
        <option value=2.7>B-</option>\n
        <option value=2.3>C+</option>\n
        <option value=2.0>C</option>\n
        <option value=1.7>C-</option>\n
        <option value=1.3>D+</option>\n
        <option value=1.0>D</option>\n
        <option value=0.7>D-</option>\n
        <option value=0.0>F</option>\n
    </select>\n
    <select>\n
        <option value=5>5 Credits</option>\n
        <option value=4>4 Credits</option>\n
        <option value=3>3 Credits</option>\n
        <option value=2>2 Credits</option>\n
        <option value=1>1 Credits</option>\n
    </select>\n
    <br/>\n
    <label>Class 3</label>\n
    <select>\n
        <option value=4.0>A</option>\n
        <option value=3.7>A-</option>\n
        <option value=3.3>B+</option>\n
        <option value=3.0>B</option>\n
        <option value=2.7>B-</option>\n
        <option value=2.3>C+</option>\n
        <option value=2.0>C</option>\n
        <option value=1.7>C-</option>\n
        <option value=1.3>D+</option>\n
        <option value=1.0>D</option>\n
        <option value=0.7>D-</option>\n
        <option value=0.0>F</option>\n
    </select>\n
    <select>\n
        <option value=5>5 Credits</option>\n
        <option value=4>4 Credits</option>\n
        <option value=3>3 Credits</option>\n
        <option value=2>2 Credits</option>\n
        <option value=1>1 Credits</option>\n
    </select>\n
    <br/>\n
    <label>Class 4</label>\n
    <select>\n
        <option value=4.0>A</option>\n
        <option value=3.7>A-</option>\n
        <option value=3.3>B+</option>\n
        <option value=3.0>B</option>\n
        <option value=2.7>B-</option>\n
        <option value=2.3>C+</option>\n
        <option value=2.0>C</option>\n
        <option value=1.7>C-</option>\n
        <option value=1.3>D+</option>\n
        <option value=1.0>D</option>\n
        <option value=0.7>D-</option>\n
        <option value=0.0>F</option>\n
    </select>\n
    <select>\n
        <option value=5>5 Credits</option>\n
        <option value=4>4 Credits</option>\n
        <option value=3>3 Credits</option>\n
        <option value=2>2 Credits</option>\n
        <option value=1>1 Credits</option>\n
    </select>\n
</form>\n'

headerStr = '<!DOCTYPE html>\n
<html>\n
<head>\n
    <title>Calculate Your GPA</title>\n
</head>\n
<body>\n'

footerStr = '</body>\n</html>'

getCredits (credits...) ->
  credits

getGrades (grades...) ->
  grades

makeGPA (grades, credits) ->


exports.formResponse = (req, res) ->
  res.render 'gpa'

exports.postResponse = (req, res) ->
  res.send headerStr + formString + '<p>Your GPA is: ' + req.body.text + '</p>' + footerStr