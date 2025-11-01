import 'package:agentiq/agentiq.dart';
import 'package:codefarms_core/di/getit.dart';
import 'package:codefarms_core/widgets/bloc/user_session_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

showLogoutDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Logout"),
        content: Text("Are you sure you want to logout?"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("Cancel"),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              getIt<UserSessionBloc>().add(UserSessionLogOutRequestEvent());
            },
            child: Text("Logout"),
          ),
        ],
      );
    },
  );
}

class ProfileCardAreaWidget extends StatefulWidget {
  const ProfileCardAreaWidget({super.key});

  @override
  State<ProfileCardAreaWidget> createState() => _ProfileCardAreaWidgetState();
}

class _ProfileCardAreaWidgetState extends State<ProfileCardAreaWidget> {
  Color _bgColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => () {},
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          MouseRegion(
            onEnter:
                (event) => setState(() {
                  _bgColor = Colors.black;
                }),
            onExit:
                (event) => setState(() {
                  _bgColor = Colors.transparent;
                }),
            child: Container(
              decoration: BoxDecoration(
                color: _bgColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: BlocBuilder<UserSessionBloc, UserSessionState>(
                bloc: getIt<UserSessionBloc>(),
                buildWhen: (previous, current) => previous.user != current.user,
                builder: (context, state) {
                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Gaps.w32,
                      Text(
                        (state.user?.name ?? "User Not Found"),
                        style: Theme.of(
                          context,
                        ).textTheme.bodyMedium?.copyWith(fontSize: 12),
                      ),
                      if (!isMobile(context)) Gaps.w16,
                      CircleAvatar(
                        radius: (!isMobile(context)) ? 24 : 16,
                        backgroundImage:
                            state.user?.profilePictureUrl != null &&
                                    state.user!.profilePictureUrl!.isNotEmpty
                                ? NetworkImage(state.user!.profilePictureUrl!)
                                : AssetImage('assets/images/profile.jpeg'),
                        child: null,
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
