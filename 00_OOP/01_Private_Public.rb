# 공개할 수 있는 변수 public
# 공개할 수 없는 변수 private
class Person
  # 읽기 기능 지원
  # attr_reader :name, :age
  # 쓰기 기능 지원 
  # attr_writer :name, :age
  # 두 가지 기능 지원
  attr_accessor :name, :age
  def initialize(name, age)
    @name = name
    @age = age
  end

  # 정보를 읽을 수 있는 method 를 구현해야 정보를 읽을 수 있다.
  # def name
  #   @name
  # end

  # 정보 update
  # 앞뒤 띄어쓰기 하면 오류남 
  # def name=(value)
  #   @name = value
  # end

  # 공개할 수 있는 정보 정상 출력
  public
  def run
    "#{@age}살 의 #{@name}가 달립니다."
  end

  # end 잊으면 안됩니다...
  def check_password(password)
    if password == your_password
      puts '계좌에 접근할 수 있습니다.'
    else
      puts '비밀번호가 틀렸습니다.'
    end
  end

  # 접근하려고 하면 오류 발생 
  # 내부에서 사용 가능 
  private
  def your_password
    @password = '123456789'
  end
end

p = Person.new('도도', 22)
puts p.run
puts p.check_password('123456789')
puts p.check_password(123456789)
puts p.name # name
p.name = '두두' # name=(value)
puts p.name
puts p.age
p.age = 13
puts p.age