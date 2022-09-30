function! s:skkeleton_init() abort
  call skkeleton#config({
  \   'eggLikeNewline': v:true,
  \   'registerConvertResult': v:true,
  \   'showCandidatesCount': 1,
  \ })
  " from shougo-s-github
  call skkeleton#config({
  \   'markerHenkan': '<>',
  \   'markerHenkanSelect': '>>',
  \ })
  " USキーボードの n' で「ん」を打てるやつをJISキーボードでもやる
  call skkeleton#register_kanatable('rom', {
  \ 'n:': ['ん',  ''],
  \ })
endfunction
