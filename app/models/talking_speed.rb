class TalkingSpeed < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'とてもゆっくり' },
    { id: 3, name: '少しゆっくり' },
    { id: 4, name: '普通' },
    { id: 5, name: '少し早く' },
    { id: 6, name: 'とても早く' }
  ]
end
