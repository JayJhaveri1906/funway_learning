import 'dart:convert';
import 'dart:io';
import 'package:funwaylearning/models/channel.dart';
import 'package:funwaylearning/models/video.dart';
import 'package:funwaylearning/utilities/key.dart';
import 'package:http/http.dart' as http;




class APIService {
  APIService._instantiate();

  static final APIService instance = APIService._instantiate();

  final String _baseUrl = 'www.googleapis.com';//'https://www.youtube.com/c/Cocomelon';

  String _nextPageToken = '';

  Future<Channel> fetchChannel({String channelId}) async {
    Map<String, String> parameters = {
      'part': 'snippet, contentDetails, statistics',
      'id': channelId,
      'key': API_KEY,
    };

    Uri uri = Uri.https(
      _baseUrl,
     //'https://www.bing.com/videos/search?q=youtube+twikle+star&qpvt=youtube+twikle+star&view=detail&mid=449A48332F5BDAE33143449A48332F5BDAE33143&&FORM=VRDGAR&ru=%2Fvideos%2Fsearch%3Fq%3Dyoutube%2Btwikle%2Bstar%26qpvt%3Dyoutube%2Btwikle%2Bstar%26FORM%3DVDRE',
      '/youtube/v3/channels',
      parameters,
    );

    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    // Get Channel

    var response = await http.get(uri, headers: headers);

    if (response.statusCode == 200) {
      Map<String, dynamic> data = json.decode(response.body)['items'][0];

      Channel channel = Channel.fromMap(data);

      // Fetch first batch of videos from uploads playlist

      channel.videos = await fetchVideosFromPlaylist(
        playlistId: channel.uploadPlaylistId,
      );

      return channel;
    } else {
      throw json.decode(response.body)['error']['message'];
    }
  }

  Future<List<Video>> fetchVideosFromPlaylist({String playlistId}) async {
    Map<String, String> parameters = {
      'part': 'snippet',
      'playlistId': playlistId,
      'maxResults': '8',
      'pageToken': _nextPageToken,
      'key': API_KEY,
    };

    Uri uri = Uri.https(
      _baseUrl,
      //'https://www.bing.com/videos/search?q=youtube+twikle+star&qpvt=youtube+twikle+star&view=detail&mid=449A48332F5BDAE33143449A48332F5BDAE33143&&FORM=VRDGAR&ru=%2Fvideos%2Fsearch%3Fq%3Dyoutube%2Btwikle%2Bstar%26qpvt%3Dyoutube%2Btwikle%2Bstar%26FORM%3DVDRE',
      '/youtube/v3/playlistItems',
      parameters,
    );

    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    // Get Playlist Videos

    var response = await http.get(uri, headers: headers);

    if (response.statusCode == 200) {
      var data = json.decode(response.body);

      _nextPageToken = data['nextPageToken'] ?? '';

      List<dynamic> videosJson = data['items'];

      // Fetch first eight videos from uploads playlist

      List<Video> videos = [];

      videosJson.forEach(
        (json) => videos.add(
          Video.fromMap(json['snippet']),
        ),
      );

      return videos;
    } else {
      throw json.decode(response.body)['error']['message'];
    }
  }
}
