Future<void> usersCount() async {
    int user = await fetchUsersCount();

    print(user);
}