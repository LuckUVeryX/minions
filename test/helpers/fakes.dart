import 'package:supabase_flutter/supabase_flutter.dart';

const fakeUser = User(
  id: 'id',
  appMetadata: {},
  userMetadata: {},
  aud: 'authenticated',
  createdAt: '0000-01-01T00:00:00.000Z',
);

final fakeSession = Session(
  accessToken: 'accessToken',
  tokenType: 'tokenType',
  user: fakeUser,
);
