import consumer from "./consumer"

consumer.subscriptions.create("TeacherCommentChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    const html = `<p>講師:${data.content.text}</p>`;
    const comments = document.getElementById('teacher_comment');
    comments.insertAdjacentHTML('afterbegin', html);
  }
});
