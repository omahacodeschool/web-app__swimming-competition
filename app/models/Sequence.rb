require 'prime'

class Sequence < ActiveRecord::Base

  def run_sequencer(user_loops)
    loops = "user_loops"
    if loops > 0
      count = 0
      x = 0
      y = 1
      current_search = Search.new
      current_search.user_loops = "user_loops"
      current_search_id = current_search.id
      current_search.save
   ##______________________________REFACTOR BELOW

      while count < loops
        z = x + y
        count += 1
        a = Number.new
        a.no_results = z

        if Prime.instance.prime?(z)
          p = Awesome.new
          p.awesome_hits = z
          p.search_id = current_search_id
          p.save
        else
        end
     
        a.search_id = current_search_id
        a.save

        x = y + z
        count += 1
        b = Number.new
        b.no_results = x

        if Prime.instance.prime?(x)
          p = Awesome.new
          p.awesome_hits = x
          p.search_id = current_search_id
          p.save
        else
        end

        b.search_id = current_search_id
        b.save
        

        y = z + x
        count += 1
        c = Number.new
        c.no_results = y

        if Prime.instance.prime?(y)
          p = Awesome.new
          p.awesome_hits = y
          p.search_id = current_search_id
          p.save
        else
        end

        c.search_id = current_search_id
        c.save


      end
    else
      #THROW ERROR
    end
  end
end