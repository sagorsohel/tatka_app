import 'package:bloc_ecommerce/src/blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../routes/route_pages.dart';
import '../widgets/widgets.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Sign Up",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              TextField(
                decoration: InputDecoration(
                  label: Text(
                    'username',
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: Theme.of(context).colorScheme.outlineVariant),
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  label: Text(
                    'username',
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: Theme.of(context).colorScheme.outlineVariant),
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  label: Text(
                    'username',
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: Theme.of(context).colorScheme.outlineVariant),
                  ),
                ),
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Remember me! ",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onSurface),
                  ),
                  BlocBuilder<RememberSwitchCubit, RememberSwitchState>(
                    builder: (context, state) {
                      return Switch(
                          onChanged: (value) => context
                              .read<RememberSwitchCubit>()
                              .toggleSwitch(value),
                          value:
                              state is ChangeSwitchState ? state.value : true);
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomButton(
          onTap: () => context.pushNamed(Routes.REGISTER_ROUTE),
          text: 'Sign Up'),
    );
  }
}
