import 'package:flutter/material.dart';


class Tasks extends StatefulWidget {
  static const routeName = '/task-assignment';
  const Tasks({super.key});

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  final _taskController = TextEditingController();
  final List <String> _tasks = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assign Tasks"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
        child: Column(
          children: [
            const SizedBox(height: 30,),
            const Text("Enter Tasks you want completed for you by your volunteer!",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
        ),
            const SizedBox(height: 30,),
            TextField(
              controller: _taskController,
  decoration: const InputDecoration(
    
    border: OutlineInputBorder(),
    hintText: 'Add task',
  ),

),

const SizedBox(height: 70,),

Expanded(
  child: ListView.builder(
    itemCount: _tasks.length,
    itemBuilder: (context, index) {
      return Column(
        children: [
        ListTile(
          
            title: Text(
              _tasks[index],
              style: const TextStyle(
              fontSize: 30,
              
            ),
              ),
            
            trailing: ElevatedButton(onPressed: () {
              removeTask(index);
            }, child: const Text("X"))
        
        ),
        const SizedBox(height: 36,)
        ],
      );
      
    },
  ),
),


const SizedBox(height: 50,),
ElevatedButton(
  onPressed: addTask,
  child: const Text("Submit")),
          ],
      ),
      ),
      ),
    );
    
  }
  void addTask () {
  String task = _taskController.text;
  if (task.isNotEmpty) {
    setState((){
      _tasks.add(task);

    });
    _taskController.clear();  
  }
}

void removeTask(int index) {
  setState(() {
    _tasks.removeAt(index);
  });
  
}

}


