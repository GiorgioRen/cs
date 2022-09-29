# Virtualization & Cloud Computing

*Computer Science 2022*

## Introduction to Virtualization & Cloud Computing

> Virtualization is the application of the layering principle through enforced modularity,
> whereby the exposed virtual resource is identical to the underlying physical resource being virtualized

- **layering**: presenting a single abstraction by adding a level of indirection using namespaces
- **enforced modularity**: guarantees that the client of the layer **cannot bypass the abstraction** layer

- Examples of virtualization:
  - java virtual machine (JVM)
  - operating systems (OS)
  - RAID disk (redundant array of independent disks)
  - virtual memory (?)

## Virtualization tecniques

- **multiplexing**
  - single resource
  - resource shared by multiple entities
  - *ex: cpu used by many processes*
- **aggregation**
  - multiple physical resources
  - seen as a single virtual unit
  - *ex: multiple disks in pc*
- **emulation**
  - exposes a virtual resource that correspond to a different physical system
  - ex: emulate ARM cpu running on a real X86 cpu
    - emulation used to use something not designed to work with my hardware (emulating interface for my network card)

# Virtual Machines

> Complete compute environment with its own **isolated** processing capabilities, memory & communication channels
>

## Lightweight VM

Relies on hw & sw isolation techniques to ensure that application running directly on processor are securely isolated from other and the underlying OS

*example of lightweight VMs are **containers***

## System Level VM

resembles the HW of a computer and can run OS + applications in isolation from all the other VMs and the environment

## Hypervisor (or VMM)

Part of system level VMs

Special form of system sw that runs VMs with goal of minimizing overhead

works using:

- multiplexing – allocates the physical resources among the VMs
- emulation – for portability and compatibility

**Types of hypervisor**

- t**ype 1** (or baremetal)
acts like a **lightweight OS** and runs directly on hardware (ex. KVM of linux kernel)
- **type 2** (or hosted)
runs inside an OS just like any other application (ex: VMware, QEMU, VirtualBox)

![Schermata 2022-09-19 alle 22.00.58.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/3f8362a1-663d-4cc0-8e6e-cda2503e3702/Schermata_2022-09-19_alle_22.00.58.png)

# Popek & Goldberg

- **equivalence**: duplication, the exposed resource is equivalent with the underlying system
- **safety**: isolation requires that vms are isolated from eachother and the hypervisor has full control
- **performance**: efficiency, hypervisor should have minimal overhead

## Preliminaries

### CPU Privilege Rings

- lower number = high privilege
- some cpu instructions only available on lower rings
- ring 0 is for kernel
- interrupts change to ring 0

### Instruction classes

- privileged: can only be executed in supervisor mode, cause trap when used in user mode
- sensitive: they update system state (control-sensitive) or are dependent on the actual system state (behaviour-sensitive)
- innocuous: unprivileged and non sensitive

> VMM can be constructed if sensitive instructions are **subset** of the privileged instructions
>

## Trap emulation

- VMM executed in ring 0 (privileged mode)
- VMs instructions are run by the real CPU
- when VM tries to run privileged instruction it fires a trap
- trap exception is managed by the VMM that emulates the effects of that privileged instruction
- control returns to VM

> VMM is a sort of “middleman” between VMs & bare metal HW
>

<aside>
💡 All modern CPUs have instructions that violates P/G theorem
Some privileged instructions run in Ring1 do not really change Ring

</aside>


# Dynamic Binary Translation

- DBT compiles a group of instructions into a fragment of **executable code**
- code stored in a (large) buffer called **Translation Cache** TC so can be reused
- DBT has **well-known optimisations**

## Para–virtualisation

Guest OS kernel is **modified** to call special **hypercalls** that are used to speak to the hypervisor

Modern OSs are modular, so Guest Tools can be installed to have paravirtualization

> example, VMware tools service provides backdoor to the VMM hypervisor to sincronize time after sleep mode
>

Pros & Cons

- high efficiency
- requires OS modification so vendors have to implement this functionality (or open source sw)
- each VMM has its own hypercalls (some attempts to create open interfaces exists)

## HW assisted virtualization

- introduced by intel & amd circa 2005
- recent hypervisor only work with hw assisted cpus

# Memory Virtulization

- preliminaries
  - virtual memory is memory controlled by OS,
  - virtual and physical memory split in blocks (pages for virtual & frames for physical)
  - MMU (memory management unit) translates virtual & physical
  - translation uses Transaltion-Lookaside Buffer (TLB) for caching

## Shadow Page Tables

- SPT maps guest virtual address space to the host physical
- used to keep track of the state of the vm, mapping its address space to the real memory
- ⚠️ if vm is able to use physical ram directly it basically have full access to the system
- Guest page tables are kept in read only mode
- when GOS tries to change page table, it gets a page fault, managed by the VMM that also updates the shadow page table

## Second Layer Address Translation (SLAT)

- purely sw managed solution
- hw assisted solution for memory virtualization
- extends PTs so they can have several layers of mapping
- no need to maintain SPTs and no need to VM exits

## Memory Ballooning

- used to reclaim guest os memory space
- VMM does’t know what pages are necessary
- VMM instructs a driver inside guest os to inflate memory putting pressure on guest os memory management algorithms reclaiming memory space
- deflating the balloon frees up memory for usage inside guest os

