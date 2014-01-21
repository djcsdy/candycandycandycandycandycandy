package net.noiseinstitute.candycandycandycandycandycandy {
    import net.flashpunk.World;

    public class GameWorld extends World {
        public function GameWorld() {
            add(new ScrollyTitleLine(128, -2));
            // add(new PressStartText());
            // add(new CreditText());
        }
    }
}
