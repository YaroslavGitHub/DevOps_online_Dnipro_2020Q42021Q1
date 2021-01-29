# Task 5.3

## Module 5

### Linux PART 1

1. How many states could has a process in Linux?
[info](https://medium.com/@cloudchef/linux-process-states-and-signals-a967d18fab64)
Linux has basically 5 states:
Running/Runnable (R): running processes are processes using a CPU core right now, a runnable process is a process that has everything to run and is just waiting for a CPU core slot.
Sleeping: a sleeping process is a process waiting for a resource to be available (for example, a I/O operation to complete) or an event to happen (like a certain amount of time to pass). The difference between process in Interruptible Sleep (S) state and Uninterruptible Sleep (D) is that the former will wake up to handle signals while the former won't. We'll talk about signals in a moment, but let's suppose that a process is waiting for a I/O operation to complete before wake up. If in the meantime, it receives a signal to terminate (SIGKILL), it will terminate before having the chance to handle the requested data. That's why I/O operations normally go to uninterruptible sleep while waiting for the result: they will wake up with when the operation is ready, handle the result and, only then, check for any pending signal to handle. Processes that can be terminated before the wake up condition is fulfilled without any consequence usually go to interruptible sleep instead.
Stopped (T): a process becomes stopped when it receives the SIGSTOP signal (not unlike when you press ctrl+z in the shell, although ctrl+z sends a SIGTSTP instead). When stopped, the process execution is suspended and the only signals it will handle are SIGKILL and SIGCONT. The former will remove the process permanently, while the later will put the process back to the Running/Runnable state (like when you run fg or bg after pressing ctrl+z in the shell).
Zombie (Z): we briefly talked about zombie processes when we discussed system calls. When a process finishes with exit() system call, its state needs to be "reaped" by its parent (calling wait()); in the meantime, the child process remains in zombie state (not alive nor dead).
2. Examine the pstree command. Make output (highlight) the chain (ancestors) of the current
process.
[info](https://linuxize.com/post/pstree-command-in-linux/)
It is similar to ps , but instead of listing the running processes, it shows them in a tree. The tree-like format is a more convenient way to display the processes hierarchy and makes the output more visually appealing.

How to Use the pstree Command
The general syntax for the pstree command is as follows:

ps [OPTIONS] [USER or PID]
Copy
In it’s simplest form when invoked without any option or argument, pstree displays a hierarchical tree structure of all running processes:

pstree

Highlighting
pstree also allows you to highlight processes for better visual representation.

The -h option instructs pstree to highlight the current process and all its ancestors.
pstree -h
To highlight a specific process, use the -H option followed by the process ID:

pstree -H PID_NUMBER
If the highlighting is not supported, the command will exit with an error.

Conclusion
The pstree command displays the running processes in the form of a tree structure.

For information about all available pstree options, type man pstree in your terminal.
3. What is a proc file system?
[Info](https://www.geeksforgeeks.org/proc-file-system-linux/)
Proc file system (procfs) is virtual file system created on fly when system boots and is dissolved at time of system shut down.

It contains the useful information about the processes that are currently running, it is regarded as control and information centre for kernel.

The proc file system also provides communication medium between kernel space and user space.
4. Print information about the processor (its type, supported technologies, etc.).
[Info](https://www.tecmint.com/check-linux-cpu-information/)
Get CPU Info Using cat Command.
lscpu Command – Shows CPU Architecture Info.
cpuid Command – Shows x86 CPU.
dmidecode Command – Shows Linux Hardware Info.
Inxi Tool – Shows Linux System Information.
lshw Tool – List Hardware Configuration.
hardinfo – Shows Hardware Info in GTK+ Window.
hwinfo – Shows Present Hardware Info.
nproc – Print Number of Processing Units.
5. Use the ps command to get information about the process. The information should be as
follows: the owner of the process, the arguments with which the process was launched for
execution, the group owner of this process, etc.
[info](https://linuxhint.com/ps_command_linux/)
The full form of ps is process status. It is a command used to find information about currently running processes on Linux. ps is a very important command of Linux.In this article, I will show you how to use the ps command to find running processes on Linux.
6. How to define kernel processes and user processes?
[info](https://www.geeksforgeeks.org/user-mode-and-kernel-mode-switching/?ref=rp)
The User mode is normal mode where the process has limited access. While the Kernel mode is the privileged mode where the process has unrestricted access to system resources like hardware, memory, etc. A process can access I/O Hardware registers to program it, can execute OS kernel code and access kernel data in Kernel mode. Anything related to Process management, IO hardware management, and Memory management requires process to execute in Kernel mode.
7. Print the list of processes to the terminal. Briefly describe the statuses of the processes.
What condition are they in, or can they be arriving in?
[info](https://www.hostinger.com/tutorials/vps/how-to-manage-processes-in-linux-using-command-line)
There are several commands that you can use to list running processes: ps, top, and htop.
You can use ps aux to get more in-depth information about your running processes. Here’s a breakdown of each argument:

a option outputs all running processes of all users in the system.
u option provides additional information like memory and CPU usage percentage, the process state code, and the owner of the processes.
x option lists all processes not executed from the terminal. A perfect example of this are daemons, which are system-related processes that run in the background when the system is booted up.
Aside from those two options, here are some other common examples of the ps command that list running processes in Linux:

ps -u [username] lists all running processes of a certain user.
ps -e or ps -A displays active Linux processes in the generic UNIX format.
ps -T prints active processes that are executed from the terminal.
Ps -C process_name will filter the list by the process name. In addition, this command also shows all child processes of the specified process.
The top command is used to discover resource-hungry processes. This Linux command will sort the list by CPU usage, so the process which consumes the most resources will be placed at the top.

Unlike the ps command, the output of the top command is updated periodically. That means you’ll see real-time updates for CPU usage and running time.
__Keys Functions
k Kills a process
M Sorts the list by memory usage.
N Sorts the list by PID.
r Changes the priority of a process.
h Displays the help window.
z Displays running processes in colors.
d Changes the refresh time interval.
c Displays the absolute path of a process.__
Running “htop” Command.
If you use Ubuntu, you can install htop by running the following command:

__sudo apt-get install htop__
Keys Functions
F9 To kill a process.
F8 Increase the priority of a process.
F7 Decrease the priority of a process.
F6 Sort processes by any column.
F5 Display processes in a tree view.
F4 Filter the processes by name.
F3 Search for a process.
F2 Open htop setup.
F1 Display the help menu.
Conclusion
It is important to know how to list all running processes in your Linux operating system. The knowledge will be useful when you need to manage processes.

Let’s take a look once more at the three commands that you can use to list Linux processes:

ps command — outputs a static view of all processes.
top command — displays the real-time list of all running processes.
htop command — shows the real-time result and is equipped with user-friendly features.
8. Display only the processes of a specific user.
9. What utilities can be used to analyze existing running tasks (by analyzing the help for the ps
command)?
10. What information does top command display?
11. Display the processes of the specific user using the top command.
12. What interactive commands can be used to control the top command? Give a couple of
examples.
13. Sort the contents of the processes window using various parameters (for example, the
amount of processor time taken up, etc.)
14. Concept of priority, what commands are used to set priority?
15. Can I change the priority of a process using the top command? If so, how?
16. Examine the kill command. How to send with the kill command
process control signal? Give an example of commonly used signals.
17. Commands jobs, fg, bg, nohup. What are they for? Use the sleep, yes command to
demonstrate the process control mechanism with fg, bg.
