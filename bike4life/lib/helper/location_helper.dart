const GOOGLE_API_KEY = 'AIzaSyATonUpNaMgyGig91zdyc38Oku5kJ1MLL8';

//SHA-1: FD:A8:00:94:8D:59:B5:7D:77:EF:FE:6E:F4:D9:27:99:8F:B7:7C:59
//pacote: com.example.bike4life

class LocationHelper{
  static String generateLocationPreviewImage({double latitude, double longitude}){
    return 'https://maps.googleapis.com/maps/api/staticmap?center=&$latitude,$longitude&zoom=16&size=600x300&maptype=roadmap&markers=color:red%7Clabel:C%7C$latitude,$longitude&key=$GOOGLE_API_KEY';
  }
}