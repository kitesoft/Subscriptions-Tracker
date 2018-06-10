import 'package:flutter/material.dart';
import 'package:subscriptions_tracker/models/subscription.dart';
import 'package:subscriptions_tracker/utils/app_text_styles.dart';
import 'package:subscriptions_tracker/utils/helper_functions.dart';

class SubscriptionListTile extends StatelessWidget {
  const SubscriptionListTile({
    Key key,
    @required this.subscription,
  }) : super(key: key);

  final Subscription subscription;

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      isThreeLine: true,
      leading: new CircleAvatar(
          backgroundColor: subscription.color,
          child: new Text(
            subscription.name[0],
            style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          )),
      title: new Text(
        subscription.name,
        style: AppTextStyles.drawerItem,
      ),
      subtitle: new Text(
          'Started on ${HelperFunctions.dateFormatDMY(subscription.dateOfCreation)}\nPayment every ${subscription.period.inDays} days'),
      trailing: new Text('\$${subscription.fee}'),
      onTap: () {},
    );
  }
}
