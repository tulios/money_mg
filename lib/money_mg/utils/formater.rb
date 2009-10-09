module MoneyMg  
  
  module Formater
  
    # Converte uma data para string, se não informar o padrão formata
    # para dd/mm/yyyy
    #
    # params:
    # => Date: date (data)
    # => String: pattern (padrão de conversão)
    #
    def self.date_to_string(date, pattern = "%d/%m/%Y")
      if date
        date.strftime(pattern)
      end
    end
                                  
    # Extrai o ano da data. Retorna um inteiro.
    # params:
    # => Date: date (data)
    #
    def self.extract_year(date)
      date_to_string(date, "%Y")
    end
   
    # Extrai o mês da data. Retorna um inteiro.
    # params:
    # => Date: date (data)
    #
    def self.extract_month(date)
      date_to_string(date, "%m")
    end
  
  end                 
  
end