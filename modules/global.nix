{lib, config, pkgs, ... }:
{
    # system-wide pkgs for all users
    environment.systemPackages = with pkgs; [
      curl
      git
      gcc
    ];
	
    programs.zsh = {
      enable = true;
      enableCompletion = true;
      enableFzfCompletion = true;
      enableFzfGit = true;
      enableFzfHistory = true;
      enableSyntaxHighlighting = true;
    };

    programs.vim = {
      enable = true;
      vimConfig = '' 
        set ruler
        set number
        set writebackup
        set showmatch
        set ignorecase smartcase
        set autoindent
        set copyindent
        set expandtab
        set secure
        set encoding=utf-8
        set numberwidth=4
        set softtabstop=4
        set shiftwidth=4
        set tabstop=8
        set wildignore=*.o,*.obj,*.dcox,*.xlsx
        set backspace=indent,eol,start
        set wildmode=longest,list
        set viminfo='20,/20,:20,<30,f1,h,s10,rA:,rB:,n~/.tmp/viminfo
        set shortmess=filnrwxtToOS
        set iskeyword=@,48-57,192-225,-
        set complete-=i
        set conceallevel=0
        set textwidth=100
        filetype plugin indent on
        syntax enable
        let maplocalleader=' '
        nnoremap ; :
        noremap <silent> <LocalLeader>q :close<CR>
        '';
    };
}
