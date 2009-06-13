class Comatose::PageWrapper

  # make the acts_as_tree "ancestors" method available to your layouts
  # not available to the CMS area as that would allow access to pages above allowed level
  def ancestors
    @page.ancestors
  end    

end
