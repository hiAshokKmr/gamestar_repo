import 'package:flutter/material.dart';

class TaskScreen extends StatefulWidget {
  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {

  Map<int, bool> _loadingStates = {};

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:16,bottom:60,left: 16,right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'GameStar Labs',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Discover carefully selected project, earn extra\nGameStar point and unlock potential airdrops',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              const SizedBox(height: 20),
              _buildCard(
                title: 'X Empire Quest',
                subtitle: '0/3 tasks, +999 BP',
                actionText: 'Open',
                actionCallback:()=>_handleClick(actionCallback: (){
                  //function goes here
                },taskId:66),
                buttonCliked: _loadingStates[66] ?? false,
              ),
              const Divider(color: Colors.grey),
              const SizedBox(height: 20),
              const Text(
                'Game Star Social',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Join GameStar community, be aware of new and following update, find your tribe in GameStar',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              const SizedBox(height: 20),
              _buildTask(
                icon: Icons.facebook,
                taskText: 'Join GameStar Instagram',
                points: '+90',
                actionText: 'Start',
                actionCallback:()=>_handleClick(actionCallback: (){
                  //function goes here
                },taskId:00),
                buttonCliked: _loadingStates[00] ?? false,
              ),
              _buildTask(
                icon: Icons.telegram,
                taskText: 'Subscribe to GameStar Telegram',
                points: '+90',
                actionText: 'Start',
                actionCallback:()=>_handleClick(actionCallback: (){
                  //function goes here
                },taskId:11),
                buttonCliked: _loadingStates[11] ?? false,
              ),
              _buildTask(
                icon: Icons.change_history, // Replace with Twitter/X icon
                taskText: 'Follow GameStar on X',
                points: '+90',
                actionText: 'Start',
                actionCallback:()=>_handleClick(actionCallback: (){
                  //function goes here
                },taskId:22),
                buttonCliked: _loadingStates[22] ?? false,
              ),
              _buildTask(
                icon: Icons.facebook,
                taskText: 'Join GameStar Facebook',
                points: '+90',
                actionText: 'Start',
                actionCallback:()=>_handleClick(actionCallback: (){
                  //function goes here
                },taskId:33),
                buttonCliked: _loadingStates[33] ?? false,
              ),
              const Divider(color: Colors.grey),
              const SizedBox(height: 20),
              const Text(
                'Tasks',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'We\'ll reward you immediately with points after each task completion.',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              const SizedBox(height: 20),
              _buildTask(
                icon: Icons.wallet,
                taskText: 'Connect ton Wallet',
                points: '+90',
                actionText: 'Start',
                actionCallback:()=>_handleClick(actionCallback: (){
                  //function goes here
                },taskId:44),
                buttonCliked: _loadingStates[44] ?? false,
              ),
              _buildTask(
                icon: Icons.group_add,
                taskText: 'Join or create tribe',
                points: '+90',
                actionText: 'Start',
                actionCallback:()=>_handleClick(actionCallback: (){
                  //function goes here
                },taskId:55),
                buttonCliked: _loadingStates[55] ?? false,
              ),
            ],
          ),
        ),
    );
  }


  void _handleClick({required VoidCallback actionCallback,required int taskId })async{
    debugPrint("function triggered");
    setState(() {
      _loadingStates[taskId]=true;
      debugPrint("check state ${taskId},${ _loadingStates[taskId]}");
    });
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      _loadingStates[taskId]=false;
      debugPrint("check state ${taskId},${ _loadingStates[taskId]}");
    });
    actionCallback();
  }



  Widget _buildCard({
    required String title,
    required String subtitle,
    required String actionText,
    required VoidCallback actionCallback,
    required bool buttonCliked
  }) {
    return Card(
      color: Colors.grey[850],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(color: Colors.grey),
        ),
        trailing: ElevatedButton(
          onPressed: buttonCliked?null: actionCallback,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey[700],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: buttonCliked?const SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(
              strokeWidth: 2.0,
              color:Color(0xFFD3D3D3),
            ),
          ):Text(actionText,style:const TextStyle(color:Color(0xFFD3D3D3),),),
        ),
      ),
    );
  }






  Widget _buildTask({
    required IconData icon,
    required String taskText,
    required String points,
    required String actionText,
    required VoidCallback actionCallback,
    required bool buttonCliked
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.white),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              taskText,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          Text(points, style: const TextStyle(color: Colors.grey)),
          const SizedBox(width: 10),
          ElevatedButton(
            onPressed: buttonCliked ?null:actionCallback,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey[700],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: buttonCliked?const SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                strokeWidth: 2.0,
                color:Color(0xFFD3D3D3),
              ),
            ):Text(actionText,style:const TextStyle(color:Color(0xFFD3D3D3),),),
          ),
        ],
      ),
    );
  }
}
