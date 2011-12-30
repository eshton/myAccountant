<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title>Create new transaction</title>
    </head>
    <body>
      <h1>Create new transaction</h1>
      <g:if test="${flash.command}">
        <div class="alert-message error">
        	There are some problems with the submission
        	<g:renderErrors bean="${flash.command}" as="list" />
       	</div>
      </g:if>      
      <g:form action="saveNew" method="post">
        <fieldset>
          <div class="clearfix">
            <label for="type">Transaction type</label>
            <div class="input">
              <g:select name="type" from="${types}" optionKey="id" optionValue="name" noSelection="${['':'Select one ...']}"></g:select>
            </div>
          </div>
          <div class="clearfix">
            <label for="amount">Amount</label>
            <div class="input">
            	<% def pennies = []
					(0..99).each { 
						pennies[it] = it.toString().padLeft(2,"0")
					}
				 %>
              <span style="font-size:1.3em;font-weight:bold;">£</span> <g:select style="width:57px;" name="amount" from="${0..1000}" value="${command?.amount}"></g:select>.
              <g:select style="width:48px;" name="amount_penny" from="${pennies}" value="${command?.amount_penny}"></g:select>
              <span class="add-on">
              </span>
              <span class="help-block">Here's some help text</span>
            </div>
          </div>
          <div class="clearfix">
            <label for="comment">Comment</label>
            <div class="input">
              <textarea name="comment">${command?.comment}</textarea>
              <span class="help-block"><a id="moreoptionsButton" href="#none">More options</a></span>
            </div>
          </div>
          <div id="moreoptions" style="display:none;">
          <div class="clearfix">
          	<label id="date">Date</label>
          	<div class="input">
          		<input name="actDate"/>
          	</div>
          </div>
          <div class="clearfix">
            <label id="currencies">Currency</label>
            <div class="input">
              <ul class="inputs-list">
                <li>
                  <label>
                    <input type="radio" value="GBP" name="currency" checked="checked"/>
                    <span>GBP</span>
                  </label>
                </li>
                <li>
                  <label>
                    <input type="radio" value="HUF" name="currency"/>
                    <span>HUF</span>
                  </label>
                </li>
              </ul>
            </div>
          </div>
          </div>       
        </fieldset>
        <div class="actions">
          <button class="btn primary" type="submit">Save</button>
        </div>
      </g:form>
      <script type="text/javascript">
		$('#moreoptionsButton').click(function(){
			$('#moreoptions').toggle();
		});
      </script>
    </body>
</html>