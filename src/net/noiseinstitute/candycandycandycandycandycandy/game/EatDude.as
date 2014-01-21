package net.noiseinstitute.candycandycandycandycandycandy.game {
    import net.flashpunk.Entity;
    import net.flashpunk.graphics.Image;

    public class EatDude extends Entity {
        [Embed(source="EatDude.png")]
        private static var GRAPHIC:Class;

        public function EatDude() {
            this.graphic = new Image(GRAPHIC);
        }
    }
}
