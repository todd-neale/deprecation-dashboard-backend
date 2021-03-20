class Email < ApplicationRecord
  def find_date_sentences
    date_regex = ".*/([\d]+)([\-\./])([\d]+)([\-\./])([\d]+)|((Jan(|uary)|Feb(|ruary)|Mar(|ch)|Apr(|il)|May|Jun(|e)|Jul(|y)|Aug(|ust)|Sept(|ember)|Oct(|ober)|(Nov|Dec)(|ember))([\s\-])(|([\d]+){1,2}([\s\-]|\, ))([\d]+){4})/.*"
    sentences = text.split('.')
                    .select { |s| s.match(date_regex) }
    p sentences
  end
end
