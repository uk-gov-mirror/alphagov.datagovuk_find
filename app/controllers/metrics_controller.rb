class MetricsController < SearchController

  def show
    result = "datagovuk_find_num_datasets #{num_datasets}"
    render plain: result
  end

private

  def num_datasets
    @num_datasets = Dataset.search('*').results.total_count
  end

end
