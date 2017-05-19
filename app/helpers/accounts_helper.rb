module AccountsHelper

  def all_records
    ActiveRecord::Base.transactions do
      def bills
        current_user.bills
      end

      def credit_cards
        current_user.credit_cards
      end

      def debit_cards
        current_user.debit_cards
      end
    end
  end

  # def balance(model_data)
  #   case model_data
  #   when model_data.class == Bills
  #     data = {
  #       labels: ["Bills"],
  #       datasets: [
  #         {
  #           label: "",
  #           backgroundColor: "rgba(220,220,220,0.2)",
  #           borderColor: "rgba(220,220,220,1)",
  #           data: [65, 59, 80, 81, 56, 55, 40]
  #         },
  #         {
  #           label: "My Second dataset",
  #           backgroundColor: "rgba(151,187,205,0.2)",
  #           borderColor: "rgba(151,187,205,1)",
  #           data: [28, 48, 40, 19, 86, 27, 90]
  #         }
  #       ]
  #     }
  #   end
  # end
end
