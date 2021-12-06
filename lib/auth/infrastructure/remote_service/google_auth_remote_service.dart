import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pro_area_flutter_task_v2/core/infrastucture/exceptions.dart';

class GoogleAuthRemoteService {
  final GoogleSignIn _googleSignIn;
  final FirebaseAuth _firebaseAuth;

  GoogleAuthRemoteService(this._firebaseAuth, this._googleSignIn);

  Future<UserCredential> login() async {
    try {
      GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
      GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount!.authentication;
      AuthCredential authCredential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      _firebaseAuth.authStateChanges();
      _firebaseAuth.authStateChanges();
      return await _firebaseAuth.signInWithCredential(authCredential);
    } on FirebaseAuthException {
      throw AuthException();
    } catch (e) {
      throw UnknownExeption();
    }
  }

  Future<void> logout() async {
    await _googleSignIn.disconnect();
    await _firebaseAuth.signOut();
  }
}
