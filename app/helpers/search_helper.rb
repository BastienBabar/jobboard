module SearchHelper
  def display_results result
    result.each do |r|
      r['id']
    end
  end
end
