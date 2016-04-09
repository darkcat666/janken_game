describe MyClass do
  subject { MyClass.new }
  # it 'はHello メソッドを持っている'
  it '#hello(name) は"Hello! [名前]!" を返す' do
      result = subject.hello('Jhone')
      expect(result).to eq 'Hello! Jhone!'
  end

  describe '簡単問題集' do
      describe '#sum' do
        it '[1, 2, 3, 4, 5] は15を返す' do
          result = subject.sum([1, 2, 3, 4, 5])
          expect(result).to eq 15
        end
      end
  end
end