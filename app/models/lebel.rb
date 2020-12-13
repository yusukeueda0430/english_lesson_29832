class Lebel < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '通じるが、片言' },
    { id: 3, name: 'すらすら話せるが、最低限' },
    { id: 4, name: 'ネイティブには及ばないが、困ることはない' },
    { id: 5, name: 'ネイティブレベル' }
  ]
end
