%#template to generate a HTML table from a list of tuples (or list of lists, or tuple of tuples or ...)
<p>The open tasks are:</p>

<ul>
  %for row in open_rows:
  <li>
    {{row['_id']}}: {{row['task']}}
    %if 'username' in row:
    (by {{row['username']}}
      %if 'food' in row:
        who likes {{row['food']}})
      %else:
        :D) 
      %end
    %end
    <a href="/edit/{{row['_id']}}">edit</a> &nbsp;
    <a href="/change/{{row['_id']}}/0">close task</a>
  </li>
  %end
</ul>

<p> The closed tasks are:</p>

<ul>
  %for row in closed_rows:
  <li>
    {{row['_id']}}: {{row['task']}}
    %if 'username' in row:
      (by {{row['username']}}
      %if 'food' in row:
        who likes {{row['food']}})
      %else:
        :D)
      %end
    %end
    <a href="/edit/{{row['_id']}}">edit</a> &nbsp;
    <a href="/change/{{row['_id']}}/1">open task</a>
  </li>
  %end
</ul>

<a href="/add">Add a new item here!</a>
<br />
<br />
<a href="/logout">Logout when you're done</a>
