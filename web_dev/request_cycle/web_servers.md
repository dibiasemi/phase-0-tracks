What are some of the key design philosophies of the Linux operating system?

Linux borrrows heavily from the UNIX operating system because it was written to be a free and open source version of UNIX. Files are stored in a hierarchial filesystem and it is designed for those developers who "know what they are doing"; it was not designed for and does not assume that the user is incompetent. Linux allows each user to do his/her own thing with a wide choice of powerful tools; flexibility, simplicity, and freedom when designing and building software systems.

In a nutshell; All users who are using Linux know what they are doing, and treat them with respect; no handholding and let them do what they want.

**Sources: https://opensource.com/business/14/12/linux-philosophy
           http://studylib.net/doc/7122498/linux-philosophy-and-concepts

In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?

VPS is a way to run any and/or many different operating systems on a server. Advantages of VPS could be different based on the usage of it, but it allows you to  test out software on many versions of operating systems all on the same machine.


Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?

If you're planning on keeping your VPS for awhile, it's important to make a new Linux user - it's not a good idea to stay as the Root user because it is a "special user" which gives you or someone else the ability to do anything without asking for persmission; all applications are more susceptible to viruses and security breaches. Always switch to, login and operate as your own persoanl user.