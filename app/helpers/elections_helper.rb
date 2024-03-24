module ElectionsHelper
    def upvote_label(election, user)
        if user.voted_up_on? election
            "Cancel Vote"
        else
            "Vote For"
        end
    end

    def button_up_color(election, user)
        @count = election.available_seat
        if user.voted_up_on? election
            @count = @count - 1
            "btn-danger"
        else
            "btn-info"
        end
    end
end
