# Dimensions of Gosu

In this section we take a look at how Gosu deals with matters like pixels,
angles and time. All of these have a profound impact on the logic of the games
we want to write. In particular we will examine how we can manage these
dimensions and make them work with us, rather than being a source of defects
and frustration.

Almost universal to games is the concept of simulation. The game is a stylized,
simplified replica of some version of the real world. Albeit, a world the
sometimes is made up of useless royalty, evil dragons, and heroic plumbers.
Above all, a world filled with things!

* Things in the background.
* Things in the foreground.
* Things that stay still.
* Things that move.
* Things that turn and spin.

Sometime even things that are affected by gravity, thrust, drag, inertia and
collisions with asteroids and photon torpedoes.
