#build nested data structure
tv_shows = {
    greys_anatomy: {
        nickname: "Grey's",
        show_info: {
            num_of_seasons: 12,
            basic_cable: true
        },
        quotes: [
            "It's a beautiful day to save lives", 
            "You're my person"
        ]
    },
    the_big_bang_theory: {
        nickname: 'TBBT',
        show_info: {
            num_of_seasons: 9,
            basic_cable: true
        },
        quotes: [
            "Soft kitty, warm kitty, little ball of fur,
            happy kitty, sleepy kitty, pur, pur, pur", 
            "Bazinga"
        ]
    },
    game_of_thrones: {
        nickname: 'GOT',
        show_info: {
            num_of_seasons: 6,
            basic_cable: false
        },
        quotes: [
            "Winter is coming",
            "I drink and I know things"
        ]
    },
    orange_is_the_new_black: {
        nickname: 'OITNB',
        show_info: {
            num_of_seasons: 4,
            basic_cable: false
        },
        quotes: []
    }
}

#Print pieces
# 1.
tv_shows[:greys_anatomy][:nickname]

# 2.
tv_shows[:the_big_bang_theory][:quotes]

# 3.
tv_shows[:the_big_bang_theory][:quotes][0]

# 4.
tv_shows[:game_of_thrones][:quotes].push("Dracarys")

# 5.
tv_shows[:greys_anatomy][:quotes].reverse

# 6.
tv_shows[:orange_is_the_new_black][:nickname].downcase
