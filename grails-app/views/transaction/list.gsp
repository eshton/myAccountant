<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title>List of transactions</title>
    </head>
    <body>
      <h1>List of transactions</h1>
      <table class="bordered-table">
        <tr>
          <th>Date</th>
          <% /* <th>Direction</th> */ %>
          <th>Amount</th>
          <th>Type</th>
          <th>Comment</th>
          <th>Actions</th>
        </tr>
        <g:each in="${transactions}" var="transaction">
          <tr>
            <td>${transaction.createDate}</td>
            <% /*  <td>${transaction.direction?'C':'D'}</td> */ %>
            <td>£ ${transaction.amount/100}</td>
            <td>${transaction.type.name}</td>
            <td>${transaction.comment}</td>
            <td>
              <g:link class="deleteButton" action="delete" params="[id:transaction.id]">
              	<img src="<fam:icon name="cancel"/>"/>
              </g:link>
              <g:link class="editButton" action="edit" params="[id:transaction.id]">
              	<img src="<fam:icon name="pencil"/>"/>
              </g:link>              
            </td>
          </tr>
        </g:each>
        <tr>
          <td colspan="6"><g:link action="create"><span class="label success">Create new</span></g:link></td>
        </tr>
      </table>
      <script type="text/javascript">
        $('.deleteButton').click(function(){
          return confirm('Are you sure?');
        });
      </script>
    </body>
</html>