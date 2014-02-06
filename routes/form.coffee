formString = '<form method="post" action="/form">\n
        <label for="text">Please say something</label>\n
        <input type="text" id="text" name="text" value="Something" /><br />\n
        <input type="submit" id ="submit" value="Done" />\n
        </form>\n'

headerStr = '<!DOCTYPE html>\n
<html>\n
<head>\n
    <title>A test form</title>\n
</head>\n
<body>\n'

footerStr = '</body>\n</html>'

exports.formResponse = (req, res) ->
  res.render 'form'

exports.postResponse = (req, res) ->
  res.send headerStr + formString + '<p>You said ' + req.body.text + '</p>' + footerStr