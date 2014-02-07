gpaFormString = '<form method="post" action="/gpa">\n
    <label>Class 1</label>\n
    <select id="c1g">\n
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
    <select id="c1c">\n
        <option value=5>5 Credits</option>\n
        <option value=4>4 Credits</option>\n
        <option value=3>3 Credits</option>\n
        <option value=2>2 Credits</option>\n
        <option value=1>1 Credits</option>\n
    </select>\n
    <br/>\n
    <label>Class 2</label>\n
    <select id="c2g">\n
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
    <select id="c2c">\n
        <option value=5>5 Credits</option>\n
        <option value=4>4 Credits</option>\n
        <option value=3>3 Credits</option>\n
        <option value=2>2 Credits</option>\n
        <option value=1>1 Credits</option>\n
    </select>\n
    <br/>\n
    <label>Class 3</label>\n
    <select id="c3g">\n
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
    <select id="c3c">\n
        <option value=5>5 Credits</option>\n
        <option value=4>4 Credits</option>\n
        <option value=3>3 Credits</option>\n
        <option value=2>2 Credits</option>\n
        <option value=1>1 Credits</option>\n
    </select>\n
    <br/>\n
    <label>Class 4</label>\n
    <select id="c4g">\n
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
    <select id="c4c">\n
        <option value=5>5 Credits</option>\n
        <option value=4>4 Credits</option>\n
        <option value=3>3 Credits</option>\n
        <option value=2>2 Credits</option>\n
        <option value=1>1 Credits</option>\n
    </select>\n
     <br />\n
    <input type="submit" id ="submit" value="Submit" />\n
</form>\n'

headerStr = '<!DOCTYPE html>\n
<html>\n
<head>\n
    <title>Calculate Your GPA</title>\n
</head>\n
<body>\n'

footerStr = '</body>\n</html>'

arrayizer = (inputs...) ->
  inputs

makeGPA = (grades, credits) ->
  if grades.length != credits.length
    alert "You must fill in all fields"
    null
  gradePoint = 0
  for i in [0..grades.length - 1]
    gradePoint += (grades[i] * credits[i])
  #reduce is for summing an array
  #multiplied by 1000 and math.round in order to get 3 decimal places
  return Math.round((gradePoint / (credits.reduce (t, s) -> t + s))*1000)/1000


exports.gpaFormResponse = (req, res) ->
  res.render 'gpa'

exports.gpaPostResponse = (req, res) ->
  res.send headerStr + gpaFormString + '<p>Your GPA is: ' + req.body.makeGPA(arrayizer(c1g, c2g, c3g, c4g), arrayizer(c1c, c2c, c3c, c4c)) + '</p>' + footerStr

module.exports.arrayizer = arrayizer;
module.exports.makeGPA = makeGPA;