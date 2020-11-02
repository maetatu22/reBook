class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'ホラー' },
    { id: 3, name: 'ファンタジー' }
  ]
end
