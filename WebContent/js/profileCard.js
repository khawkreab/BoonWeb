var cell = $('.profile-card-head ');
        var csd = $('.closed');

        //open and close card when clicked on card
        cell.find('.js-expander').click(function () {

            var thisCell = $(this).closest('.profile-card-head ');

            if (thisCell.hasClass('is-collapsed')) {
                cell.not(thisCell).removeClass('is-expanded').addClass('is-collapsed').addClass('is-inactive');
                thisCell.removeClass('is-collapsed').addClass('is-expanded');

                if (cell.not(thisCell).hasClass('is-inactive')) {
                    //do nothing
                } else {
                    cell.not(thisCell).addClass('is-inactive');
                }

            } else {
                thisCell.removeClass('is-expanded').addClass('is-collapsed');
                cell.not(thisCell).removeClass('is-inactive');
            }
        });

        //close card when click on cross
        csd.click(function () {

            var thisCell = $(this).closest('.profile-card-head ');

            thisCell.removeClass('is-expanded').addClass('is-collapsed');
            cell.not(thisCell).removeClass('is-inactive');

        });