// <!--appRoom = App.cable.subscriptions.create("RoomChannel", {-->
// <!--  connected: function() {-->
// <!--    // Called when the subscription is ready for use on the server-->
// <!--  },-->

// <!--  disconnected: function() {-->
// <!--    // Called when the subscription has been terminated by the server-->
// <!--  },-->

// <!--  received: function(data) {-->
// <!--    const messages = document.getElementById('messages');-->
// <!--    // var newDiv = document.createElement("div");-->
// <!--    // if messages.user == current_user "me"-->
// <!--    // else "other"-->

// <!--    messages.insertAdjacentHTML('beforeend', data['message']);-->
// <!--    // messages.insertAdjacentHTML("me", data['message']);-->
// <!--    checked()-->

// <!--  },-->

// <!--  speak: function(message) {-->
// <!--    const room_id = document.getElementById('messages').getAttribute('room_id');-->
// <!--    return this.perform('speak', {message: message, room_id: room_id, checked:1});-->
// <!--  }-->
// <!--});-->

// <!--window.addEventListener("keypress", function(e) {-->
// <!--  if (e.keyCode === 13) {-->
// <!--    appRoom.speak(e.target.value);-->
// <!--    e.target.value = '';-->
// <!--    e.preventDefault();-->
// <!--  }-->
// <!--})-->

// <!--function checked(){-->
// <!--  const room_id = document.getElementById('messages').getAttribute('room_id');-->

// <!--	var url = '/user/messages/notification?room_id=' + room_id + '&who=';-->
// <!--	<#% if user_signed_in? %>-->
// <!--		url = url +'user';-->
// <!--	<#% else %>-->
// <!--		url = url +'healthcenter';-->
// <!--	<#% end %>	-->

// <!--	$.ajax({-->
// <!--            url: url,-->
// <!--            type: 'GET',-->
// <!--            dataType: 'html'-->
// <!--        }).done(function(data){-->

// <!--        }).fail(function(data){-->

// <!--        });-->
// <!--    });-->
// <!--}-->