# frozen_string_literal: true

module DOIT
  @README = "./README.md"

  def self.doit
    contents = File.read(@README)
    if contents.length % 2 == 0
      File.write(@README, "#{contents} ")
    else
      contents.slice!(-1)
      File.write(@README, contents)
    end
  end
end
