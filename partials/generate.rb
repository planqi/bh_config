#!/usr/bin/env ruby

configs = {}
configs['HideNothing'] = %w|
  bh_config
  basics_show
  gems_common
  runes_map_all
  common_things
  hide_nothing
  common_end
|

configs['HideLotsOfThings'] = %w|
  bh_config
  basics_filter
  gems_common
  gems_hide_below_flawless
  runes_map_some
  common_things
  hide_lots
  common_end
|

def prep_list(list)
  list.map { |i| "#{i}.bh" }.join ' '
end

configs.each do |k, v|
  `cat #{prep_list v} > ../#{k}/BH.cfg`
end

# `cat #{prep_list hide_nothing} > ../HideNothing/BH.cfg`
# `cat #{prep_list hide_lots_of_things} > ../HideLotsOfThings/BH.cfg`
