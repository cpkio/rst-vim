setlocal tabstop=3 shiftwidth=3 expandtab wrap spell textwidth=0
setlocal comments=nb:\|,nb:>

setlocal formatlistpat=^\\s*\\.\\.\\s\\+\\([-A-Za-z]\\+::\\s\\+\\)\\?
setlocal formatlistpat+=\\\|
setlocal formatlistpat+=^\\s*(\\?[а-яa-zA-Z#][).]\\s\\+
setlocal formatlistpat+=\\\|
setlocal formatlistpat+=^\\s*(\\?[0-9]\\(\\.[0-9]\\+\\)*[).]\\s\\+
setlocal formatlistpat+=\\\|
setlocal formatlistpat+=^\\s*[-+o*•‣]\\s\\+
setlocal formatlistpat+=\\\|
setlocal formatlistpat+=^\\s*:[A-Za-z\\-]\\+:\\s\\+
