package net.noiseinstitute.candycandycandycandycandycandy.title {
    import net.noiseinstitute.candycandycandycandycandycandy.*;
    import net.flashpunk.Entity;
    import net.flashpunk.Graphic;
    import net.flashpunk.graphics.Graphiclist;
    import net.flashpunk.graphics.Text;
    import net.noiseinstitute.basecode.Range;

    public class ScrollyTitleLine extends Entity {
        private var xVelocity:Number;

        private var texts:Vector.<Text> = new <Text>[];
        private var textWidth:Number;

        public function ScrollyTitleLine(size:uint, xVelocity:Number) {
            this.xVelocity = xVelocity;

            var text:Text = makeText(size);

            textWidth = text.textWidth * 0.98;
            var xFilled:Number = textWidth;

            texts[0] = text;

            while (xFilled < Main.WIDTH + textWidth) {
                text = makeText(size);
                text.x = xFilled;
                xFilled += textWidth;

                texts[texts.length] = text;
            }

            var graphiclist:Graphiclist = new Graphiclist();
            for each (var graphic:Graphic in texts) {
                graphiclist.add(graphic);
            }

            this.graphic = graphiclist;
        }

        override public function update():void {
            super.update();

            graphic.x = Range.wrap(graphic.x + xVelocity, -textWidth, 0);
        }

        private static function makeText(size:uint):Text {
            var text:Text = new Text("CANDY");
            text.font = EmbeddedFonts.DOSIS_EXTRA_BOLD;
            text.size = size;
            text.color = 0xffffff;

            return text;
        }
    }
}
