import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dartssh2/dartssh2.dart';

StateProvider<double?> lPercentageProv = StateProvider((ref) => null);

StateProvider<String> ipProv = StateProvider((ref) => '');
StateProvider<String?> usernameProv = StateProvider((ref) => null);
StateProvider<String?> passwordProv = StateProvider((ref) => null);
StateProvider<int> portProv = StateProvider((ref) => 22);

StateProvider<int> rigsProv = StateProvider((ref) => 3);
StateProvider<int> leftRigProv = StateProvider((ref) => 3);
StateProvider<int> rightRigProv = StateProvider((ref) => 2);

void setRigs(int rig, WidgetRef ref) {
  ref.read(rigsProv.notifier).state = rig;
  ref.read(leftRigProv.notifier).state = (rig ~/ 2) + 2;
  ref.read(rightRigProv.notifier).state = (rig ~/ 2) + 1;
}

StateProvider<SSHClient?> sshClient = StateProvider((ref) => null);
StateProvider<bool> isConnectProv = StateProvider((ref) => false);
