class ExtractFunction
  def initialize(name)
    @name = name
  end

  def print_owning(amount)
    print_banner

    # print details
    $stdout.puts "name: #{@name}"
    $stdout.puts "amount: #{amount}"
  end

  private

  def print_banner
  end
end
