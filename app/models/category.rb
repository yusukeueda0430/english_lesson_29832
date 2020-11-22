class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '日常会話' },
    { id: 3, name: 'ビジネス' },
    { id: 4, name: '資格試験' },
    { id: 5, name: '海外旅行' }
  ]
end
