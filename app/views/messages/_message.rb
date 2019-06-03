<% if message.robo == 1 %>
  <div class="robo-comment comment">
    <div class="icon-chat"></div>
    <div class="message" id="message-<%= message.id %>">

      <%== message.content %>
      <%= render 'questions/question', question: message.question, message: message if !message.answer && message.question_id  %>
      <%= render 'questions/show', question: message.question, message: message if message.answer && message.question_id %>

    </div>
  </div>
<% else %>
  <div class="my-comment comment text-right">
    <div class="message" id="message-<%= message.id %>">
      <p>
        <%= message.content %>
        <%= render 'questions/question', question: message.question, message: message if !message.answer && message.question_id  %>
        <%= render 'questions/show', question: message.question, message: message if message.answer && message.question_id %>
      </p>
    </div>
  </div>
<% end %>