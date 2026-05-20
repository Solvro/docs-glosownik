workspace "Glosownik" "Architecture model for the Glosownik voting system." {
    model {
        admin = person "Admin"
        voter = person "Voter"

        auth = softwareSystem "3rd Party Auth" {
            tags "External System"
        }

        glosownik = softwareSystem "Glosownik"

        admin -> glosownik "Manages votes and views results"
        voter -> glosownik "Signs in and votes"
        glosownik -> auth "Authenticates users with"
    }

    views {
        systemContext glosownik "c1-system-context" {
            include *
            autoLayout lr
        }

        styles {
            element "Person" {
                shape Person
                background #08427b
                color #ffffff
            }

            element "Software System" {
                background #1168bd
                color #ffffff
            }

            element "External System" {
                background #999999
                color #ffffff
            }
        }
    }
}
