class Payment
    def pay(total_amount)
        raise NoMethodError, "#{self.class} does not implement this method"
    end
end

class CardPayment < Payment
    def pay(total_amount)
        p "CARD payment of #{total_amount} success"
    end
end

class CashPayment < Payment
    def pay(total_amount)
        p "CASH payment of #{total_amount} success"
    end
end