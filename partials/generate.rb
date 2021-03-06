#!/usr/bin/env ruby

configs = {}
configs['HideNothing'] = %w|
  bh_config
  basics_show
  gems_common
  runes_map_all
  common_things
  isumi_rares
  beef_common
  charm_comp_common
  common_end
|

configs['HideLotsOfThings'] = %w|
  bh_config
  basics_filter
  gems_common
  gems_hide_below_flawless
  runes_map_some
  common_things
  isumi_rares
  beef_hide
  beef_common
  charm_comp_common
  hide_lots
  common_end
|

def prep_list(list)
  list.map { |i| "#{i}.bh" }.join ' '
end

def metadata(name)
  "\"Metadata[description]: planqi's #{name} Resurgence config\""
end

configs.each do |k, v|
  `echo #{metadata k} | cat - #{prep_list v} > ../#{k}/BH.cfg`
end
