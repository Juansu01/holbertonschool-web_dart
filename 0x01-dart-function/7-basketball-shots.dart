int whoWins(Map<String, int> team1, Map<String, int> team2) {
  
  int teamAFreeThrows = 0;
  int teamA2Pointer = 0;
  int teamA3Pointer = 0;

  int teamBFreeThrows = 0;
  int teamB2Pointer = 0;
  int teamB3Pointer = 0;

  team1.forEach((key, value) => {
    if (key == 'Free throws'){
      teamAFreeThrows = value
    }else if (key == '2 pointer'){
      teamA2Pointer = value * 2
    } else 
      teamA3Pointer = value * 3
  });

  team2.forEach((key, value) => {
    if (key == 'Free throws'){
      teamBFreeThrows = value
    }else if (key == '2 pointer'){
      teamB2Pointer = value * 2
    } else 
      teamB3Pointer = value * 3
  });

  int teamAScore = teamAFreeThrows + teamA2Pointer + teamA3Pointer;
  int teamBScore = teamBFreeThrows + teamB2Pointer + teamB3Pointer;
  
  return teamAScore > teamBScore ? 1 : teamAScore < teamBScore ? 2 : 0;
}
