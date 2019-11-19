word = String.new('insome')
puts word.reverse

word2 = String.new('nia')
puts word2.reverse


class Person
# 클래스 변수 
@@people_count = 0

  # 초기화 필수! / 이름 생성 
  def initialize(name)
    # puts == print 
    # puts name
    @name = name
    @@people_count += 1 
  end

  def run
    puts "#{@name} is running"
  end

  # 클래스 자체로 사용되기 때문에 self.
  def self.number_of_instances
    puts "#{@@people_count} 명 생성됨"
  end
end 

dodo = Person.new('도도')
# name 이 뭔지 run 은 알 수 없다. 지역변수...
# 인스턴수 변수 @ 사용 => 인스턴스 안에서 사용 
# method 사이에서 사용 불가 / 그 영역은 클래스 변수 사용 
dodo.run
Person.number_of_instances

dudu = Person.new('두두')
dudu.run
Person.number_of_instances


# 한 클래스는 하나의 클래스만 상속 가능하다 
# 파이썬은 다중 상속 지원됨 / 루비는 안됨 
class ScoccerMan < Person
  # 상속 거부하고 method 덮어쓰기 
  def run
    puts "#{@name}가(이) 상대 수비수를 제치고 달립니다!"
  end

  def kick
    puts "#{@name}가(이) 공을 찼습니다!"
  end
end

class BasketBallMan < Person
  def run
    puts "#{@name}가(이) 드리블 하면서 달립니다!"
    # 상속받은 method 실행 
    super
  end

  def shot
    puts "#{@name}가(이) 슛을 쐈습니다!"
  end
end

messi = ScoccerMan.new('메시')
messi.run
messi.kick
# undefined method
# Person.people_count
Person.number_of_instances

jordan = BasketBallMan.new('조던')
jordan.run
jordan.shot
Person.number_of_instances