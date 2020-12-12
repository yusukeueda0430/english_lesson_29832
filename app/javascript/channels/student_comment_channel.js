import consumer from "./consumer"

consumer.subscriptions.create("StudentCommentChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
      const html = `<p>生徒:${data.content.text}</p>`;
      const comments = document.getElementById('student_comment');
      comments.insertAdjacentHTML('afterbegin', html);
  }
});
