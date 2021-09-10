import 'package:places/domain/sight.dart';

final List<Sight> mocks = [
  const Sight(
    name: 'Coliseum',
    lat: 41.5324,
    lon: 12.2932,
    url:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Colosseum_in_Rome%2C_Italy_-_April_2007.jpg/1920px-Colosseum_in_Rome%2C_Italy_-_April_2007.jpg',
    details:
        'The Colosseum, is an oval amphitheatre in the centre of the city of Rome, Italy, just east of the Roman Forum and is the largest ancient amphitheatre ever built, and is still the largest standing amphitheater in the world today, despite its age. Construction began under the emperor Vespasian (r. 69–79 AD) in 72 and was completed in AD 80 under his successor and heir, Titus (r. 79–81). Further modifications were made during the reign of Domitian (r. 81–96).',
    type: 'historical landmark',
  ),
  const Sight(
    name: 'Wembley Stadium',
    lat: 51.3316,
    lon: 0.1737,
    url:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Wembley_Stadium_interior.jpg/1920px-Wembley_Stadium_interior.jpg',
    details: '''
  Wembley Stadium (branded as Wembley Stadium connected by EE for sponsorship reasons) is a football stadium in Wembley,
  London. It opened in 2007 on the site of the original Wembley Stadium, which was demolished from 2002 to 2003.
  The stadium hosts major football matches including home matches of the England national football team, and the
  FA Cup Final. Wembley Stadium is owned by the governing body of English football, the Football Association (the FA),
  whose headquarters are in the stadium, through its subsidiary Wembley National Stadium Ltd (WNSL).
  With 90,000 seats, it is the largest stadium in the UK and the second-largest stadium in Europe.''',
    type: 'sports construction',
  ),
  const Sight(
      name: 'Niagara Falls',
      lat: 43.0799,
      lon: 79.0747,
      url:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/3Falls_Niagara.jpg/1920px-3Falls_Niagara.jpg',
      details: '''
  Niagara Falls /naɪˈæɡrə, naɪˈæɡərə/ is a group of three waterfalls at the southern end of Niagara Gorge,
  spanning the border between the province of Ontario in Canada and the state of New York in the United States.
  The largest of the three is Horseshoe Falls, also known as Canadian Falls, which straddles the international
  border of the two countries.[1] The smaller American Falls and Bridal Veil Falls lie within the United States.
  Bridal Veil Falls is separated from Horseshoe Falls by Goat Island and from American Falls by Luna Island,
  with both islands situated in New York.
  Flowing north as part of the Niagara River, which drains Lake Erie into Lake Ontario, the combined falls
  have the highest flow rate of any waterfall in North America that has a vertical drop of more than 50 m (160 ft).
  During peak daytime tourist hours, more than 168,000 m3 (six million cubic feet) of water goes over the crest of
  the falls every minute.[2] Horseshoe Falls is the most powerful waterfall in North America, as measured by flow rate.
  Niagara Falls is famed for its beauty and is a valuable source of hydroelectric power.
  Balancing recreational, commercial, and industrial uses has been a challenge for the stewards 
  of the falls since the 19th century.''',
      type: 'natural wonder'),
];
