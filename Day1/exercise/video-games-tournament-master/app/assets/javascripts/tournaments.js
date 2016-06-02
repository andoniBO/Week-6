// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$('.ctrl-tournaments.actn-index').ready(tournamentsIndex)
$('.ctrl-tournaments.actn-index').on('click', '[data-hook~=tourney-delete]', deleteTournament )

$('[data-hook~=tourney-add]').on('click', showTournamentForm)
$('[data-hook~=tourney-form]').on('submit', createTournament)

function deleteTournament(event) {
  console.log(event.currentTarget);
  event.preventDefault();
  $.ajax({
        url: '/api/tournaments/' + $(event).val(),
        type: 'DELETE',
        success: function(response) {console.log("bien")},
        error: function(response) {console.log("mal")}
      });
}
