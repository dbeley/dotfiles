function fish_user_key_bindings
    #bind '!' bind_bang
    #bind '$' bind_dollar
    fzf_key_bindings
    for mode in insert default visual
        bind -M $mode \cf forward-char
    end
end

