int whoWins(Map<String, int> team1, Map<String, int> team2) {
  
  num getScore(Map team) {
    num points = 0;
    team.forEach((key, value) {
      if (key == 'Free throws') {
        points += value;
      } else if (key == '2 pointer') {
        points += value * 2;
      } else if (key == '3 pointer') {
        points += value * 3;
      }
    });
  return points;
  }

  num teamAScore = getScore(team1);
  num teamBScore = getScore(team2);
  
  return teamAScore > teamBScore ? 1 : teamAScore < teamBScore ? 2 : 0;
}
