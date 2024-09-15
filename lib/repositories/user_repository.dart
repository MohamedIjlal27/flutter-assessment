class UserRepository {
  Future<void> authenticate(
      {required String email, required String password}) async {
    // Simulate network delay
    await Future.delayed(Duration(seconds: 2));

    // Simulate authentication
    if (email == 'test@example.com' && password == 'password') {
      return;
    } else {
      throw Exception('Invalid email or password');
    }
  }
}
