const MAPBOX_API_KEY = 'pk.eyJ1IjoiZ2Fydm1hZ2d1IiwiYSI6ImNrYjYyNmYwMDFiY2Myc3Bkc2l1NWdiZzAifQ.V6DVY3s_J7ngfO-mPR34Ng';

class LocationHelper {
  static String generateLocationPreviewImage(double latitude, double longitude) {
    return 'https://api.mapbox.com/styles/v1/mapbox/streets-v11/static/pin-s-cross+285A98($longitude,$latitude)/$longitude,$latitude,13.44,0/600x300?access_token=$MAPBOX_API_KEY';
  }
}