# Operating Systems

## Processes and Threads

* Processes
  * Creation
  * Termination
  * Hierarchies
  * States
* Threads
* Interprocess Communication
  * Race Conditions
  * Critical Regions
  * Mutual Exclusion with Busy Waiting
  * Semaphores
  * Mutexes
  * Monitors
  * Message Passing
  * Barriers
* Scheduling
  * Batch Systems
  * Interactive Systems
  * Real-Time Systems
  * Thread Scheduling

## Memory Management

* Address Spaces
  * Swapping
  * Managing Free Memory
* Virtual Memory
  * Paging
  * Page Tables
  * Speeding Up Paging
* Page Replacement Algorithms
  * The Optimal Page Replacement Algorithm
  * The Not Recently Used Page Replacement Algorithm
  * The First-In, First-Out (FIFO) Page Replacement Algorithm
  * The Second-Chance Page Replacement Algorithm
  * The Clock Page Replacement Algorithm
  * The Least Recently Used (LRU) Page Replacement Algorithm
  * The Working Set Page Replacement Algorithm
  * The WSClock Page Replacement Algorithm
* Design Issues For Paging Systems
  * Page Size
  * Shared Pages
  * Mapped Files

## File Systems

* Files
  * File Naming
  * File Structure
  * File Types
  * File Access
  * File Attributes
  * File Operations
* Directories
  * Single-Level Directory Systems
  * Hierarchical Directory Systems
  * Path Names
  * Directory Operations
* File-System Implementation
  * File-System Layout
  * Implementing Files
  * Implementing Directories
  * Shared Files
  * Journaling File Systems
  * Virtual File Systems
* File-System Management and Optimization
  * Disk-Space Management
  * File-System Backups
  * File-System Consistency
  * File-System Performance
  * Defragmenting Disks

## Input/Output

* Principles of I/O Hardware
  * I/O Devices
  * Device Controllers
  * Memory-Mapped I/O
  * Direct Memory Access
* Principles of I/O Software
  * Goals of the I/O Software
  * Programmed I/O
  * Interrupt-Driven I/O
  * I/O Using DMA
* I/O Software Layers
  * Interrupt Handlers
  * Device Drivers
  * Device-Independent I/O Software
  * User-Space I/O Software
* Disks
  * Disk Hardware
  * Disk Formatting
  * Disk Arm Scheduling Algorithms
  * Error Handling

## Deadlocks

* Resources
  * Preemptable and Nonpreemptable Resources
  * Resource Acquisition
* Deadlocks
  * Conditions for Resource Deadlocks
  * Deadlock Modeling
* Deadlock Detection and Recovery
  * Deadlock Detection with One Resource of Each Type
  * Deadlock Detection with Multiple Resources of Each Type
  * Recovery from Deadlock
* Deadlock Avoidance
  * Resource Trajectories
  * Safe and Unsafe States
  * The Banker’s Algorithm for a Single Resource
  * The Banker’s Algorithm for Multiple Resources
* Deadlock Prevention
  * Attacking the Mutual-Exclusion Condition
  * Attacking the Hold-and-Wait Condition
  * Attacking the No-Preemption Condition
  * Attacking the Circular Wait Condition
* Other Issues
  * Two-Phase Locking
  * Communication Deadlocks
  * Livelock
  * Starvation

## Virtualization and the Cloud

* Type 1 and Type 2 Hypervisors
* Techniques for Efficient Virtualization
* Memory Virtualization
* I/o Virtualization

## Multiple Processor Systems

* Multiprocessors
  * Multiprocessor Hardware
  * Multiprocessor Operating System Types
  * Multiprocessor Synchronization
  * Multiprocessor Scheduling
* Multicomputers
  * Multicomputer Hardware
  * Low-Level Communication Software
  * User-Level Communication Software
