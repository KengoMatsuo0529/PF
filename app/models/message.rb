class Message < ApplicationRecord
  
  enum checked: {
    read: 0,
    unread: 1
  }
  
end
