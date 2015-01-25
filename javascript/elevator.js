{
    init: function(elevators, floors) {
        var inPath = function(elevator, floor) {
            return (elevator.currentFloor() > floor
                    && elevator.goingDownIndicator()
                    || elevator.currentFloor() < floor
                    && elevator.goingUpIndicator())
        };
        var isFull = function(elevator) {
            return elevator.loadFactor() > .6;
        };
        var elevator = function(floor, direction) {
            for (var i in elevators) {
                var el = elevators[i];
                var dir = el.goingUpIndicator() ? 'up' : 'down';
                if (!isFull(el)
                    && inPath(el, floor)
                    && (dir == direction || el.destinationQueue.length === 0)) {
                    return i;
                }
            }
            return Math.floor(Math.random() * elevators.length);
        };

        for (var i in floors) {
            floors[i].on("up_button_pressed", function() {
                elevators[elevator(this.floorNum(), 'up')].goToFloor(this.floorNum());
            });
            floors[i].on("down_button_pressed", function(thing) {
                elevators[elevator(this.floorNum(), 'down')].goToFloor(this.floorNum());
            });
        }
        for (var i in elevators) {
            elevators[i].on("floor_button_pressed", function(floorNum) {
                this.goToFloor(floorNum);
            });
        }
        // for (var i in elevators) {
        //     elevators[i].on("idle", function() {
        //         // this.goToFloor(Math.floor(Math.random() * floors.length));
        //         this.goToFloor(0);
        //     });
        // }
    },
    update: function(dt, elevators, floors) {
        // We normally don't need to do anything here
    }
}
