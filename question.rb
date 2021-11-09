class Question
  attr_accessor :number1, :number2, :text, :answer
  def initialize()
    self.number1 = rand(21)
    self.number2 = rand(21)
    self.text = "What is the sum of #{@number1} and #{@number2} ?"
    self.answer = @number1 +@number2
  end
end
# a = Question.new()
# puts a
# puts a.number1
# puts a.number2
# puts a.question