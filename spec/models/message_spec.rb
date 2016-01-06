require 'rails_helper'

RSpec.describe Message, type: :model do

  it 'autolinks everything user types in body' do
    text_with_links =
      'https://ya.ru is the yandex, svalko is here: http://svalko.org'

    email  = 'ahuli@domain.com'
    email2 = 'bhuli@domain.com'
    pass   = 'asdlfkjqwer'
    u1     = User.create! email: email,  password: pass
    u2     = User.create! email: email2, password: pass

    message = Message.create! \
      sender:    u1,
      receiver:  u2,
      body:      text_with_links

    expect(Message.first.body).to eq \
      %[<a href='https://ya.ru'>https://ya.ru</a> is the yandex, svalko is here: <a href='http://svalko.org'>http://svalko.org</a>]

  end
end
