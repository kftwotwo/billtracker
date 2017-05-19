module BillsHelper
  def category_list
    list = []
    Category.all.each do |category|
      list.push(category.kind)
    end
    return list
  end
end
