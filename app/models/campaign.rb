class Campaign < ApplicationRecord


    def state
        hoy = Date.today
        if self.start <= hoy && self.finish >= hoy
          "abierta"
        else
          "cerrada"
        end
    end
end
